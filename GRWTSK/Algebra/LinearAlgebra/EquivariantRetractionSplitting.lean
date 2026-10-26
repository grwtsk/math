/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.RetractionSplitEquiv
import Mathlib.LinearAlgebra.Prod

set_option autoImplicit false

/-!
# Equivariance of a supplied retraction splitting

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
Native verification is on hold. These declarations have not been compiled.

The retraction and both intertwining identities are inputs. Kernel stability,
the restricted operator, the block operator, and its conjugacy with the original
operator are constructed. A supplied semiring representation also restricts to
an actual representation of the kernel; its laws are derived below.

This is the proposed B2 fragment for Boundary Regularization: A Framework for
High-Rank Elimination, original PDF SHA-256
796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362,
PDF pp. 1-2. Exact version/page references and missing suppliers are recorded in
docs/reference/literature/reading-background/retraction-prime-endpoint-candidates-v1.md.
No geometric localization sequence, retraction, or Hecke action is supplied.
-/

universe uR uM uB uA uI

namespace GRWTSK.Algebra.LinearAlgebra

variable {R : Type uR} {M : Type uM} {B : Type uB}
    [CommRing R] [AddCommGroup M] [Module R M]
    [AddCommGroup B] [Module R B]

/-- Kernel stability is derived from the actual retraction/operator intertwiner. -/
theorem retractionKernel_stable (r : M →ₗ[R] B)
    (T : M →ₗ[R] M) (S : B →ₗ[R] B)
    (hT : ∀ x, r (T x) = S (r x)) (x : M) (hx : x ∈ LinearMap.ker r) :
    T x ∈ LinearMap.ker r := by
  change r (T x) = 0
  have hx0 : r x = 0 := hx
  rw [hT x, hx0, map_zero]

/-- The actual restricted endomorphism, with kernel membership proved above. -/
def retractionKernelEnd (r : M →ₗ[R] B)
    (T : M →ₗ[R] M) (S : B →ₗ[R] B)
    (hT : ∀ x, r (T x) = S (r x)) : LinearMap.ker r →ₗ[R] LinearMap.ker r where
  toFun x := ⟨T (x : M), retractionKernel_stable r T S hT (x : M) x.property⟩
  map_add' x y := by
    apply Subtype.ext
    exact T.map_add (x : M) (y : M)
  map_smul' c x := by
    apply Subtype.ext
    exact T.map_smul c (x : M)

@[simp] theorem retractionKernelEnd_apply (r : M →ₗ[R] B)
    (T : M →ₗ[R] M) (S : B →ₗ[R] B)
    (hT : ∀ x, r (T x) = S (r x)) (x : LinearMap.ker r) :
    (retractionKernelEnd r T S hT x : M) = T (x : M) := rfl

/-- The block operator retains both the included component and the actual kernel. -/
def retractionBlockEnd (r : M →ₗ[R] B)
    (T : M →ₗ[R] M) (S : B →ₗ[R] B)
    (hT : ∀ x, r (T x) = S (r x)) :
    B × LinearMap.ker r →ₗ[R] B × LinearMap.ker r :=
  S.prodMap (retractionKernelEnd r T S hT)

@[simp] theorem retractionBlockEnd_apply (r : M →ₗ[R] B)
    (T : M →ₗ[R] M) (S : B →ₗ[R] B)
    (hT : ∀ x, r (T x) = S (r x)) (y : B × LinearMap.ker r) :
    retractionBlockEnd r T S hT y = (S y.1, retractionKernelEnd r T S hT y.2) := rfl

/-- The full splitting intertwines the supplied operator and its constructed block. -/
theorem retractionSplitEquiv_intertwines (i : B →ₗ[R] M) (r : M →ₗ[R] B)
    (hret : ∀ b, r (i b) = b) (T : M →ₗ[R] M) (S : B →ₗ[R] B)
    (hi : ∀ b, T (i b) = i (S b)) (hT : ∀ x, r (T x) = S (r x)) (x : M) :
    retractionSplitEquiv i r hret (T x) =
      retractionBlockEnd r T S hT (retractionSplitEquiv i r hret x) := by
  apply Prod.ext
  · change r (T x) = S (r x)
    exact hT x
  · apply Subtype.ext
    change retractionComplement i r (T x) = T (retractionComplement i r x)
    exact (retractionComplement_commutes i r T S hi hT x).symm

/-- The pointwise identity is also an equality of the actual linear maps. -/
theorem retractionSplitEquiv_comp (i : B →ₗ[R] M) (r : M →ₗ[R] B)
    (hret : ∀ b, r (i b) = b) (T : M →ₗ[R] M) (S : B →ₗ[R] B)
    (hi : ∀ b, T (i b) = i (S b)) (hT : ∀ x, r (T x) = S (r x)) :
    (retractionSplitEquiv i r hret).toLinearMap.comp T =
      (retractionBlockEnd r T S hT).comp (retractionSplitEquiv i r hret).toLinearMap := by
  apply LinearMap.ext
  intro x
  exact retractionSplitEquiv_intertwines i r hret T S hi hT x

/-- Reconstructing the state also intertwines the two actual operators. -/
theorem retractionSplitEquiv_inverse_intertwines (i : B →ₗ[R] M) (r : M →ₗ[R] B)
    (hret : ∀ b, r (i b) = b) (T : M →ₗ[R] M) (S : B →ₗ[R] B)
    (hi : ∀ b, T (i b) = i (S b)) (hT : ∀ x, r (T x) = S (r x))
    (y : B × LinearMap.ker r) :
    T ((retractionSplitEquiv i r hret).symm y) =
      (retractionSplitEquiv i r hret).symm (retractionBlockEnd r T S hT y) := by
  apply (retractionSplitEquiv i r hret).injective
  simpa only [LinearEquiv.apply_symm_apply] using
    retractionSplitEquiv_intertwines i r hret T S hi hT
      ((retractionSplitEquiv i r hret).symm y)

/-- A family of operators remains a family; no action laws are inferred from its index. -/
theorem retractionSplitEquiv_family_intertwines {I : Type uI}
    (i : B →ₗ[R] M) (r : M →ₗ[R] B) (hret : ∀ b, r (i b) = b)
    (T : I → M →ₗ[R] M) (S : I → B →ₗ[R] B)
    (hi : ∀ a b, T a (i b) = i (S a b))
    (hT : ∀ a x, r (T a x) = S a (r x)) (a : I) (x : M) :
    retractionSplitEquiv i r hret (T a x) =
      retractionBlockEnd r (T a) (S a) (hT a) (retractionSplitEquiv i r hret x) :=
  retractionSplitEquiv_intertwines i r hret (T a) (S a) (hi a) (hT a) x

variable {A : Type uA} [Semiring A]

/-- A supplied semiring representation restricts to the kernel with derived laws.
This does not construct a geometric or Hecke representation. -/
def retractionKernelRepresentation (r : M →ₗ[R] B)
    (ρM : A →+* Module.End R M) (ρB : A →+* Module.End R B)
    (hT : ∀ a x, r (ρM a x) = ρB a (r x)) :
    A →+* Module.End R (LinearMap.ker r) where
  toFun a := retractionKernelEnd r (ρM a) (ρB a) (hT a)
  map_zero' := by
    apply LinearMap.ext
    intro x
    apply Subtype.ext
    change ρM 0 (x : M) = 0
    exact congrArg (fun f : Module.End R M => f (x : M)) (map_zero ρM)
  map_one' := by
    apply LinearMap.ext
    intro x
    apply Subtype.ext
    change ρM 1 (x : M) = (x : M)
    exact congrArg (fun f : Module.End R M => f (x : M)) (map_one ρM)
  map_add' a b := by
    apply LinearMap.ext
    intro x
    apply Subtype.ext
    change ρM (a + b) (x : M) = ρM a (x : M) + ρM b (x : M)
    exact congrArg (fun f : Module.End R M => f (x : M)) (map_add ρM a b)
  map_mul' a b := by
    apply LinearMap.ext
    intro x
    apply Subtype.ext
    change ρM (a * b) (x : M) = ρM a (ρM b (x : M))
    exact congrArg (fun f : Module.End R M => f (x : M)) (map_mul ρM a b)

@[simp] theorem retractionKernelRepresentation_apply (r : M →ₗ[R] B)
    (ρM : A →+* Module.End R M) (ρB : A →+* Module.End R B)
    (hT : ∀ a x, r (ρM a x) = ρB a (r x)) (a : A) (x : LinearMap.ker r) :
    (retractionKernelRepresentation r ρM ρB hT a x : M) = ρM a (x : M) := rfl

/-- For actual supplied representations, the same splitting is equivariant for every element. -/
theorem retractionSplitEquiv_representation_intertwines
    (i : B →ₗ[R] M) (r : M →ₗ[R] B) (hret : ∀ b, r (i b) = b)
    (ρM : A →+* Module.End R M) (ρB : A →+* Module.End R B)
    (hi : ∀ a b, ρM a (i b) = i (ρB a b))
    (hT : ∀ a x, r (ρM a x) = ρB a (r x)) (a : A) (x : M) :
    retractionSplitEquiv i r hret (ρM a x) =
      ((ρB a).prodMap (retractionKernelRepresentation r ρM ρB hT a))
        (retractionSplitEquiv i r hret x) :=
  retractionSplitEquiv_intertwines i r hret (ρM a) (ρB a) (hi a) (hT a) x

end GRWTSK.Algebra.LinearAlgebra
