/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.GeneralAlgebraicSystems.AlgebraicStructures.SharedShadowPullback
import GRWTSK.NumberTheory.ElementaryNumberTheory.OrderedPrimeGroupAddress
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Distinct prime-group structures sharing a real lower group shadow

The already-formalized atomic ordered word [2,2] is (ZMod 2)^2
(up to its terminal trivial group). The competing compressed
prime-power group is ZMod 4. They are NOT additively equivalent,
as the existing GRWTSK obstruction proves.

Nevertheless both groups project additively onto ZMod 2:
the first atomic coordinate, and reduction modulo two.
Their isomorphic lower shadow therefore determines a
NONTRIVIAL pullback, not an isomorphism between source groups.

The first atomic source retains a hidden second ZMod 2 axis.
Two different original paired states share the same lower
observation. This is a concrete obstruction to recovering
the full prime-address state from the shadow ALONE; the
explicit SharedShadowPullback reified record recovers both.
No Möbius, symplectic, prismatic or RH estimate is inferred.
-/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeSharedShadow

open GRWTSK.Algebra.SharedShadowPullback
open GRWTSK.NumberTheory.ElementaryNumberTheory.OrderedPrimeGroupAddress

/-- Source group with two ordered prime-two axes. -/
abbrev AtomicTwoTwo := AtomicAddress [primeTwo, primeTwo]

/-- Source group of the same cardinality but a distinct additive
structure. Its former 'compression' is not a group equivalence. -/
abbrev CyclicFour := CompressedPrimePowerGroup primeTwo 2

/-- Exact first-coordinate additive projection of the atomic type. -/
def atomicLower : AtomicTwoTwo →+ ZMod 2 where
  toFun a := a.1
  map_zero' := by rfl
  map_add' := by intro a b; rfl

/-- Literal quotient by two, not an assumed prime-preserving
automorphism of the cyclic-four source. -/
def cyclicLower : CyclicFour →+ ZMod 2 :=
  (ZMod.castHom (by norm_num : 2 ∣ 4) (ZMod 2)).toAddMonoidHom

/-- The two shadows are isomorphic (indeed the SAME ZMod 2), even
though the original source groups are not. -/
def sample : SharedShadow AtomicTwoTwo CyclicFour (ZMod 2) (ZMod 2) :=
  SharedShadow.ofCommonCode atomicLower cyclicLower
    (AddEquiv.refl (ZMod 2)) (AddEquiv.refl (ZMod 2))

/-- The existing hostile additive-group obstruction is retained. -/
theorem originals_not_addEquiv :
    ¬ Nonempty (AtomicTwoTwo ≃+ CyclicFour) :=
  repeatedTwo_not_addEquiv_compressed

/-- The second atomic axis is invisible to the chosen lower shadow. -/
def hiddenAtomic : AtomicTwoTwo := (0, (1, 0))

/-- Two distinct matched original pairs with the SAME shadow. -/
def zeroPair : sample.Paired :=
  sample.pair 0 0 (by simp [sample, atomicLower, cyclicLower])

def hiddenPair : sample.Paired :=
  sample.pair hiddenAtomic 0 (by
    simp [sample, atomicLower, cyclicLower, hiddenAtomic])

theorem shadow_collision :
    sample.shadow zeroPair = sample.shadow hiddenPair := by
  rfl

theorem source_pairs_distinct : zeroPair ≠ hiddenPair := by
  intro h
  have hcoordinate :=
    congrArg (fun x : sample.Paired => (sample.toLeft x).2.1) h
  norm_num [zeroPair, hiddenPair, hiddenAtomic, sample] at hcoordinate

/-- The lower shadow alone has NO decoder on the complete matched
source: this is a concrete, not just conditional, collision. -/
theorem no_shadow_only_source_decoder :
    ¬ ∃ decode : ZMod 2 → sample.Paired,
      ∀ x : sample.Paired, decode (sample.shadow x) = x :=
  sample.no_shadow_only_decoder_of_collision
    zeroPair hiddenPair shadow_collision source_pairs_distinct

/-- Reification retains the complete two-source state in this
example, with a literal proven round trip. -/
theorem both_sources_return (x : sample.Paired) :
    sample.decode (sample.encode x) = x :=
  sample.decode_encode x

end GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeSharedShadow
