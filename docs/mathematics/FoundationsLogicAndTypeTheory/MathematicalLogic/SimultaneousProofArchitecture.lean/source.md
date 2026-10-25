# Complete source: GRWTSK.Logic.SimultaneousProofArchitecture

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e10da1269d04b918e3cb7940037e97d20958605` · SHA-256 `7c1a71d49c7f488030c8ab7c59d278cfb15599e82cba5b05c6472d72585e2a3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

namespace GRWTSK.Logic.SimultaneousProofArchitecture

universe u

/-- Terminal disposition of a target proposition.

`unresolved` is explicit data: it is not proof, refutation, zero error, or an omitted field. -/
inductive TargetDisposition (Target : Prop) : Type
  | proved (proof : Target)
  | refuted (proof : ¬ Target)
  | conditional (Premise : Prop) (premiseName : String) (proof : Premise → Target)
  | unresolved (obligation : String)

namespace TargetDisposition

variable {Target : Prop}

/-- Extract a target proof only from the proved disposition. `PLift` makes the proposition a
valid `Type` argument of `Option`; it does not add a proof. -/
def proof? : TargetDisposition Target → Option (PLift Target)
  | .proved h => some ⟨h⟩
  | .refuted _ => none
  | .conditional _ _ _ => none
  | .unresolved _ => none

/-- Extract a target refutation only from the refuted disposition. -/
def refutation? : TargetDisposition Target → Option (PLift (¬ Target))
  | .proved _ => none
  | .refuted h => some ⟨h⟩
  | .conditional _ _ _ => none
  | .unresolved _ => none

/-- An unresolved disposition supplies no optional proof. -/
@[simp]
theorem unresolved_proof? (name : String) :
    (unresolved name : TargetDisposition Target).proof? = none := rfl

/-- An unresolved disposition supplies no optional refutation. -/
@[simp]
theorem unresolved_refutation? (name : String) :
    (unresolved name : TargetDisposition Target).refutation? = none := rfl

/-- Resolve a conditional target after supplying its exact named premise. -/
theorem conditional_apply {Premise : Prop} {name : String}
    (h : Premise → Target) (hp : Premise) : Target :=
  h hp

end TargetDisposition

/-- All admitted local claims are proved simultaneously, while the terminal target has an
independent disposition. -/
structure SimultaneousProofBundle {I : Type u}
    (LocalClaim : I → Prop) (Target : Prop) where
  localProof : ∀ i, LocalClaim i
  targetDisposition : TargetDisposition Target

namespace SimultaneousProofBundle

variable {I : Type u} {LocalClaim : I → Prop} {Target Target' : Prop}

/-- Every local theorem is available independently of the terminal disposition. -/
theorem local (B : SimultaneousProofBundle LocalClaim Target) (i : I) :
    LocalClaim i :=
  B.localProof i

/-- Replace the terminal question without changing any proved local theorem. -/
def retarget (B : SimultaneousProofBundle LocalClaim Target)
    (d : TargetDisposition Target') :
    SimultaneousProofBundle LocalClaim Target' where
  localProof := B.localProof
  targetDisposition := d

/-- Retargeting cannot change the proposition-level local evidence. -/
theorem retarget_local (B : SimultaneousProofBundle LocalClaim Target)
    (d : TargetDisposition Target') (i : I) :
    (B.retarget d).local i = B.local i :=
  Subsingleton.elim _ _

end SimultaneousProofBundle

namespace Fixtures

/-- Two local theorem slots used to demonstrate independence from the target. -/
inductive LocalIndex
  | algebra
  | topology
  deriving DecidableEq, Repr

/-- Both fixture claims are true. -/
def localClaim : LocalIndex → Prop := fun _ => True

/-- Every local fixture theorem is proved while the unrelated target `False` is refuted. -/
def refutedTargetBundle : SimultaneousProofBundle localClaim False where
  localProof := fun _ => trivial
  targetDisposition := .refuted (fun h => h.elim)

/-- Refutation of the terminal target does not erase local mathematics. -/
theorem local_survives_refuted_target (i : LocalIndex) : localClaim i :=
  refutedTargetBundle.local i

/-- Every local fixture theorem is also available with an explicitly unresolved target. -/
def unresolvedTargetBundle : SimultaneousProofBundle localClaim False where
  localProof := fun _ => trivial
  targetDisposition := .unresolved "fixture target intentionally left unresolved"

/-- Unresolved target status likewise leaves local proofs intact. -/
theorem local_survives_unresolved_target (i : LocalIndex) : localClaim i :=
  unresolvedTargetBundle.local i

end Fixtures

end GRWTSK.Logic.SimultaneousProofArchitecture
```
