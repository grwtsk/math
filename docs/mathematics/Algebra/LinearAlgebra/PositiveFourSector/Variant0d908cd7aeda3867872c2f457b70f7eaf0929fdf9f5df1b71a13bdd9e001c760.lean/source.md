# Complete source: GRWTSK.Algebra.LinearAlgebra.PositiveFourSector.Variant0d908cd7aeda3867872c2f457b70f7eaf0929fdf9f5df1b71a13bdd9e001c760

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4b6922a2afbc424a311bb503d6cb44e4124edd6` · SHA-256 `82557efb97e21e99f4bddf6fec1ed693428d9778747e1fd038572194c1b4d41a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PositiveCommutingInvolutions.Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.PositiveCommutingInvolutions.Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/PositiveAtlas/PositiveFourSector.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.CommutingInvolutions

/-!
# Positive geometry of the four involution sectors

This module equips the Phase-III four-sector decomposition with a compatible
positive geometry.

A linear map T is self-adjoint for a PositiveForm G when

  G(Tx,y) = G(x,Ty).

For two commuting involutions that are self-adjoint for G, vectors in opposite
eigenspaces are G-orthogonal. Consequently the four joint sectors are pairwise
G-orthogonal and the ambient quadratic energy decomposes as the sum of four
nonnegative sector energies.

The distinguished (+,-) intervention sector therefore carries a canonical
positive quadratic energy. This is still a geometric quantity; no causal
interpretation is inferred in this module.
-/


namespace GRWTSK.Algebra.LinearAlgebra.PositiveCommutingInvolutions.Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb

namespace FormalResearch.PositiveAtlas

universe u

variable {V : Type u} [AddCommGroup V] [Module ℝ V]

namespace PositiveForm

/-- Self-adjointness of a linear map relative to a positive bilinear form. -/
def SelfAdjointFor (G : PositiveForm V) (T : V →ₗ[ℝ] V) : Prop :=
  ∀ x y, G.form (T x) y = G.form x (T y)

/-- Opposite ±1 eigenvectors of a self-adjoint operator are orthogonal. -/
theorem orthogonal_of_eigen_plus_minus
    (G : PositiveForm V) {T : V →ₗ[ℝ] V}
    (hT : G.SelfAdjointFor T)
    {x y : V} (hx : T x = x) (hy : T y = -y) :
    G.form x y = 0 := by
  have h := hT x y
  rw [hx, hy] at h
  have hneg : G.form x (-y) = -G.form x y := by
    have hs := G.smul_right (-1 : ℝ) x y
    simpa using hs
  rw [hneg] at h
  linarith

/-- A four-term Pythagorean identity for pairwise orthogonal vectors. -/
theorem four_sum_energy
    (G : PositiveForm V) (a b c d : V)
    (hab : G.form a b = 0)
    (hac : G.form a c = 0)
    (had : G.form a d = 0)
    (hbc : G.form b c = 0)
    (hbd : G.form b d = 0)
    (hcd : G.form c d = 0) :
    G.form (a + b + c + d) (a + b + c + d) =
      G.form a a + G.form b b + G.form c c + G.form d d := by
  have hba : G.form b a = 0 := by
    rw [G.symmetric b a, hab]
  have hca : G.form c a = 0 := by
    rw [G.symmetric c a, hac]
  have hda : G.form d a = 0 := by
    rw [G.symmetric d a, had]
  have hcb : G.form c b = 0 := by
    rw [G.symmetric c b, hbc]
  have hdb : G.form d b = 0 := by
    rw [G.symmetric d b, hbd]
  have hdc : G.form d c = 0 := by
    rw [G.symmetric d c, hcd]
  simp [G.add_left, G.add_right, hab, hac, had, hbc, hbd, hcd,
    hba, hca, hda, hcb, hdb, hdc]

end PositiveForm

/-- Two commuting involutions compatible with the same positive geometry. -/
structure PositiveCommutingInvolutions (G : PositiveForm V) where
  /-- Commuting involutions required to be self-adjoint for the given form. -/
  involutions : CommutingInvolutions V
  first_selfAdjoint : G.SelfAdjointFor involutions.first
  second_selfAdjoint : G.SelfAdjointFor involutions.second

namespace PositiveCommutingInvolutions

variable {G : PositiveForm V} (C : PositiveCommutingInvolutions G)

/-- The ++ sector. -/
noncomputable def sectorPP : V →ₗ[ℝ] V :=
  C.involutions.sectorPP

/-- The +- sector. -/
noncomputable def sectorPM : V →ₗ[ℝ] V :=
  C.involutions.sectorPM

/-- The -+ sector. -/
noncomputable def sectorMP : V →ₗ[ℝ] V :=
  C.involutions.sectorMP

/-- The -- sector. -/
noncomputable def sectorMM : V →ₗ[ℝ] V :=
  C.involutions.sectorMM

@[simp] theorem sectorPP_apply (x : V) :
    C.sectorPP x = C.involutions.sectorPP x := rfl
@[simp] theorem sectorPM_apply (x : V) :
    C.sectorPM x = C.involutions.sectorPM x := rfl
@[simp] theorem sectorMP_apply (x : V) :
    C.sectorMP x = C.involutions.sectorMP x := rfl
@[simp] theorem sectorMM_apply (x : V) :
    C.sectorMM x = C.involutions.sectorMM x := rfl

/-- The first involution acts by +1 on ++. -/
theorem first_on_PP (x : V) :
    C.involutions.first (C.sectorPP x) = C.sectorPP x := by
  change C.involutions.first
      (involutionPlus C.involutions.first
        (involutionPlus C.involutions.second x)) =
    involutionPlus C.involutions.first
      (involutionPlus C.involutions.second x)
  exact involution_on_plus C.involutions.first C.involutions.first_sq _

/-- The second involution acts by +1 on ++. -/
theorem second_on_PP (x : V) :
    C.involutions.second (C.sectorPP x) = C.sectorPP x := by
  change C.involutions.second
      (involutionPlus C.involutions.first
        (involutionPlus C.involutions.second x)) =
    involutionPlus C.involutions.first
      (involutionPlus C.involutions.second x)
  rw [C.involutions.plusPlus_commute]
  exact involution_on_plus C.involutions.second C.involutions.second_sq _

/-- The first involution acts by +1 on +-. -/
theorem first_on_PM (x : V) :
    C.involutions.first (C.sectorPM x) = C.sectorPM x := by
  change C.involutions.first
      (involutionPlus C.involutions.first
        (involutionMinus C.involutions.second x)) =
    involutionPlus C.involutions.first
      (involutionMinus C.involutions.second x)
  exact involution_on_plus C.involutions.first C.involutions.first_sq _

/-- The second involution acts by -1 on +-. -/
theorem second_on_PM (x : V) :
    C.involutions.second (C.sectorPM x) = -C.sectorPM x := by
  simpa [sectorPM, CommutingInvolutions.interventionSector] using
    C.involutions.second_on_interventionSector x

/-- The first involution acts by -1 on -+. -/
theorem first_on_MP (x : V) :
    C.involutions.first (C.sectorMP x) = -C.sectorMP x := by
  change C.involutions.first
      (involutionMinus C.involutions.first
        (involutionPlus C.involutions.second x)) =
    -involutionMinus C.involutions.first
      (involutionPlus C.involutions.second x)
  exact involution_on_minus C.involutions.first C.involutions.first_sq _

/-- The second involution acts by +1 on -+. -/
theorem second_on_MP (x : V) :
    C.involutions.second (C.sectorMP x) = C.sectorMP x := by
  change C.involutions.second
      (involutionMinus C.involutions.first
        (involutionPlus C.involutions.second x)) =
    involutionMinus C.involutions.first
      (involutionPlus C.involutions.second x)
  rw [C.involutions.minusPlus_commute]
  exact involution_on_plus C.involutions.second C.involutions.second_sq _

/-- The first involution acts by -1 on --. -/
theorem first_on_MM (x : V) :
    C.involutions.first (C.sectorMM x) = -C.sectorMM x := by
  change C.involutions.first
      (involutionMinus C.involutions.first
        (involutionMinus C.involutions.second x)) =
    -involutionMinus C.involutions.first
      (involutionMinus C.involutions.second x)
  exact involution_on_minus C.involutions.first C.involutions.first_sq _

/-- The second involution acts by -1 on --. -/
theorem second_on_MM (x : V) :
    C.involutions.second (C.sectorMM x) = -C.sectorMM x := by
  change C.involutions.second
      (involutionMinus C.involutions.first
        (involutionMinus C.involutions.second x)) =
    -involutionMinus C.involutions.first
      (involutionMinus C.involutions.second x)
  rw [C.involutions.minusMinus_commute]
  exact involution_on_minus C.involutions.second C.involutions.second_sq _

/-- ++ and +- are G-orthogonal. -/
theorem orthogonal_PP_PM (x y : V) :
    G.form (C.sectorPP x) (C.sectorPM y) = 0 :=
  G.orthogonal_of_eigen_plus_minus C.second_selfAdjoint
    (C.second_on_PP x) (C.second_on_PM y)

/-- ++ and -+ are G-orthogonal. -/
theorem orthogonal_PP_MP (x y : V) :
    G.form (C.sectorPP x) (C.sectorMP y) = 0 :=
  G.orthogonal_of_eigen_plus_minus C.first_selfAdjoint
    (C.first_on_PP x) (C.first_on_MP y)

/-- ++ and -- are G-orthogonal. -/
theorem orthogonal_PP_MM (x y : V) :
    G.form (C.sectorPP x) (C.sectorMM y) = 0 :=
  G.orthogonal_of_eigen_plus_minus C.first_selfAdjoint
    (C.first_on_PP x) (C.first_on_MM y)

/-- +- and -+ are G-orthogonal. -/
theorem orthogonal_PM_MP (x y : V) :
    G.form (C.sectorPM x) (C.sectorMP y) = 0 :=
  G.orthogonal_of_eigen_plus_minus C.first_selfAdjoint
    (C.first_on_PM x) (C.first_on_MP y)

/-- +- and -- are G-orthogonal. -/
theorem orthogonal_PM_MM (x y : V) :
    G.form (C.sectorPM x) (C.sectorMM y) = 0 :=
  G.orthogonal_of_eigen_plus_minus C.first_selfAdjoint
    (C.first_on_PM x) (C.first_on_MM y)

/-- -+ and -- are G-orthogonal. -/
theorem orthogonal_MP_MM (x y : V) :
    G.form (C.sectorMP x) (C.sectorMM y) = 0 :=
  G.orthogonal_of_eigen_plus_minus C.second_selfAdjoint
    (C.second_on_MP x) (C.second_on_MM y)

/-- The four positive sector energies exactly decompose ambient energy. -/
theorem energy_decomposition (x : V) :
    G.form x x =
      G.form (C.sectorPP x) (C.sectorPP x) +
      G.form (C.sectorPM x) (C.sectorPM x) +
      G.form (C.sectorMP x) (C.sectorMP x) +
      G.form (C.sectorMM x) (C.sectorMM x) := by
  calc
    G.form x x =
        G.form
          (C.sectorPP x + C.sectorPM x + C.sectorMP x + C.sectorMM x)
          (C.sectorPP x + C.sectorPM x + C.sectorMP x + C.sectorMM x) := by
            simp only [sectorPP_apply, sectorPM_apply, sectorMP_apply, sectorMM_apply,
              C.involutions.four_sector_decomposition x]
    _ =
        G.form (C.sectorPP x) (C.sectorPP x) +
        G.form (C.sectorPM x) (C.sectorPM x) +
        G.form (C.sectorMP x) (C.sectorMP x) +
        G.form (C.sectorMM x) (C.sectorMM x) :=
      G.four_sum_energy
        (C.sectorPP x) (C.sectorPM x) (C.sectorMP x) (C.sectorMM x)
        (C.orthogonal_PP_PM x x)
        (C.orthogonal_PP_MP x x)
        (C.orthogonal_PP_MM x x)
        (C.orthogonal_PM_MP x x)
        (C.orthogonal_PM_MM x x)
        (C.orthogonal_MP_MM x x)

/-- The positive geometry carried by the distinguished (+,-) sector. -/
noncomputable def interventionGeometry : PositiveForm V :=
  G.pullback C.sectorPM

/-- Phase-III intervention-sector energy. -/
noncomputable def interventionEnergy (x : V) : ℝ :=
  C.interventionGeometry.form x x

@[simp]
theorem interventionEnergy_eq (x : V) :
    C.interventionEnergy x =
      G.form (C.sectorPM x) (C.sectorPM x) :=
  rfl

/-- Intervention-sector energy is nonnegative. -/
theorem interventionEnergy_nonnegative (x : V) :
    0 ≤ C.interventionEnergy x :=
  C.interventionGeometry.nonnegative x

/-- Intervention-sector energy cannot exceed the total positive energy. -/
theorem interventionEnergy_le_total (x : V) :
    C.interventionEnergy x ≤ G.form x x := by
  have hpp := G.nonnegative (C.sectorPP x)
  have hpm := G.nonnegative (C.sectorPM x)
  have hmp := G.nonnegative (C.sectorMP x)
  have hmm := G.nonnegative (C.sectorMM x)
  rw [C.energy_decomposition x, C.interventionEnergy_eq]
  linarith

/-- The intervention energy vanishes exactly when the (+,-) sector is G-null. -/
theorem interventionEnergy_eq_zero_iff (x : V) :
    C.interventionEnergy x = 0 ↔
      G.IsNull (C.sectorPM x) :=
  Iff.rfl

end PositiveCommutingInvolutions

end FormalResearch.PositiveAtlas
```
