# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PositiveAtlas.Variant8646f5774f0dcdf8273b8570c9f18d60a147ccb34310b79b8e9f6dfbb959af9e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54bb0b991d262215493e2d96f5b8a8b9401e88cb` · SHA-256 `2c2ee2db10d04e975cb4ba85727eb10475cba38a6679bd062343a9affbd9af81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EqOfFormEq.Variantda9cf4c5ecfa6a5be3b96c9782d1dcd0f6819ad1adf9c3c7d70a2cf6fa92984c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da9cf4c5ecfa6a5be3b96c9782d1dcd0f6819ad1adf9c3c7d70a2cf6fa92984c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.EqOfFormEq.Variantda9cf4c5ecfa6a5be3b96c9782d1dcd0f6819ad1adf9c3c7d70a2cf6fa92984c","mathematical_subject":"Computation.DataStructures","original_sha256":"da9cf4c5ecfa6a5be3b96c9782d1dcd0f6819ad1adf9c3c7d70a2cf6fa92984c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/new-cache-source-audit/source/da9cf4c5ecfa6a5be3b96c9782d1dcd0f6819ad1adf9c3c7d70a2cf6fa92984c.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.PhaseIIResidualQuotient

/-!
# Positive and signed chart descent

Pullback is functorial. Realization diagrams imply positive-form and signed
pairing transport; finite transport paths preserve any independently fixed
readout they actually preserve on each edge. Semidefinite geometry has an
explicit radical quotient. Additional observables descend exactly when they
are constant on this quotient, rather than following from positivity alone.

Direction and evaluation: grwtsk contributors. Formalization: OpenAI Codex.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EqOfFormEq.Variantda9cf4c5ecfa6a5be3b96c9782d1dcd0f6819ad1adf9c3c7d70a2cf6fa92984c

namespace FormalResearch.PositiveAtlas

universe u v w

namespace PositiveForm

variable {V : Type u} [AddCommGroup V] [Module ℝ V]
variable {W : Type v} [AddCommGroup W] [Module ℝ W]
variable {U : Type w} [AddCommGroup U] [Module ℝ U]

theorem eq_of_form_eq {G H : PositiveForm V} (h : G.form = H.form) : G = H := by
  cases G
  cases H
  cases h
  rfl

theorem pullback_id (G : PositiveForm V) : G.pullback (LinearMap.id : V →ₗ[ℝ] V) = G :=
  eq_of_form_eq rfl

theorem pullback_comp (G : PositiveForm V) (f : W →ₗ[ℝ] V) (g : U →ₗ[ℝ] W) :
    (G.pullback f).pullback g = G.pullback (f.comp g) := eq_of_form_eq rfl

/-- The actual realization diagram, with its declared variance, gives descent. -/
theorem pullback_chart (G : PositiveForm V) (σi : W →ₗ[ℝ] V) (σj : U →ₗ[ℝ] V)
    (τ : U →ₗ[ℝ] W) (hσ : σj = σi.comp τ) :
    G.pullback σj = (G.pullback σi).pullback τ := by
  rw [hσ, pullback_comp]

theorem form_zero_left (G : PositiveForm V) (y : V) : G.form 0 y = 0 := by
  have h := G.smul_left 0 (0 : V) y
  simpa using h

theorem form_sub_left (G : PositiveForm V) (x y z : V) :
    G.form (x - y) z = G.form x z - G.form y z := by
  rw [sub_eq_add_neg, G.add_left]
  have hn := G.smul_left (-1) y z
  simp only [neg_smul, one_smul, neg_mul, one_mul] at hn
  rw [hn]
  ring

/-- Equality of all form pairings is the actual radical equivalence. -/
def radicalSetoid (G : PositiveForm V) : Setoid V where
  r x y := ∀ z, G.form x z = G.form y z
  iseqv := ⟨fun _ _ => rfl, fun h z => (h z).symm, fun h₁ h₂ z => (h₁ z).trans (h₂ z)⟩

theorem radicalSetoid_iff_null (G : PositiveForm V) (x y : V) :
    (G.radicalSetoid).r x y ↔ G.IsNull (x - y) := by
  constructor
  · intro h
    unfold IsNull
    rw [G.form_sub_left, h]
    ring
  · intro h z
    have hz := G.null_orthogonal h z
    rw [G.form_sub_left] at hz
    linarith

/-- The radical quotient is a Type carrying actual states modulo null differences. -/
abbrev RadicalQuotient (G : PositiveForm V) := Quotient G.radicalSetoid

/-- Positive pairings descend through both arguments of the radical quotient. -/
def quotientPairing (G : PositiveForm V) (x y : G.RadicalQuotient) : ℝ :=
  Quotient.liftOn₂ x y G.form (by
    intro a b c d hac hbd
    exact (hac b).trans ((G.symmetric c b).trans ((hbd c).trans (G.symmetric d c))))

@[simp] theorem quotientPairing_mk (G : PositiveForm V) (x y : V) :
    G.quotientPairing (Quotient.mk _ x) (Quotient.mk _ y) = G.form x y := rfl

/-- The quotient quadratic value is positive definite as a function on quotient states. -/
theorem quotientPairing_eq_zero_iff (G : PositiveForm V) (x : G.RadicalQuotient) :
    G.quotientPairing x x = 0 ↔ x = Quotient.mk _ (0 : V) := by
  induction x using Quotient.inductionOn with
  | _ x =>
    rw [quotientPairing_mk, Quotient.eq]
    have h := G.radicalSetoid_iff_null x 0
    simpa only [IsNull, sub_zero] using h.symm

/-- A signed observable has its own exact descent condition. -/
def quotientObservable (G : PositiveForm V) (R : V → ℝ)
    (hR : ∀ x y, (G.radicalSetoid).r x y → R x = R y) : G.RadicalQuotient → ℝ :=
  Quotient.lift R (fun x y h => hR x y h)

theorem observable_descends_iff (G : PositiveForm V) (R : V → ℝ) :
    (∃ r : G.RadicalQuotient → ℝ, ∀ x, r (Quotient.mk _ x) = R x) ↔
      ∀ x y, G.IsNull (x - y) → R x = R y := by
  constructor
  · rintro ⟨r, hr⟩ x y h
    have he : (Quotient.mk G.radicalSetoid x) = Quotient.mk _ y :=
      Quotient.sound ((G.radicalSetoid_iff_null x y).mpr h)
    rw [← hr x, ← hr y, he]
  · intro h
    exact ⟨G.quotientObservable R (fun x y hr => h x y
      ((G.radicalSetoid_iff_null x y).mp hr)), fun _ => rfl⟩

end PositiveForm

namespace ChartObservableDescent

variable {V : Type u} {W : Type v} {U : Type w}

/-- Signed pairings are specified independently of the positive form. -/
def signedPullback (B : V → V → ℝ) (f : W → V) : W → W → ℝ :=
  fun x y => B (f x) (f y)

theorem signedPullback_id (B : V → V → ℝ) : signedPullback B id = B := rfl

theorem signedPullback_comp (B : V → V → ℝ) (f : W → V) (g : U → W) :
    signedPullback (signedPullback B f) g = signedPullback B (f ∘ g) := rfl

theorem signed_chart (B : V → V → ℝ) (σi : W → V) (σj : U → V) (τ : U → W)
    (hσ : σj = σi ∘ τ) : signedPullback B σj = signedPullback (signedPullback B σi) τ := by
  rw [hσ]
  rfl

/-- Exact decoder agreement gives agreement of every independent decoded readout. -/
theorem decoded_readout {Y : Type*} (Di : W → V) (Dj : U → V) (τ : W → U)
    (hD : ∀ x, Dj (τ x) = Di x) (R : V → Y) (x : W) : R (Dj (τ x)) = R (Di x) := by
  rw [hD]

/-- Actual paths and their transported states live in Type. -/
def transportPath (fs : List (V → V)) (x : V) : V := fs.foldl (fun x f => f x) x

theorem readout_transportPath {Y : Type*} (R : V → Y) (fs : List (V → V))
    (hf : ∀ f ∈ fs, ∀ x, R (f x) = R x) (x : V) : R (transportPath fs x) = R x := by
  induction fs generalizing x with
  | nil => rfl
  | cons f fs ih =>
    change R (transportPath fs (f x)) = R x
    rw [ih (fun g hg => hf g (List.mem_cons_of_mem f hg)) (f x)]
    exact hf f (List.mem_cons_self) x

/-- Signed corrections compose in the actual order, including transported boundary debt. -/
theorem corrected_transition_comp (R : V → ℝ) (f g : V → V) (εf εg : ℝ)
    (cf cg : V → ℝ) (hf : ∀ x, R (f x) = εf * R x + cf x)
    (hg : ∀ x, R (g x) = εg * R x + cg x) (x : V) :
    R (g (f x)) = (εg * εf) * R x + εg * cf x + cg (f x) := by
  rw [hg, hf]
  ring

variable {P : Type u} {A : Type v} [AddCommGroup P] [Module ℝ P]
variable [AddCommGroup A] [Module ℝ A]

/-- Applied residual pairings are signed numbers, preserved by actual solver independence. -/
theorem solver_residual_signed_agreement {G : PositiveForm (P × A)}
    (S T : BlockSchurSolver G) (x y : A) :
    (S.phaseIIResidualization.residualForm G).form x y =
      (T.phaseIIResidualization.residualForm G).form x y := by
  rw [S.phaseIIResidualization_form_eq_schur, T.phaseIIResidualization_form_eq_schur]
  exact S.schur_pairing_independent T x y

/-- Every residual pairing against a fixed vector descends through the actual radical quotient. -/
theorem solver_pairing_descends {G : PositiveForm (P × A)} (S : BlockSchurSolver G) (y : A) :
    ∃ r : S.schurForm.RadicalQuotient → ℝ,
      ∀ x, r (Quotient.mk _ x) = S.schurForm.form x y := by
  exact ⟨S.schurForm.quotientObservable (fun x => S.schurForm.form x y)
    (fun _ _ h => h y), fun _ => rfl⟩

end ChartObservableDescent
end FormalResearch.PositiveAtlas
```
