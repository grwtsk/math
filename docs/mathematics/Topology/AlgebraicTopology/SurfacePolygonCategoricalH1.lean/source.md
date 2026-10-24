# Complete source: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCategoricalH1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `725364f5acc11389b94be1957b1ce53e810014bf` · SHA-256 `23fcf426b6f8ddadd03d6e13de1c850430828b6fa5827e54e523bf3de645af31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
ChainComplex.mk and ShortComplex.moduleCatHomologyIso: Mathlib authors,
including Johan Commelin, Kim Morrison, Joël Riou and collaborators.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#823. Parent draft PR #812 exact head
0c3b514e595287c1160653557b2d563c8fc4c570.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCandidateH1
import Mathlib.Algebra.Homology.ShortComplex.ModuleCat
import Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex
import Mathlib.Algebra.Category.ModuleCat.Abelian

/-!
# The sourced finite polygon as an actual categorical chain complex

The finite chain model of issue #758 consists of genuine Z-linear
differentials, not merely cycle and boundary sets:
  C₂ := Z, C₁ := GenusLetter k → Z, C₀ := Z,
  d₂ := differentialTwo k, d₁ := differentialOne k,
  with d₁ ∘ d₂ = 0.

We construct the actual ChainComplex (ModuleCat Z) Nat with these
identical objects and morphisms in degrees 0, 1 and 2, and zero
objects/differentials in all higher degrees.

We use the pinned Mathlib categorical homology API on the actual
degree-one short complex, which computes homology as the concrete
module quotient:
   ker(g) / range(S.moduleCatToCycles).

The source-specific proof obligation identifies THAT exact range
inside THAT exact kernel with the pullback of range(d₂) into ker(d₁)
used by issue #803. Hence categorical degree-one homology is
isomorphic to the very same true module quotient CandidateFirstHomology,
not a disconnected homology group with coincidentally equal rank.

The derived equivalence with the identical source one-chain module is
conditional on the already proved one-vertex d₁=0 and signed-polygon
d₂=0, and it is a statement about an ABSTRACT finite chain complex.

Neither the categorical complex nor its homology is yet the actual
cellular/singular homology of a constructed genus-g surface.
No polygon attaching map, van Kampen, Hurewicz, hyperbolic metric,
Selberg/Weil-Petersson, GUE, Chowla, zeta divisor or RH is proved.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCategoricalH1

open CategoryTheory CategoryTheory.Limits
open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPresentationSeam
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCellularBoundary
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAbelianizationComparison
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonFreeAbelianCoordinates
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCandidateH1

/-- A genuine short complex in ModuleCat Z, using the *actual original*
signed-incidence differential d₂ and the original one-vertex d₁.
The exact chain condition is consumed from #758. -/
def sourcedShortComplex (k : ℕ) :
    ShortComplex (ModuleCat ℤ) :=
  ShortComplex.moduleCatMk
    (differentialTwo k) (differentialOne k)
    (differentials_comp_eq_zero k)

/-- Its left and right arrows are literally the original integer
linear differentials, not just maps with the same abstract kernels. -/
@[simp] theorem sourcedShortComplex_f_hom (k : ℕ) :
    (sourcedShortComplex k).f.hom = differentialTwo k := rfl

@[simp] theorem sourcedShortComplex_g_hom (k : ℕ) :
    (sourcedShortComplex k).g.hom = differentialOne k := rfl

/-- Genuine finite-length homological chain complex in ModuleCat Z.
The constructor specifies degrees 0, 1, 2 explicitly, and uses the
zero object in every higher degree.

The source chain maps are EXACTLY those of the short complex above,
including their proof-bearing d₁∘d₂=0 condition. -/
def sourcedChainComplex (k : ℕ) :
    ChainComplex (ModuleCat ℤ) ℕ :=
  ChainComplex.mk
    (ModuleCat.of ℤ ℤ)
    (ModuleCat.of ℤ (OneCellChains k))
    (ModuleCat.of ℤ ℤ)
    (ModuleCat.ofHom (differentialOne k))
    (ModuleCat.ofHom (differentialTwo k))
    (sourcedShortComplex k).zero
    (fun _ => ⟨0, 0, by simp⟩)

/-- The degree-zero chain group really is the selected one-vertex Z. -/
@[simp] theorem sourcedChainComplex_X_zero (k : ℕ) :
    (sourcedChainComplex k).X 0 = ModuleCat.of ℤ ℤ := rfl

/-- The degree-one chain group is exactly the source-identified
module GenusLetter k → Z, with no quotient or relabeling. -/
@[simp] theorem sourcedChainComplex_X_one (k : ℕ) :
    (sourcedChainComplex k).X 1 =
      ModuleCat.of ℤ (OneCellChains k) := rfl

/-- The degree-two chain group really is the selected single-face Z. -/
@[simp] theorem sourcedChainComplex_X_two (k : ℕ) :
    (sourcedChainComplex k).X 2 = ModuleCat.of ℤ ℤ := rfl

/-- The degree-one-to-zero categorical differential is precisely
ModuleCat.ofHom of the parent's actual d₁. -/
theorem sourcedChainComplex_d_one_zero (k : ℕ) :
    (sourcedChainComplex k).d 1 0 =
      ModuleCat.ofHom (differentialOne k) := by
  simp [sourcedChainComplex]

/-- The degree-two-to-one categorical differential is precisely
ModuleCat.ofHom of the parent's actual signed-incidence d₂. -/
theorem sourcedChainComplex_d_two_one (k : ℕ) :
    (sourcedChainComplex k).d 2 1 =
      ModuleCat.ofHom (differentialTwo k) := by
  simp [sourcedChainComplex]

/-- The degree-one associated ShortComplex is isomorphic to the
independently source-constructed ShortComplex.moduleCatMk d₂ d₁.
No substitute object or independent differential is introduced. -/
def degreeOneShortComplexIso (k : ℕ) :
    (sourcedChainComplex k).sc 1 ≅ sourcedShortComplex k := by
  let K := sourcedChainComplex k
  have hprev : (ComplexShape.down ℕ).prev 1 = 2 := by simp
  have hnext : (ComplexShape.down ℕ).next 1 = 0 := by simp
  refine K.isoSc' 2 1 0 hprev hnext ≪≫ ?_
  refine ShortComplex.isoMk (Iso.refl _) (Iso.refl _) (Iso.refl _) ?_ ?_
  · simp [K, sourcedChainComplex, sourcedShortComplex]
  · simp [K, sourcedChainComplex, sourcedShortComplex]

/-- The exact range of Mathlib's categorical "map to cycles" is the
existing boundary submodule INSIDE the existing cycle submodule.
This is the key missing source-identity theorem and uses the actual
subtype inclusion, not a quotient rank count. -/
theorem sourcedShortToCycles_range_eq_boundariesInCycles (k : ℕ) :
    LinearMap.range (sourcedShortComplex k).moduleCatToCycles =
      OneBoundariesInCycles k := by
  ext z
  constructor
  · rintro ⟨n, hn⟩
    change (z : OneCellChains k) ∈ (differentialTwo k).range
    exact ⟨n, congrArg Subtype.val hn⟩
  · intro hz
    change (z : OneCellChains k) ∈ (differentialTwo k).range at hz
    rcases hz with ⟨n, hn⟩
    exact ⟨n, Subtype.ext hn⟩

/-- Pinned Mathlib identifies categorical homology with the quotient
of its genuine degree-one cycle kernel by range(S.moduleCatToCycles).
The source range equality above identifies this with the ACTUAL
parent CandidateFirstHomology quotient rather than a new quotient. -/
def shortConcreteHomologyLinearEquiv (k : ℕ) :
    ((sourcedShortComplex k).moduleCatLeftHomologyData.H :
      Type) ≃ₗ[ℤ] CandidateFirstHomology k := by
  change (OneCycleSubmodule k ⧸
      LinearMap.range (sourcedShortComplex k).moduleCatToCycles)
      ≃ₗ[ℤ] CandidateFirstHomology k
  exact (LinearMap.range (sourcedShortComplex k).moduleCatToCycles).quotEquivOfEq
    (sourcedShortToCycles_range_eq_boundariesInCycles k)

/-- CATEGORICAL homology of the actual sourced short complex is
isomorphic to the explicit quotient of actual sourced cycles by
actual sourced boundaries from PR #812. -/
def shortCategoricalHomologyIso (k : ℕ) :
    (sourcedShortComplex k).homology ≅
      ModuleCat.of ℤ (CandidateFirstHomology k) :=
  (sourcedShortComplex k).moduleCatHomologyIso ≪≫
    (shortConcreteHomologyLinearEquiv k).toModuleIso

/-- The ACTUAL degree-one homology object of the full three-term
Mathlib ChainComplex agrees with the pre-existing, explicitly
calculated algebraic quotient. This is a categorical isomorphism
of actual ModuleCat objects, not a tautological type alias. -/
def degreeOneCategoricalHomologyIso (k : ℕ) :
    (sourcedChainComplex k).homology 1 ≅
      ModuleCat.of ℤ (CandidateFirstHomology k) :=
  ShortComplex.homologyMapIso (degreeOneShortComplexIso k) ≪≫
    shortCategoricalHomologyIso k

/-- Compose the categorical homology/quotient comparison with the
original actual Z-linear quotient-to-one-chains equivalence, retaining
the exact GenusLetter k source coordinates used by #758 and #795. -/
def degreeOneHomologyOneChainsIso (k : ℕ) :
    (sourcedChainComplex k).homology 1 ≅
      ModuleCat.of ℤ (OneCellChains k) :=
  degreeOneCategoricalHomologyIso k ≪≫
    (candidateH1EquivOneChains k).toModuleIso

/-- A true degree-one CATEGORICAL homology class of any original
signed-edge word: transport the pre-existing quotient class through
the canonical homology comparison's inverse. -/
def categoricalSignedWordClass (k : ℕ)
    (sides : List (SignedSide k)) :
    (sourcedChainComplex k).homology 1 :=
  (degreeOneCategoricalHomologyIso k).inv (signedWordH1Class k sides)

/-- Transporting a canonical categorical class back to the explicit
quotient recovers the source-identical earlier signedWordH1Class.
This is the commuting source interface, not a new numerical test. -/
theorem categoricalSignedWordClass_transport (k : ℕ)
    (sides : List (SignedSide k)) :
    (degreeOneCategoricalHomologyIso k).hom
      (categoricalSignedWordClass k sides) =
        signedWordH1Class k sides := by
  simp [categoricalSignedWordClass]

/-- The original COMPLETE genus-g polygon boundary has zero class
in actual categorical degree-one homology of this finite chain model. -/
theorem fullPolygonCategoricalClass_zero (k : ℕ) :
    categoricalSignedWordClass k (polygonBoundaryWord k) = 0 := by
  unfold categoricalSignedWordClass
  rw [polygonBoundaryH1Class_zero]
  simp

/-- HOSTILE: a corrupted polygon missing inverse b has NONZERO class
in the actual categorical degree-one homology, not just the earlier
explicit module quotient. -/
theorem missingInverseEdgeCategoricalClass_ne_zero (k : ℕ) :
    categoricalSignedWordClass k (missingInverseEdge k) ≠ 0 := by
  intro hz
  have hsource :=
    categoricalSignedWordClass_transport k (missingInverseEdge k)
  rw [hz] at hsource
  exact (missingInverseEdgeH1Class_ne_zero k) hsource.symm

/-- A complete first-handle commutator is nonidentity in the original
FreeGroup (by Heisenberg Z) but ZERO in the actual categorical H₁
of the finite source chain model, just as in its explicit quotient. -/
theorem firstHandleCategoricalClass_zero_but_FreeGroup_nontrivial (k : ℕ) :
    polygonBoundaryEval k
        (handleBlock k (baseLetter k 0) (baseLetter k 1)) ≠ 1 ∧
      categoricalSignedWordClass k
        (handleBlock k (baseLetter k 0) (baseLetter k 1)) = 0 := by
  refine ⟨(firstHandle_nontrivial_but_H1_zero k).1, ?_⟩
  unfold categoricalSignedWordClass
  rw [(firstHandle_nontrivial_but_H1_zero k).2]
  simp

/-- The genus-two algebraic model remains a nonempty four-generator
degree-one categorical complex: the source index was not collapsed. -/
theorem genusTwoCategoricalOneCellCount :
    Fintype.card (GenusLetter 0) = 4 :=
  genus_two_oneCellCount

/-- The genus-three algebraic model keeps all six generator IDs,
including the third handle added in the ordered relator. -/
theorem genusThreeCategoricalOneCellCount :
    Fintype.card (GenusLetter 1) = 6 :=
  genus_three_oneCellCount

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCategoricalH1
```
