# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Reflection.Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a2df7bc9c08fa470bf5e4c812e3dd77de31a876",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a2df7bc9c08fa470bf5e4c812e3dd77de31a876`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Restrict` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Adjunction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adjRetractionAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean/declarations/adjretractionaux--29fa21489d62a20012562ffa.md) | 41 | `declaration-track:29fa21489d62a20012562ffa9bfc4834f751e33cce29e1fc0b55cc65c6662b00` |
| 2 | `def` | [adjRetraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean/declarations/adjretraction--6058e42272496f2fb92882b4.md) | 49 | `declaration-track:6058e42272496f2fb92882b4eb9e9cf73831404d7ab608245d8bc39f0c0d102b` |
| 3 | `lemma` | [adjRetraction_is_retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean/declarations/adjretraction-is-retraction--b39aea720bebef7e2dfb39db.md) | 54 | `result-track:b39aea720bebef7e2dfb39db1c7005996261682fb785f34abdf0ef9ca0bc89a0` |
| 4 | `theorem` | [isIso_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean/declarations/isiso-tfae--234ad2e8aea22137ce21ac79.md) | 84 | `result-track:234ad2e8aea22137ce21ac795c4d2a67cc3af27bb3f46c1464f2417cf377fa22` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean/declarations/instance--48b4bc50efb707126220f58b.md) | 199 | `declaration-track:48b4bc50efb707126220f58b1800575e69fa23ade185a170d8ca16a4df66493d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean/declarations/instance--eb44c5b59192d342ca361e37.md) | 205 | `declaration-track:eb44c5b59192d342ca361e3739798d638ea88688cf8546a7f6e3ed4847edab8e` |
| 7 | `def` | [closed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean/declarations/closed--31430b35ec98c6ae255f4ddd.md) | 212 | `declaration-track:31430b35ec98c6ae255f4dddfc353e3217b797b066534ec3ea2515761015a14d` |
| 8 | `def` | [monoidalClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean/declarations/monoidalclosed--05c8db75bd17647e6d6a65c7.md) | 231 | `declaration-track:05c8db75bd17647e6d6a65c755898f60fe0c308c46541025c090dd259a633dc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
