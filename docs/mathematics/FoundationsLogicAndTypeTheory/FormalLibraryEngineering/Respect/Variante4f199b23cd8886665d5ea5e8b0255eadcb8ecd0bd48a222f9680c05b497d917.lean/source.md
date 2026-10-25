# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Respect.Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64b15f2d2bcba38fd037cf760f8fe451b956cf55` · SHA-256 `e4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Capability.Scope

/-!
# Scope-confined respect evidence

Respect records exact post-authorization performance counts.  It is evidence,
not a grant constructor.
-/

namespace Mathematics.Juris

open Mathematics.Capability

structure RespectEvidence where
  participant : PrincipalId
  scope : OperationalCapability
  eligible : Nat
  scopeConformant : Nat
  replayStable : Nat
  boundaryFaithful : Nat
  challengeSurvived : Nat
  correctionsCompleted : Nat
  violations : Nat
  evidenceDigest : Digest

def RespectEvidence.AppliesTo
    (evidence : RespectEvidence)
    (scope : OperationalCapability) : Prop :=
  evidence.scope = scope

def RespectEvidence.impliesTrust
    (_ : RespectEvidence) : Bool :=
  false

@[simp] theorem trust_not_implied_by_respect
    (evidence : RespectEvidence) :
    evidence.impliesTrust = false :=
  rfl

theorem respect_is_scope_bound
    (evidence : RespectEvidence)
    (otherScope : OperationalCapability)
    (different : evidence.scope ≠ otherScope) :
    ¬ evidence.AppliesTo otherScope := by
  exact different

end Mathematics.Juris
```
