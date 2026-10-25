# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BetaFixtures.Variant573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c964fd0aa930303a64419669a8771c0c92cd846` · SHA-256 `573938ea881dca6914c74a758df22dbc4793bc91a0ae56001ba7612597fc28d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.TypeTheory.PureTypeSystem.IntendedPTS
import FormalResearch.TypeTheory.PureTypeSystem.BetaNormalizer
import FormalResearch.MathematicalTooling.Reduction.Fixtures

/-!
Actual annotated beta controls: a typed redex in a nonempty context, reduction
under a typed lambda, annotation and product positions, and the raw omega loop.
The loop control prevents treating termination of all raw syntax as a premise.
Human research direction and evaluation: grwtsk contributors.
Formal construction and pinned replay: Codex.
-/

namespace FormalResearch.TypeTheory.BetaReduction

open OAI.PureTypeSystem
open FormalResearch.TypeTheory.IntendedPTS

/-- Actual source identity application, with one permitted beta contraction. -/
def identityRedex : Expr Bool := .app (.lam (.sort false) (.var 0)) (.var 0)

/-- The complete list detects the actual root redex. -/
theorem identity_next : next identityRedex = [.var 0] := rfl

/-- Sufficient fuel computes the actual normalized source variable. -/
theorem identity_normalizes : normalizeFuel 1 identityRedex = some (.var 0) := rfl

/-- Insufficient fuel reports failure, rather than silently declaring a redex normal. -/
theorem identity_zero_fuel : normalizeFuel 0 identityRedex = none := rfl

/-- This redex is actually legal and typed in the intended nonempty source context. -/
theorem identity_source_typing :
    HasType monomorphicArrow [.sort false] identityRedex (.sort false) :=
  identity_application_has_type

/-- A typed closed lambda has actual source reduction in its body. -/
theorem body_redex_typing :
    HasType monomorphicArrow [] (.lam (.sort false) identityRedex)
      (.pi (.sort false) (.sort false)) :=
  .abstraction identity_application_has_type
    (.product base_has_type (.weaken base_has_type base_has_type) ⟨rfl, rfl, rfl⟩)

/-- The executable strategy contracts under that actual typed lambda. -/
theorem body_normalizes :
    normalizeFuel 1 (.lam (.sort false) identityRedex) =
      some (.lam (.sort false) (.var 0)) := rfl

/-- Raw annotated syntax must enumerate annotation redexes as well as body redexes. -/
theorem annotation_next :
    next (.lam identityRedex (.var 0)) = [.lam (.var 0) (.var 0)] := rfl

/-- Every product-domain position is included in the actual complete beta list. -/
theorem product_domain_next :
    next (.pi identityRedex (.sort false)) = [.pi (.var 0) (.sort false)] := rfl

/-- Every product-codomain position is included in the actual complete beta list. -/
theorem product_codomain_next :
    next (.pi (.sort false) identityRedex) = [.pi (.sort false) (.var 0)] := rfl

/-- The genuine raw source self-application loop is outside the supported typing instance. -/
def omegaFunction : Expr Bool := .lam (.sort false) (.app (.var 0) (.var 0))

/-- The raw annotated beta relation itself is not globally terminating. -/
def omegaTerm : Expr Bool := .app omegaFunction omegaFunction

/-- Actual source substitution realizes the erased-loop hostile control. -/
theorem omega_self_step : Beta omegaTerm omegaTerm := .head _ _ _

/-- An accessibility hypothesis cannot be supplied for arbitrary raw annotated syntax. -/
theorem omega_not_strongly_normalizing : ¬StronglyNormalizing omegaTerm :=
  FormalResearch.MathematicalTooling.Reduction.not_strongly_normalizing_of_self_step omega_self_step

/-- Executable finite fuel always reports failure on this genuine source loop. -/
theorem omega_fuel_failure (fuel : ℕ) : normalizeFuel fuel omegaTerm = none := by
  induction fuel with
  | zero => rfl
  | succ fuel ih => exact ih

end FormalResearch.TypeTheory.BetaReduction
```
