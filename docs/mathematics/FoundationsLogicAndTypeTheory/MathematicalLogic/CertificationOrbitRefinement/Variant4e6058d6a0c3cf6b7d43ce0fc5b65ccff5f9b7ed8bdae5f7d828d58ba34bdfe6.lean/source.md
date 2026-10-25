# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CertificationOrbitRefinement.Variant4e6058d6a0c3cf6b7d43ce0fc5b65ccff5f9b7ed8bdae5f7d828d58ba34bdfe6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13d3c126ce4a346594eedff9d3448e69c3941dd2` · SHA-256 `3ae7c8dda3f3be4029212bedd205da31e69580a1bc744a6a41d3c0b46baa16f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.GlobalIndex.Variant7dfea490f47b8c75aefd46f92f548b894b6de0f033ecf89a1ba1d1c1257e64db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7dfea490f47b8c75aefd46f92f548b894b6de0f033ecf89a1ba1d1c1257e64db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.GlobalIndex.Variant7dfea490f47b8c75aefd46f92f548b894b6de0f033ecf89a1ba1d1c1257e64db","mathematical_subject":"Logic.Foundations","original_sha256":"7dfea490f47b8c75aefd46f92f548b894b6de0f033ecf89a1ba1d1c1257e64db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/atlas-ghh-descent-20261007/FormalResearch/PositiveAtlas/CertificationOrbitRefinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.CertificationRefinement
import FormalResearch.RiemannHypothesis.SourceOrbitCoordinates

/-!
# Certificate restriction in the actual four-channel source inventory

The observations are the labelled complex coefficients of the repository's
actual `OrbitIndex I`; the minimal carrier stores exactly this inventory. The
directed restriction is literal coefficient restriction. Its section is the
existing zero extension, whose synthesis preserves the actual L² state and
every signed reflected pairing. Coefficient certificates deliberately retain
labels and do not identify synthesis-dependent coordinates.

The angular-duality evolution is separately proved compatible with restriction
and with the actual ambient angular-duality operator. Fixed-source inventory
extension does not assert nesting across changing arithmetic source scales.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.GlobalIndex.Variant7dfea490f47b8c75aefd46f92f548b894b6de0f033ecf89a1ba1d1c1257e64db

noncomputable section

namespace FormalResearch.PositiveAtlas.CertificationOrbitRefinement

open FormalResearch.RiemannHypothesis
open SourceArithmeticOrbit SourceOrbitCoordinates SourceReflectionDuality
open scoped BigOperators InnerProductSpace

universe a

/-- Both literal channel tags and the unbounded arithmetic label are retained. -/
abbrev GlobalIndex := Bool × Bool × ℕ

def globalIndex {I : Finset ℕ} (i : OrbitIndex I) : GlobalIndex :=
  (i.1, i.2.1, i.2.2)

/-- At a fixed inventory, every labelled coefficient is independently observed. -/
def family (I : Finset ℕ) : CertificateFamily (GlobalIndex → ℂ) (OrbitIndex I) where
  value _ := ℂ
  observe i s := s (globalIndex i)

def representation (I : Finset ℕ) : SufficientRepresentation (family I) where
  carrier := OrbitIndex I → ℂ
  compress s i := s (globalIndex i)
  recover i c := c i
  recover_compress _ _ := rfl

theorem representation_minimal (I : Finset ℕ) :
    SufficientRepresentation.IsMinimal.{0, 0, 0, 0, a} (representation I) := by
  intro R
  refine ⟨fun x i => R.recover i x, ?_⟩
  funext s i
  exact (R.recover_compress i s).symm

/-- Unobserved labels are set to zero for internal certificate reconstruction. -/
def reconstruct (I : Finset ℕ) (c : OrbitIndex I → ℂ) : GlobalIndex → ℂ :=
  fun i => if h : i.2.2 ∈ I then c (i.1, i.2.1, ⟨i.2.2, h⟩) else 0

theorem reconstruct_section (I : Finset ℕ) (c : OrbitIndex I → ℂ) :
    (representation I).compress (reconstruct I c) = c := by
  funext i
  simp [representation, reconstruct, globalIndex]

def quine (I : Finset ℕ) : StructuralQuine.{0, 0, 0, 0, a} (family I) where
  quotient := representation I
  reconstruct := reconstruct I
  «section» := reconstruct_section I
  reconstruct_equivalent s i := by
    simp [family, representation, reconstruct, globalIndex]
  minimal := representation_minimal I

/-- A larger inventory admits every literal smaller-inventory observation. -/
def restriction {I K : Finset ℕ} (hIK : I ⊆ K) :
    CertificateRestriction (family K) (family I) where
  index := includeIndex hIK
  valueEquiv _ := Equiv.refl ℂ
  observe _ _ := rfl

/-- Instantiate the directed minimal-carrier map in the actual source labels. -/
def inventoryMap {I K : Finset ℕ} (hIK : I ⊆ K) :
    (OrbitIndex K → ℂ) → (OrbitIndex I → ℂ) :=
  (restriction hIK).map (representation K) (representation I) (representation_minimal I)

theorem inventoryMap_apply {I K : Finset ℕ} (hIK : I ⊆ K)
    (c : OrbitIndex K → ℂ) (i : OrbitIndex I) :
    inventoryMap hIK c i = c (includeIndex hIK i) := by
  have he := (restriction hIK).map_recover
    (representation K) (representation I) (representation_minimal I)
    (quine.{0} K).compress_surjective i c
  exact he

theorem inventoryMap_refl (I : Finset ℕ) (c : OrbitIndex I → ℂ) :
    inventoryMap (Finset.Subset.refl I) c = c := by
  funext i
  rw [inventoryMap_apply]
  rfl

theorem inventoryMap_trans {I K L : Finset ℕ} (hIK : I ⊆ K) (hKL : K ⊆ L)
    (c : OrbitIndex L → ℂ) :
    inventoryMap hIK (inventoryMap hKL c) = inventoryMap (hIK.trans hKL) c := by
  funext i
  simp only [inventoryMap_apply, includeIndex_trans]

/-- The actual zero-extension construction is a section, not an inverse on
the unrestricted larger carrier. -/
theorem inventoryMap_extendCoefficients {I K : Finset ℕ} (hIK : I ⊆ K)
    (c : OrbitIndex I → ℂ) :
    inventoryMap hIK (extendCoefficients hIK c) = c := by
  funext i
  rw [inventoryMap_apply, extendCoefficients_apply_includeIndex]

/-- A genuinely new inventory label is forgotten by coarse restriction. The
directed map is therefore not invertible on the larger carrier. -/
theorem inventoryMap_not_injective {I K : Finset ℕ} (hIK : I ⊆ K)
    (m : ℕ) (hmK : m ∈ K) (hmI : m ∉ I) :
    ¬ Function.Injective (inventoryMap hIK) := by
  classical
  let j : OrbitIndex K := (false, false, ⟨m, hmK⟩)
  have he : inventoryMap hIK (Pi.single j (1 : ℂ)) =
      inventoryMap hIK (fun _ => 0) := by
    funext i
    have hn : includeIndex hIK i ≠ j := by
      intro h
      have hm : (i.2.2 : ℕ) = m := by
        simpa [includeIndex, j] using congrArg (fun k : OrbitIndex K => (k.2.2 : ℕ)) h
      exact hmI (hm ▸ i.2.2.property)
    simp [inventoryMap_apply, hn]
  intro h
  have hv := congrFun (h he) j
  simp at hv

/-- Apply the existing native state reconstruction to this directed section. -/
theorem inventory_section_synthesis (q : ComplexL2) {I K : Finset ℕ}
    (hIK : I ⊆ K) (c : OrbitIndex I → ℂ) :
    synthesis q K (extendCoefficients hIK c) =
      synthesis q I (inventoryMap hIK (extendCoefficients hIK c)) := by
  rw [inventoryMap_extendCoefficients, synthesis_extendCoefficients]

/-- The downstream signed source readout retains every cross-channel term. -/
theorem inventory_section_reflected_pairing (q : ComplexL2) {I K : Finset ℕ}
    (hIK : I ⊆ K) (c d : OrbitIndex I → ℂ) :
    ⟪synthesis q K (extendCoefficients hIK c),
      reflection (synthesis q K (extendCoefficients hIK d))⟫_ℂ =
    ⟪synthesis q I (inventoryMap hIK (extendCoefficients hIK c)),
      reflection (synthesis q I (inventoryMap hIK (extendCoefficients hIK d)))⟫_ℂ := by
  rw [inventory_section_synthesis, inventory_section_synthesis]

/-- Angular duality exchanges the actual original/dual coefficient channels. -/
def globalDuality (s : GlobalIndex → ℂ) : GlobalIndex → ℂ :=
  fun i => s (i.1, !i.2.1, i.2.2)

def stageDuality (I : Finset ℕ) (c : OrbitIndex I → ℂ) : OrbitIndex I → ℂ :=
  fun i => c (i.1, !i.2.1, i.2.2)

theorem stageDuality_compress (I : Finset ℕ) (s : GlobalIndex → ℂ) :
    stageDuality I ((representation I).compress s) =
      (representation I).compress (globalDuality s) := rfl

/-- The additional future-transition diagram is proved for actual duality. -/
theorem inventoryMap_duality {I K : Finset ℕ} (hIK : I ⊆ K)
    (c : OrbitIndex K → ℂ) :
    inventoryMap hIK (stageDuality K c) = stageDuality I (inventoryMap hIK c) := by
  exact (restriction hIK).map_evolution
    (representation K) (representation I) (representation_minimal I)
    (quine.{0} K).compress_surjective globalDuality (stageDuality K) (stageDuality I)
    (stageDuality_compress K) (stageDuality_compress I) c

/-- The actual dual-channel exchange is an involutive finite-label permutation. -/
def dualIndexEquiv (I : Finset ℕ) : OrbitIndex I ≃ OrbitIndex I where
  toFun i := (i.1, !i.2.1, i.2.2)
  invFun i := (i.1, !i.2.1, i.2.2)
  left_inv i := by
    rcases i with ⟨ε, δ, m⟩
    simp
  right_inv i := by
    rcases i with ⟨ε, δ, m⟩
    simp

/-- This is the repository's actual ambient angular-duality operator, so the
admitted coefficient evolution is validated beyond a snapshot diagram. -/
theorem synthesis_stageDuality (q : ComplexL2) (I : Finset ℕ)
    (c : OrbitIndex I → ℂ) :
    synthesis q I (stageDuality I c) = angularSignDuality (synthesis q I c) := by
  rw [synthesis_apply, synthesis_apply, map_sum]
  simp only [map_smul]
  apply Fintype.sum_equiv (dualIndexEquiv I)
  intro i
  simp [stageDuality, dualIndexEquiv, orbitGenerator, orbitAtom_duality]

/-- The literal labels also prove compatibility of duality with zero extension. -/
theorem stageDuality_extendCoefficients {I K : Finset ℕ} (hIK : I ⊆ K)
    (c : OrbitIndex I → ℂ) :
    stageDuality K (extendCoefficients hIK c) =
      extendCoefficients hIK (stageDuality I c) := by
  funext i
  by_cases hi : (i.2.2 : ℕ) ∈ I
  · let j : OrbitIndex I := (i.1, i.2.1, ⟨i.2.2, hi⟩)
    have hj : includeIndex hIK j = i := by
      cases i with | mk ε i =>
        cases i with | mk δ m =>
          rfl
    rw [← hj]
    change extendCoefficients hIK c (includeIndex hIK (j.1, !j.2.1, j.2.2)) = _
    rw [extendCoefficients_apply_includeIndex, extendCoefficients_apply_includeIndex]
    rfl
  · change extendCoefficients hIK c (i.1, !i.2.1, i.2.2) = _
    exact (extendCoefficients_apply_of_not_mem hIK c (i.1, !i.2.1, i.2.2) hi).trans
      (extendCoefficients_apply_of_not_mem hIK (stageDuality I c) i hi).symm

/-- Future duality on the refined snapshot reconstructs exactly the same
future ambient state as duality on the original snapshot. -/
theorem inventory_evolution_synthesis (q : ComplexL2) {I K : Finset ℕ}
    (hIK : I ⊆ K) (c : OrbitIndex I → ℂ) :
    synthesis q K (stageDuality K (extendCoefficients hIK c)) =
      angularSignDuality (synthesis q I c) := by
  rw [stageDuality_extendCoefficients, synthesis_extendCoefficients,
    synthesis_stageDuality]

/-- The signed readout changes by the actual angular-duality sign. Snapshot
preservation therefore does not imply that this future value is unchanged. -/
theorem stageDuality_reflected_pairing (q : ComplexL2) (I : Finset ℕ)
    (c d : OrbitIndex I → ℂ) :
    ⟪synthesis q I (stageDuality I c), reflection (synthesis q I (stageDuality I d))⟫_ℂ =
      -⟪synthesis q I c, reflection (synthesis q I d)⟫_ℂ := by
  rw [synthesis_stageDuality, synthesis_stageDuality, angular_reflected_pairing_dual]

/-- Directed refinement retains this exact future signed law, including every
reflected cross-channel term of the original smaller-inventory state. -/
theorem inventory_evolution_reflected_pairing (q : ComplexL2) {I K : Finset ℕ}
    (hIK : I ⊆ K) (c d : OrbitIndex I → ℂ) :
    ⟪synthesis q K (stageDuality K (extendCoefficients hIK c)),
      reflection (synthesis q K (stageDuality K (extendCoefficients hIK d)))⟫_ℂ =
      -⟪synthesis q I c, reflection (synthesis q I d)⟫_ℂ := by
  rw [inventory_evolution_synthesis, inventory_evolution_synthesis,
    angular_reflected_pairing_dual]

end FormalResearch.PositiveAtlas.CertificationOrbitRefinement
```
