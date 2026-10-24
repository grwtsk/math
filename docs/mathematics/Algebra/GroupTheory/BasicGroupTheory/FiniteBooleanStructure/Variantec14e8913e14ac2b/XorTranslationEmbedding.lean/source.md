# Complete source: GRWTSK.Algebra.GroupTheory.BasicGroupTheory.FiniteBooleanStructure.Variantec14e8913e14ac2b.XorTranslationEmbedding

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35f12936acc41ffc6043bd288e8f06f0724ef2bf` · SHA-256 `f4582a42da57a6b73a1feb763193028a66ef2ba90fc4453e4ac68094f04b09f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
XorTranslationEmbedding — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d
Organized SHA-256: 2c83986545ea905b5af2fb1f20f153ca1b09a8214a0cee94703f84f2808d19ee
PMD: 510.1.030.010 basic group theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Full BitPerm/ofBijective, explicit XOR wrapper with all four original instances, complete monoid-hom embedding record/coercion/injectivity, and exact translation homomorphism and order-two laws remain intact. No global group instance is installed on the plain Bits type. Original namespaces are retained to preserve exact method/type-extension lookup; physical subject placement is GRWTSK. Distinct historical versions are separate uncompiled files and are not admitted together to an umbrella. -/

import BitMatrix.Network.Permutation
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Finite symmetries of Boolean state spaces

This module separates the group theory of finite state permutations from the
avalanche statistics defined in `BitMatrix.Dynamics.Avalanche`.  Since `Bits n` has
`2 ^ n` elements, `BitPerm n` is the symmetric group on those Boolean states.
XOR translations embed an elementary abelian `2`-group `C₂^n`, while
coordinate relabelings embed a copy of the coordinate symmetric group `Sₙ`.
Their affine combinations form the explicit family `HammingIso`; no
classification of all Hamming isometries is claimed here.

Conjugation by an arbitrary state permutation preserves iteration and fixed
point counts, and therefore preserves the complete finite cycle structure.
Cycle structure alone implies neither SAC, derivative-bit independence, nor
low differential concentration.  Conjugation by one of the explicit Hamming
isometries additionally preserves SAC, because it only relabels inputs, input
directions, and output coordinates.
-/

namespace BitMatrix.Algebra.Symmetry

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open BitMatrix.Network.Permutation
open scoped BigOperators

/-- The full permutation group of the `n`-bit state space. -/
abbrev BitPerm (n : Nat) := Equiv.Perm (Bits n)

/-- Promote a function whose bijectivity has been proved to a state permutation. -/
noncomputable def BitPerm.ofBijective {n : Nat}
    (H : Bits n → Bits n)
    (hH : Function.Bijective H) :
    BitPerm n :=
  Equiv.ofBijective H hH

@[simp]
theorem BitPerm.ofBijective_apply {n : Nat}
    (H : Bits n → Bits n)
    (hH : Function.Bijective H)
    (x : Bits n) :
    BitPerm.ofBijective H hH x = H x :=
  rfl

/-! ## An explicit XOR group

`Bits n` remains the project's plain function type.  The distinct wrapper
below supplies the group structure needed for translations without installing
global algebraic instances on `Bits n` itself.
-/

/-- Bit vectors regarded as the elementary abelian XOR group. -/
def XorGroup (n : Nat) := Bits n

namespace XorGroup

instance instOne {n : Nat} : One (XorGroup n) :=
  ⟨zeroBits n⟩

instance instMul {n : Nat} : Mul (XorGroup n) :=
  ⟨xorBits⟩

instance instInv {n : Nat} : Inv (XorGroup n) :=
  ⟨id⟩

instance instCommGroup {n : Nat} : CommGroup (XorGroup n) where
  mul_assoc := xorBits_assoc
  one_mul := xorBits_zero_left
  mul_one := xorBits_zero_right
  inv_mul_cancel x := xorBits_self x
  mul_comm := xorBits_comm

/-- Forget the explicit group wrapper. -/
def toBits {n : Nat} : XorGroup n ≃ Bits n :=
  Equiv.refl _

@[simp]
theorem one_toBits {n : Nat} :
    toBits (1 : XorGroup n) = zeroBits n :=
  rfl

@[simp]
theorem mul_toBits {n : Nat} (x y : XorGroup n) :
    toBits (x * y) = xorBits (toBits x) (toBits y) :=
  rfl

@[simp]
theorem inv_eq {n : Nat} (x : XorGroup n) : x⁻¹ = x :=
  rfl

end XorGroup

/-!
The pinned Mathlib release has no bundled `M ↪* N` type.  This minimal
wrapper packages a monoid homomorphism together with its faithfulness proof.
-/

/-- A monoid homomorphism bundled with a proof that it is injective. -/
structure MonoidEmbedding (M N : Type*) [MulOne M] [MulOne N]
    extends M →* N where
  injective' : Function.Injective toFun

infixr:25 " ↪* " => MonoidEmbedding

namespace MonoidEmbedding

instance instCoeFunForall {M N : Type*} [MulOne M] [MulOne N] :
    CoeFun (M ↪* N) (fun _ => M → N) :=
  ⟨fun f => f.toFun⟩

/-- Every bundled monoid embedding is faithful. -/
theorem injective {M N : Type*} [MulOne M] [MulOne N]
    (f : M ↪* N) : Function.Injective f :=
  f.injective'

end MonoidEmbedding

/-! ## Translation subgroup -/

@[simp]
theorem translation_mul_apply {n : Nat}
    (δ γ : XorGroup n)
    (x : Bits n) :
    (xorTranslation (XorGroup.toBits δ) *
      xorTranslation (XorGroup.toBits γ)) x =
    xorTranslation (XorGroup.toBits (δ * γ)) x := by
  simp only [Equiv.Perm.mul_apply, xorTranslation_apply,
    XorGroup.mul_toBits]
  rw [xorBits_assoc, xorBits_comm (XorGroup.toBits γ)]

/-- XOR translations as a group homomorphism into all state permutations. -/
def translationHom {n : Nat} : XorGroup n →* BitPerm n :=
  MonoidHom.mk'
    (fun δ => xorTranslation (XorGroup.toBits δ))
    (fun δ γ => by
      apply Equiv.Perm.ext
      intro x
      exact (translation_mul_apply δ γ x).symm)

@[simp]
theorem translationHom_apply {n : Nat}
    (δ : XorGroup n)
    (x : Bits n) :
    translationHom δ x = xorBits x (XorGroup.toBits δ) :=
  rfl

/-- Distinct XOR offsets induce distinct state permutations. -/
theorem translationHom_injective {n : Nat} :
    Function.Injective (translationHom (n := n)) := by
  intro δ γ h
  apply XorGroup.toBits.injective
  have hx := congrArg (fun p : BitPerm n => p (zeroBits n)) h
  simpa using hx

/-- The translation subgroup as a faithful embedded copy of `C₂^n`. -/
def translationEmbedding {n : Nat} : XorGroup n ↪* BitPerm n where
  toMonoidHom := translationHom
  injective' := translationHom_injective

@[simp]
theorem translationHom_one {n : Nat} :
    translationHom (1 : XorGroup n) = 1 :=
  map_one translationHom

theorem translation_comm {n : Nat} (δ γ : XorGroup n) :
    translationHom δ * translationHom γ =
      translationHom γ * translationHom δ := by
  rw [← map_mul, mul_comm, map_mul]

theorem translation_order_two {n : Nat} (δ : XorGroup n) :
    translationHom δ * translationHom δ = 1 := by
  rw [← map_mul]
  have hself : δ * δ = (1 : XorGroup n) := by
    apply XorGroup.toBits.injective
    simp [XorGroup.mul_toBits]
  rw [hself, map_one]

end BitMatrix.Algebra.Symmetry
```
