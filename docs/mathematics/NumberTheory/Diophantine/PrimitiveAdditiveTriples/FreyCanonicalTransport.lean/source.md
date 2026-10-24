# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCanonicalTransport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f13d91be2af9c9251c524b813d923d60bd3aa22` · SHA-256 `640fee519c8407a4c5f8e1712863ce1dcc432d781ecaa3cd176252b36fe7e0ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib ideal quotients and AdicCompletion (Apache-2.0).
Formalization assistance: OpenAI.

Coefficient transport on the actual affine algebra, its ideal-power quotients,
and its canonical completion. Construction precedes comparison with the earlier
jet-limit map. No tensor/completion interchange, inter-anchor map, topology,
metric, conductor, or arithmetic height bound is asserted. Source proof scripts.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCanonicalCompletion
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCompletionBaseChange

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCanonicalTransport

open FreyJetQuotient FreyJetBaseChange FreyAdicQuotients FreyCanonicalCompletion

variable {R S U : Type*} [CommRing R] [CommRing S] [CommRing U]

/-- The cubic relation is transported before any completion or smoothness argument. -/
theorem cubicIdeal_map_le (f : R →+* S) (a b : R) :
    (cubicIdeal a b).map (planeMap f) ≤ cubicIdeal (f a) (f b) := by
  apply Ideal.map_le_iff_le_comap.mpr
  apply Ideal.span_le.mpr
  intro p hp
  have hp' : p = equation a b := Set.mem_singleton_iff.mp hp
  subst p
  change planeMap f (equation a b) ∈ cubicIdeal (f a) (f b)
  rw [planeMap_equation]
  exact Ideal.subset_span (by simp)

/-- Actual coefficient map on the affine coordinate algebra, not a conjugated map. -/
def coordinateBaseChange (f : R →+* S) (a b : R) :
    Coordinate a b →+* Coordinate (f a) (f b) :=
  Ideal.Quotient.lift _ ((coordinateMap (f a) (f b)).comp (planeMap f))
    (fun p hp => Ideal.Quotient.eq_zero_iff_mem.mpr
      (cubicIdeal_map_le f a b (Ideal.mem_map_of_mem (planeMap f) hp)))

@[simp] theorem coordinateBaseChange_mk (f : R →+* S) (a b : R) (p : Plane R) :
    coordinateBaseChange f a b (coordinateMap a b p) =
      coordinateMap (f a) (f b) (planeMap f p) := rfl

/-- The presentation square commutes on every polynomial representative. -/
theorem coordinateBaseChange_presentation (f : R →+* S) (a b : R) :
    (coordinateBaseChange f a b).comp (coordinateMap a b) =
      (coordinateMap (f a) (f b)).comp (planeMap f) := by
  apply RingHom.ext
  intro p
  rfl

@[simp] theorem coordinateBaseChange_scalar (f : R →+* S) (a b c : R) :
    coordinateBaseChange f a b (algebraMap R (Coordinate a b) c) =
      algebraMap S (Coordinate (f a) (f b)) (f c) := by
  change coordinateBaseChange f a b (coordinateMap a b (MvPolynomial.C c)) =
    coordinateMap (f a) (f b) (MvPolynomial.C (f c))
  rw [coordinateBaseChange_mk, planeMap_C]

/-- The actual image section ideal goes to the SAME mapped section ideal. -/
theorem curveSectionIdeal_map_le (f : R →+* S) (a b r : R) :
    (curveSectionIdeal a b r).map (coordinateBaseChange f a b) ≤
      curveSectionIdeal (f a) (f b) (f r) := by
  change ((sectionIdeal r).map (coordinateMap a b)).map (coordinateBaseChange f a b) ≤
    (sectionIdeal (f r)).map (coordinateMap (f a) (f b))
  rw [Ideal.map_map, coordinateBaseChange_presentation, ← Ideal.map_map]
  exact Ideal.map_mono (sectionIdeal_map_le f r)

/-- Powers retain their full exponents; no support-only replacement is made. -/
theorem curveSectionPower_map_le (f : R →+* S) (a b r : R) (n : ℕ) :
    (curveSectionIdeal a b r ^ n).map (coordinateBaseChange f a b) ≤
      curveSectionIdeal (f a) (f b) (f r) ^ n := by
  rw [Ideal.map_pow]
  exact Ideal.pow_right_mono (curveSectionIdeal_map_le f a b r) n

/-- Map between the canonical ideal-power quotients, including exponent zero. -/
def powerMap (f : R →+* S) (a b r : R) (n : ℕ) :
    PowerQuotient a b r n →+* PowerQuotient (f a) (f b) (f r) n :=
  Ideal.Quotient.lift _
    ((Ideal.Quotient.mk (curveSectionIdeal (f a) (f b) (f r) ^ n)).comp
      (coordinateBaseChange f a b))
    (fun c hc => Ideal.Quotient.eq_zero_iff_mem.mpr
      (curveSectionPower_map_le f a b r n
        (Ideal.mem_map_of_mem (coordinateBaseChange f a b) hc)))

@[simp] theorem powerMap_mk (f : R →+* S) (a b r : R) (n : ℕ) (c : Coordinate a b) :
    powerMap f a b r n (Ideal.Quotient.mk (curveSectionIdeal a b r ^ n) c) =
      Ideal.Quotient.mk (curveSectionIdeal (f a) (f b) (f r) ^ n)
        (coordinateBaseChange f a b c) := rfl

/-- The map commutes with independently defined ideal-power transitions. -/
theorem powerMap_transition (f : R →+* S) (a b r : R)
    (m n : ℕ) (hmn : m ≤ n) (u : PowerQuotient a b r n) :
    transition (f a) (f b) (f r) m n hmn (powerMap f a b r n u) =
      powerMap f a b r m (transition a b r m n hmn u) := by
  obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective u
  rfl

/-- Compatibility with the pre-existing double-quotient comparison is proved on
representatives. Neither powerMap nor jetMap is defined using this comparison. -/
theorem finiteEquiv_natural (f : R →+* S) (a b r : R) (N : ℕ)
    (u : PowerQuotient a b r (N + 1)) :
    finiteEquiv (f a) (f b) (f r) N (powerMap f a b r (N + 1) u) =
      jetMap f a b r N (finiteEquiv a b r N u) := by
  obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective u
  obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective c
  rw [powerMap_mk, coordinateBaseChange_mk, finiteEquiv_mk, finiteEquiv_mk] <;> rfl

/-- A compatible family out of the canonical source completion at ALL exponents. -/
def stageMap (f : R →+* S) (a b r : R) (n : ℕ) :
    Canonical a b r →+* PowerQuotient (f a) (f b) (f r) n :=
  (powerMap f a b r n).comp (canonicalProjection a b r n).toRingHom

/-- The library lift receives compatibility at every pair of exponents. -/
theorem stageMap_compatible (f : R →+* S) (a b r : R) {m n : ℕ} (hmn : m ≤ n) :
    (Ideal.Quotient.factorPow (curveSectionIdeal (f a) (f b) (f r)) hmn).comp
      (stageMap f a b r n) = stageMap f a b r m := by
  apply RingHom.ext
  intro u
  change transition (f a) (f b) (f r) m n hmn
      (powerMap f a b r n (canonicalProjection a b r n u)) =
    powerMap f a b r m (canonicalProjection a b r m u)
  rw [powerMap_transition, canonicalProjection_transition]

/-- Canonical transport is a LIBRARY universal lift from the presented finite
maps. Its construction uses neither toLimit nor the formal-series equivalence. -/
def canonicalMap (f : R →+* S) (a b r : R) :
    Canonical a b r →+* Canonical (f a) (f b) (f r) :=
  AdicCompletion.liftRingHom (curveSectionIdeal (f a) (f b) (f r))
    (stageMap f a b r) (by intro m n hmn; exact stageMap_compatible f a b r hmn)

/-- Exact finite projections characterize the canonical lift. -/
@[simp] theorem canonicalMap_projection (f : R →+* S) (a b r : R) (n : ℕ)
    (u : Canonical a b r) :
    canonicalProjection (f a) (f b) (f r) n (canonicalMap f a b r u) =
      powerMap f a b r n (canonicalProjection a b r n u) :=
  AdicCompletion.evalₐ_liftRingHom (curveSectionIdeal (f a) (f b) (f r))
    (stageMap f a b r) (by intro m n hmn; exact stageMap_compatible f a b r hmn) n u

/-- Reconciliation with the old limit transport, without smoothness hypotheses. -/
theorem toLimit_natural (f : R →+* S) (a b r : R) (u : Canonical a b r) :
    toLimit (f a) (f b) (f r) (canonicalMap f a b r u) =
      FreyCompletionBaseChange.mapLimit f a b r (toLimit a b r u) := by
  apply FreyJetCompletion.limit_ext (f a) (f b) (f r)
  intro N
  rw [toLimit_projection, FreyCompletionBaseChange.mapLimit_projection, toLimit_projection,
    canonicalMap_projection]
  exact finiteEquiv_natural f a b r N (canonicalProjection a b r (N + 1) u)

/-- The inverse comparison has its own commuting square. -/
theorem fromLimit_natural (f : R →+* S) (a b r : R) (u : FreyJetCompletion.Limit a b r) :
    canonicalMap f a b r (fromLimit a b r u) =
      fromLimit (f a) (f b) (f r) (FreyCompletionBaseChange.mapLimit f a b r u) := by
  apply (adicLimitEquiv (f a) (f b) (f r)).injective
  change toLimit (f a) (f b) (f r) (canonicalMap f a b r (fromLimit a b r u)) =
    toLimit (f a) (f b) (f r)
      (fromLimit (f a) (f b) (f r) (FreyCompletionBaseChange.mapLimit f a b r u))
  rw [toLimit_natural, toLimit_fromLimit, toLimit_fromLimit]

/-- Identity is a law of the constructed map, not its definition. -/
theorem canonicalMap_id (a b r : R) :
    canonicalMap (RingHom.id R) a b r = RingHom.id (Canonical a b r) := by
  apply RingHom.ext
  intro u
  apply (adicLimitEquiv a b r).injective
  change toLimit a b r (canonicalMap (RingHom.id R) a b r u) = toLimit a b r u
  rw [toLimit_natural, FreyCompletionBaseChange.mapLimit_id] <;> rfl

/-- Composition retains coefficient maps and the marked source parameters. -/
theorem canonicalMap_comp (f : R →+* S) (g : S →+* U) (a b r : R) :
    (canonicalMap g (f a) (f b) (f r)).comp (canonicalMap f a b r) =
      canonicalMap (g.comp f) a b r := by
  apply RingHom.ext
  intro u
  apply (adicLimitEquiv (g (f a)) (g (f b)) (g (f r))).injective
  change toLimit (g (f a)) (g (f b)) (g (f r))
      (canonicalMap g (f a) (f b) (f r) (canonicalMap f a b r u)) =
    toLimit (g (f a)) (g (f b)) (g (f r)) (canonicalMap (g.comp f) a b r u)
  rw [toLimit_natural, toLimit_natural, toLimit_natural]
  exact DFunLike.congr_fun (FreyCompletionBaseChange.mapLimit_comp f g a b r) (toLimit a b r u)

/-- The canonical map from the original affine ring commutes with transport. -/
theorem canonicalMap_of (f : R →+* S) (a b r : R) (c : Coordinate a b) :
    canonicalMap f a b r (AdicCompletion.of (curveSectionIdeal a b r) (Coordinate a b) c) =
      AdicCompletion.of (curveSectionIdeal (f a) (f b) (f r)) (Coordinate (f a) (f b))
        (coordinateBaseChange f a b c) := by
  apply AdicCompletion.ext_evalₐ
  intro n
  change canonicalProjection (f a) (f b) (f r) n
      (canonicalMap f a b r (AdicCompletion.of _ _ c)) =
    AdicCompletion.evalₐ (curveSectionIdeal (f a) (f b) (f r)) n
      (AdicCompletion.of _ _ (coordinateBaseChange f a b c))
  rw [canonicalMap_projection]
  change powerMap f a b r n (AdicCompletion.evalₐ (curveSectionIdeal a b r) n
      (AdicCompletion.of _ _ c)) = _
  rw [AdicCompletion.evalₐ_of, AdicCompletion.evalₐ_of, powerMap_mk]

/-- Across different coefficient rings, scalars follow f rather than remaining fixed. -/
theorem canonicalMap_scalar (f : R →+* S) (a b r c : R) :
    canonicalMap f a b r (algebraMap R (Canonical a b r) c) =
      algebraMap S (Canonical (f a) (f b) (f r)) (f c) := by
  change canonicalMap f a b r
      (AdicCompletion.of _ _ (algebraMap R (Coordinate a b) c)) =
    AdicCompletion.of _ _ (algebraMap S (Coordinate (f a) (f b)) (f c))
  rw [canonicalMap_of, coordinateBaseChange_scalar]

/-- Only the formal-series comparison needs the separately mapped smooth-root data. -/
theorem adicSeries_natural (f : R →+* S) (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1)
    (u : Canonical a b r) :
    adicSeriesEquiv (f a) (f b) (f r) (f j)
        (mapped_root f a b r hr) (mapped_inverse f a b r j hj) (canonicalMap f a b r u) =
      PowerSeries.map f (adicSeriesEquiv a b r j hr hj u) := by
  change FreyJetCompletion.completionEquiv (f a) (f b) (f r) (f j)
      (mapped_root f a b r hr) (mapped_inverse f a b r j hj)
      (toLimit (f a) (f b) (f r) (canonicalMap f a b r u)) =
    PowerSeries.map f (FreyJetCompletion.completionEquiv a b r j hr hj (toLimit a b r u))
  rw [toLimit_natural]
  exact FreyCompletionBaseChange.completion_natural f a b r j hr hj (toLimit a b r u)

/-- Projection-kernel membership is preserved, not necessarily exact vanishing order. -/
theorem canonicalProjection_zero_map (f : R →+* S) (a b r : R) (n : ℕ)
    (u : Canonical a b r) (hu : canonicalProjection a b r n u = 0) :
    canonicalProjection (f a) (f b) (f r) n (canonicalMap f a b r u) = 0 := by
  rw [canonicalMap_projection, hu, map_zero]

/-- Faithfulness requires injective coefficients on the selected smooth branch. -/
theorem canonicalMap_injective (f : R →+* S) (hf : Function.Injective f) (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) :
    Function.Injective (canonicalMap f a b r) := by
  intro u v huv
  apply (adicLimitEquiv a b r).injective
  change toLimit a b r u = toLimit a b r v
  apply FreyCompletionBaseChange.mapLimit_injective f hf a b r j hr hj
  rw [← toLimit_natural f a b r u, ← toLimit_natural f a b r v, huv]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCanonicalTransport

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- An actual map out of the existing integral coefficient localization transports
the canonical completion at the SAME anchor; no map Q -> F_p is introduced. -/
noncomputable def PrimitiveAdditiveTriple.freyCanonicalSectionMap
    (t : PrimitiveAdditiveTriple) (i : Fin 3) {A : Type*} [CommRing A]
    (f : FreyJetChart t i →+* A) :
    FreyCanonicalSectionCompletion t i →+*
      FreyCanonicalCompletion.Canonical (f (t.a : FreyJetChart t i)) (f (t.b : FreyJetChart t i))
        (f (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i))) :=
  FreyCanonicalTransport.canonicalMap f _ _ _

/-- The same Frey formal series results from canonical coefficient transport. -/
theorem PrimitiveAdditiveTriple.freyCanonicalSection_baseChange
    (t : PrimitiveAdditiveTriple) (i : Fin 3) {A : Type*} [CommRing A]
    (f : FreyJetChart t i →+* A) (u : FreyCanonicalSectionCompletion t i) :
    FreyCanonicalCompletion.adicSeriesEquiv (f (t.a : FreyJetChart t i)) (f (t.b : FreyJetChart t i))
        (f (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i))) (f (t.freyChartInverse i))
        (FreyJetBaseChange.mapped_root f _ _ _ (t.freySectionJet_root i))
        (FreyJetBaseChange.mapped_inverse f _ _ _ _ (t.freySectionJet_inverse i))
        (t.freyCanonicalSectionMap i f u) =
      PowerSeries.map f (t.freyCanonicalSectionCompletionEquiv i u) :=
  FreyCanonicalTransport.adicSeries_natural f _ _ _ _
    (t.freySectionJet_root i) (t.freySectionJet_inverse i) u

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
