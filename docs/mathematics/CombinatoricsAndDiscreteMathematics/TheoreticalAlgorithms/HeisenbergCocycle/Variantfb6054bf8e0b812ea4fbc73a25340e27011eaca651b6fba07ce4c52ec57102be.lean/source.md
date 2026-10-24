# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HeisenbergCocycle.Variantfb6054bf8e0b812ea4fbc73a25340e27011eaca651b6fba07ce4c52ec57102be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31342111b6ab5d6376be16c6dde2f9fe4a371121` · SHA-256 `814b4b9e2a1d45095f7a14b3f17cc23f600d1a4b99661601f55aadb1c5cf60a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Element.Variant3adaadfe0e765feafa8b86087552d2cf9eb8a199bdd87aac8f0e50de2e71f595","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3adaadfe0e765feafa8b86087552d2cf9eb8a199bdd87aac8f0e50de2e71f595","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Element.Variant3adaadfe0e765feafa8b86087552d2cf9eb8a199bdd87aac8f0e50de2e71f595","mathematical_subject":"Computation.DataStructures","original_sha256":"3adaadfe0e765feafa8b86087552d2cf9eb8a199bdd87aac8f0e50de2e71f595","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/atlas-ghh-descent-20261007/FormalResearch/PositiveAtlas/ModularBoundary/HeisenbergCocycle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.ModularBoundary.Heisenberg
import Mathlib.Algebra.Group.TransferInstance

/-!
# Symmetric Heisenberg coordinates and changed sections

The determinant cocycle is related to the actual upper triangular matrix by
the upper-right coordinate `z + x*y/2`. A normalized section change transports
the full group law and preserves its central commutator. No ordinary path
homotopy invariance or characteristic-class identification is asserted.

Direction, theorem selection and evaluation: grwtsk contributors.
Formalization: OpenAI Codex, ATLAS-GHH-DESCENT-20261007.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Element.Variant3adaadfe0e765feafa8b86087552d2cf9eb8a199bdd87aac8f0e50de2e71f595

namespace FormalResearch.PositiveAtlas.ModularBoundary.HeisenbergCocycle

noncomputable section

abbrev Vector := ℝ × ℝ

def determinant (v w : Vector) : ℝ := v.1 * w.2 - v.2 * w.1

def beta (v w : Vector) : ℝ := determinant v w / 2

theorem beta_cocycle (u v w : Vector) :
    beta u v + beta (u + v) w = beta v w + beta u (v + w) := by
  simp only [beta, determinant, Prod.fst_add, Prod.snd_add]
  ring

theorem beta_antisymmetric (v w : Vector) : beta v w - beta w v = determinant v w := by
  unfold beta determinant
  ring

@[ext]
structure Element where
  base : Vector
  center : ℝ

namespace Element

def multiply (g h : Element) : Element :=
  ⟨g.base + h.base, g.center + h.center + beta g.base h.base⟩

def identity : Element := ⟨0, 0⟩

def inverse (g : Element) : Element := ⟨-g.base, -g.center⟩

instance : Group Element where
  mul := multiply
  one := identity
  inv := inverse
  mul_assoc g h k := by
    apply Element.ext
    · exact add_assoc _ _ _
    · change (g.center + h.center + beta g.base h.base) + k.center +
        beta (g.base + h.base) k.base =
        g.center + (h.center + k.center + beta h.base k.base) +
          beta g.base (h.base + k.base)
      linarith only [beta_cocycle g.base h.base k.base]
  one_mul g := by
    change multiply identity g = g
    apply Element.ext
    · exact zero_add _
    · change 0 + g.center + beta 0 g.base = g.center
      simp [beta, determinant]
  mul_one g := by
    change multiply g identity = g
    apply Element.ext
    · exact add_zero _
    · change g.center + 0 + beta g.base 0 = g.center
      simp [beta, determinant]
  inv_mul_cancel g := by
    change multiply (inverse g) g = identity
    apply Element.ext
    · exact neg_add_cancel _
    · change -g.center + g.center + beta (-g.base) g.base = 0
      simp only [beta, determinant, Prod.fst_neg, Prod.snd_neg]
      ring

@[simp] theorem mul_base (g h : Element) : (g * h).base = g.base + h.base := rfl
@[simp] theorem mul_center (g h : Element) :
    (g * h).center = g.center + h.center + beta g.base h.base := rfl
@[simp] theorem inv_base (g : Element) : g⁻¹.base = -g.base := rfl
@[simp] theorem inv_center (g : Element) : g⁻¹.center = -g.center := rfl

end Element

/-- The symmetric central coordinate differs from the literal matrix entry. -/
def matrix (g : Element) : Matrix (Fin 3) (Fin 3) ℝ :=
  !![1, g.base.1, g.center + g.base.1 * g.base.2 / 2;
     0, 1, g.base.2;
     0, 0, 1]

theorem matrix_multiply (g h : Element) : matrix (g * h) = matrix g * matrix h := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [matrix, Element.mul_base, Element.mul_center, beta, determinant,
      Matrix.mul_apply, Fin.sum_univ_succ] <;> ring

/-- The actual matrix entries recover both planar and central coordinates. -/
theorem matrix_injective : Function.Injective matrix := by
  intro g h hm
  have hx := congrArg (fun M : Matrix (Fin 3) (Fin 3) ℝ => M 0 1) hm
  have hy := congrArg (fun M : Matrix (Fin 3) (Fin 3) ℝ => M 1 2) hm
  have hz := congrArg (fun M : Matrix (Fin 3) (Fin 3) ℝ => M 0 2) hm
  change g.base.1 = h.base.1 at hx
  change g.base.2 = h.base.2 at hy
  change g.center + g.base.1 * g.base.2 / 2 =
    h.center + h.base.1 * h.base.2 / 2 at hz
  apply Element.ext
  · exact Prod.ext hx hy
  · rw [hx, hy] at hz
    linarith only [hz]

@[simp] theorem matrix_one : matrix 1 = 1 := by
  change matrix Element.identity = 1
  ext i j
  fin_cases i <;> fin_cases j <;> simp [matrix, Element.identity]

/-- The matrix law supplies actual units with both inverse equations. -/
def matrixUnit (g : Element) : (Matrix (Fin 3) (Fin 3) ℝ)ˣ where
  val := matrix g
  inv := matrix g⁻¹
  val_inv := by rw [← matrix_multiply, mul_inv_cancel, matrix_one]
  inv_val := by rw [← matrix_multiply, inv_mul_cancel, matrix_one]

def matrixHom : Element →* (Matrix (Fin 3) (Fin 3) ℝ)ˣ where
  toFun := matrixUnit
  map_one' := by apply Units.ext; exact matrix_one
  map_mul' g h := by apply Units.ext; exact matrix_multiply g h

def central (z : ℝ) : Element := ⟨0, z⟩

def firstAxis (a : ℝ) : Element := ⟨(a, 0), 0⟩

def secondAxis (a : ℝ) : Element := ⟨(0, a), 0⟩

/-- The new coordinates realize the repository's actual first tally subgroup. -/
theorem matrixHom_firstAxis (a : ℝ) : matrixHom (firstAxis a) = Heisenberg.X a := by
  apply Units.ext
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [matrixHom, matrixUnit, matrix, firstAxis, Heisenberg.X,
      FormalResearch.PositiveAtlas.Grassmannian.Braid.x₁]

/-- The new coordinates realize the repository's actual second tally subgroup. -/
theorem matrixHom_secondAxis (a : ℝ) : matrixHom (secondAxis a) = Heisenberg.Y a := by
  apply Units.ext
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [matrixHom, matrixUnit, matrix, secondAxis, Heisenberg.Y,
      FormalResearch.PositiveAtlas.Grassmannian.Braid.x₂]

theorem matrix_central (z : ℝ) : matrix (central z) = Heisenberg.central z := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp [matrix, central, Heisenberg.central]

/-- The actual central commutator records the oriented determinant. -/
theorem commutator (g h : Element) :
    g * h * g⁻¹ * h⁻¹ = central (determinant g.base h.base) := by
  ext <;> simp [Element.mul_base, Element.mul_center, Element.inv_base,
    Element.inv_center, central, beta, determinant]
  ring

theorem matrix_commutator (g h : Element) :
    matrixHom g * matrixHom h * (matrixHom g)⁻¹ * (matrixHom h)⁻¹ =
      Heisenberg.Z (determinant g.base h.base) := by
  rw [← map_inv, ← map_inv, ← map_mul, ← map_mul, ← map_mul, commutator]
  apply Units.ext
  exact matrix_central _

/-- A change of section retains its explicitly declared real coefficients. -/
def betaChanged (b : Vector → ℝ) (v w : Vector) : ℝ :=
  beta v w + b v + b w - b (v + w)

theorem betaChanged_cocycle (b : Vector → ℝ) (u v w : Vector) :
    betaChanged b u v + betaChanged b (u + v) w =
      betaChanged b v w + betaChanged b u (v + w) := by
  unfold betaChanged
  rw [add_assoc u v w]
  linarith only [beta_cocycle u v w]

theorem betaChanged_commutator (b : Vector → ℝ) (v w : Vector) :
    betaChanged b v w - betaChanged b w v = determinant v w := by
  unfold betaChanged
  rw [add_comm w v]
  linarith only [beta_antisymmetric v w]

def changedMultiply (b : Vector → ℝ) (g h : Element) : Element :=
  ⟨g.base + h.base, g.center + h.center + betaChanged b g.base h.base⟩

def changedInverse (b : Vector → ℝ) (g : Element) : Element :=
  ⟨-g.base, -g.center - b g.base - b (-g.base)⟩

theorem changedMultiply_assoc (b : Vector → ℝ) (g h k : Element) :
    changedMultiply b (changedMultiply b g h) k =
      changedMultiply b g (changedMultiply b h k) := by
  apply Element.ext
  · exact add_assoc _ _ _
  · change (g.center + h.center + betaChanged b g.base h.base) + k.center +
      betaChanged b (g.base + h.base) k.base =
      g.center + (h.center + k.center + betaChanged b h.base k.base) +
        betaChanged b g.base (h.base + k.base)
    linarith only [betaChanged_cocycle b g.base h.base k.base]

/-- Section coordinates change by addition of `b` to the central coordinate. -/
def sectionEquiv (b : Vector → ℝ) : Element ≃ Element where
  toFun g := ⟨g.base, g.center + b g.base⟩
  invFun g := ⟨g.base, g.center - b g.base⟩
  left_inv g := by ext <;> simp
  right_inv g := by ext <;> simp

theorem sectionEquiv_multiply (b : Vector → ℝ) (g h : Element) :
    sectionEquiv b (changedMultiply b g h) = sectionEquiv b g * sectionEquiv b h := by
  ext <;> simp [sectionEquiv, changedMultiply, Element.mul_base,
    Element.mul_center, betaChanged]
  ring

theorem sectionEquiv_identity (b : Vector → ℝ) (hb : b 0 = 0) :
    sectionEquiv b Element.identity = 1 := by
  change sectionEquiv b Element.identity = Element.identity
  ext <;> simp [sectionEquiv, Element.identity, hb]

theorem sectionEquiv_inverse (b : Vector → ℝ) (g : Element) :
    sectionEquiv b (changedInverse b g) = (sectionEquiv b g)⁻¹ := by
  ext <;> simp [sectionEquiv, changedInverse, Element.inv_base, Element.inv_center]
  ring

/-- The transported group law has all power and division laws as well. -/
@[instance_reducible]
def changedGroup (b : Vector → ℝ) (_hb : b 0 = 0) : Group Element :=
  (sectionEquiv b).group

theorem changedGroup_multiply (b : Vector → ℝ) (hb : b 0 = 0) (g h : Element) :
    (changedGroup b hb).mul g h = changedMultiply b g h := by
  change (sectionEquiv b).symm (sectionEquiv b g * sectionEquiv b h) = _
  apply (sectionEquiv b).injective
  rw [Equiv.apply_symm_apply, sectionEquiv_multiply]

theorem changedGroup_identity (b : Vector → ℝ) (hb : b 0 = 0) :
    (changedGroup b hb).one = Element.identity := by
  change (sectionEquiv b).symm 1 = _
  apply (sectionEquiv b).injective
  rw [Equiv.apply_symm_apply, sectionEquiv_identity b hb]

/-- The changed inverse includes both endpoint section values. -/
theorem changedGroup_inverse (b : Vector → ℝ) (hb : b 0 = 0) (g : Element) :
    (changedGroup b hb).inv g = changedInverse b g := by
  change (sectionEquiv b).symm ((sectionEquiv b g)⁻¹) = _
  apply (sectionEquiv b).injective
  rw [Equiv.apply_symm_apply, sectionEquiv_inverse]

/-- The stated section map is an actual multiplicative equivalence from the
changed group structure to the standard group structure. -/
def sectionMulEquiv (b : Vector → ℝ) (hb : b 0 = 0) :
    @MulEquiv Element Element (changedGroup b hb).toMul inferInstance :=
  (sectionEquiv b).mulEquiv

/-- A normalized section preserves every central element, not only its commutator. -/
theorem sectionEquiv_central (b : Vector → ℝ) (hb : b 0 = 0) (z : ℝ) :
    sectionEquiv b (central z) = central z := by
  ext <;> simp [sectionEquiv, central, hb]

def changedCommutator (b : Vector → ℝ) (g h : Element) : Element :=
  changedMultiply b
    (changedMultiply b (changedMultiply b g h) (changedInverse b g))
    (changedInverse b h)

/-- The determinant commutator survives a normalized change of section. -/
theorem changedCommutator_eq_central (b : Vector → ℝ) (hb : b 0 = 0)
    (g h : Element) :
    changedCommutator b g h = central (determinant g.base h.base) := by
  apply (sectionEquiv b).injective
  simp only [changedCommutator, sectionEquiv_multiply, sectionEquiv_inverse]
  rw [commutator, sectionEquiv_central b hb]
  rfl

/-- Matrix readout in changed coordinates agrees by the explicit section transport. -/
def changedMatrix (b : Vector → ℝ) (g : Element) : Matrix (Fin 3) (Fin 3) ℝ :=
  matrix (sectionEquiv b g)

theorem changedMatrix_multiply (b : Vector → ℝ) (g h : Element) :
    changedMatrix b (changedMultiply b g h) = changedMatrix b g * changedMatrix b h := by
  rw [changedMatrix, sectionEquiv_multiply, matrix_multiply]
  rfl

theorem changedMatrix_commutator (b : Vector → ℝ) (hb : b 0 = 0)
    (g h : Element) :
    changedMatrix b (changedCommutator b g h) =
      Heisenberg.central (determinant g.base h.base) := by
  rw [changedCommutator_eq_central b hb, changedMatrix,
    sectionEquiv_central b hb, matrix_central]

/-- The existing integer-center modular character keeps its actual domain. -/
theorem centralCharacter_section (b : Vector → ℝ) (hb : b 0 = 0)
    (p : ℕ) [NeZero p] (a c : ℕ) :
    changedMatrix b (central ((a * c : ℕ) : ℝ)) =
      Heisenberg.central ((a * c : ℕ) : ℝ) ∧
    Heisenberg.centralCharacter p ((a : ℤ) * c) = phase p (a * c) := by
  constructor
  · rw [changedMatrix, sectionEquiv_central b hb, matrix_central]
  · exact Heisenberg.centralCharacter_product p a c

/-- The actual modular kernel survives permitted section changes of tally coordinates. -/
theorem changed_tally_commutator_phase (b : Vector → ℝ) (hb : b 0 = 0)
    (p : ℕ) [NeZero p] (a c : ℕ) :
    changedMatrix b (changedCommutator b (firstAxis a) (secondAxis c)) =
      Heisenberg.central ((a * c : ℕ) : ℝ) ∧
    (Heisenberg.centralCharacter p ((a : ℤ) * c) = 1 ↔ p ∣ a * c) := by
  constructor
  · rw [changedMatrix_commutator b hb]
    simp [determinant, firstAxis, secondAxis]
  · exact (Heisenberg.commutator_phase_kernel p a c).2

end

end FormalResearch.PositiveAtlas.ModularBoundary.HeisenbergCocycle
```
