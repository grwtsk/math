# Complete source: GRWTSK.Algebra.GroupTheory.Reflection.Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8786faebf42e97cf8f1260a04f3728a65d2e2590` · SHA-256 `f4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.Ownership
import Surface.ContinuousAssurance.Transformation
import Mathlib.Algebra.Group.Defs
import Mathlib.Data.Int.Basic

/-!
# Certified finite-world reflection

A reflection is accepted only together with its interpretation and a checked
involution law.  For additive state spaces the defect is `x - J x`; for a
nonadditive state space callers must provide a typed comparison object.  Zero
defect is a symmetry fact, not a proof certificate for an unrelated claim.
-/

namespace Surface.ContinuousAssurance.WorldModel

/-- The declared semantic meaning of a reflection. -/
inductive ReflectionInterpretation
  | claimCounterclaim
  | theoryDual
  | declarationSemanticReconstruction
  | globalLocalRestriction
  | forwardReverseTranslation
  | proofReplay
  | constructionObstruction
  | independentReconstruction
  deriving DecidableEq, Repr

/-- A reflection whose involution law is part of its checked interface. -/
structure CertifiedWorldReflection (State : Type*) where
  identity : ArtifactIdentity
  reflect : State → State
  involutive : Function.Involutive reflect
  interpretation : ReflectionInterpretation
  checkerOwner : Project
  checkerIndependent : Prop

namespace CertifiedWorldReflection

variable {State : Type*}

/-- The certified reflection satisfies `J² = I`. -/
@[simp]
theorem reflect_reflect
    (J : CertifiedWorldReflection State)
    (state : State) :
    J.reflect (J.reflect state) = state :=
  J.involutive state

end CertifiedWorldReflection

/-- An additive reflection also preserves zero and addition. -/
structure AdditiveWorldReflection (State : Type*) [AddGroup State]
    extends CertifiedWorldReflection State where
  map_zero : reflect 0 = 0
  map_add : ∀ x y, reflect (x + y) = reflect x + reflect y

/-- The additive reflection defect `x - J x`. -/
def reflectionDefect
    {State : Type*} [AddGroup State]
    (J : AdditiveWorldReflection State)
    (state : State) : State :=
  state - J.reflect state

/-- A fixed state has zero reflection defect. -/
@[simp]
theorem reflectionDefect_eq_zero_of_fixed
    {State : Type*} [AddGroup State]
    (J : AdditiveWorldReflection State)
    {state : State}
    (fixed : J.reflect state = state) :
    reflectionDefect J state = 0 := by
  simp [reflectionDefect, fixed]

/-- A typed comparison replaces subtraction on a nonadditive state space. -/
structure ReflectionComparison (State Comparison : Type*) where
  left : State
  right : State
  compare : State → State → Comparison
  value : Comparison
  value_eq : value = compare left right

/-- Build the declared comparison between a state and its reflection. -/
def reflectionComparison
    {State Comparison : Type*}
    (J : CertifiedWorldReflection State)
    (compare : State → State → Comparison)
    (state : State) : ReflectionComparison State Comparison where
  left := state
  right := J.reflect state
  compare := compare
  value := compare state (J.reflect state)
  value_eq := rfl

/-- A certificate is pinned to the exact reflection implementation identity. -/
structure ReflectionCertificate (State : Type*) where
  reflectionIdentity : ArtifactIdentity
  state : State
  evidence : ArtifactIdentity

/-- Exact identity matching for a reflection certificate. -/
def ReflectionCertificate.ValidFor
    {State : Type*}
    (certificate : ReflectionCertificate State)
    (J : CertifiedWorldReflection State) : Prop :=
  certificate.reflectionIdentity = J.identity

/-- Changing the reflection identity rejects an old certificate. -/
theorem reflection_version_change_rejects_stale_certificate
    {State : Type*}
    (certificate : ReflectionCertificate State)
    (J : CertifiedWorldReflection State)
    (changed : certificate.reflectionIdentity ≠ J.identity) :
    ¬ certificate.ValidFor J :=
  changed

/-- Zero algebraic defect cannot uniformly manufacture arbitrary proofs. -/
theorem zero_reflection_defect_has_no_uniform_proof_eliminator :
    ¬ (∀ proposition : Prop, (0 : ℤ) = 0 → proposition) := by
  intro eliminate
  exact eliminate False rfl

end Surface.ContinuousAssurance.WorldModel
```
