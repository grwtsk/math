# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Respect.Variant7f6422d47a567aca86403810c85814616ad03f80e117133ecdc2836892e74038

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43c352018ba4ef1a23828489ae2ff607c7250d26",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variant7f6422d47a567aca86403810c85814616ad03f80e117133ecdc2836892e74038.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variant7f6422d47a567aca86403810c85814616ad03f80e117133ecdc2836892e74038.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variant7f6422d47a567aca86403810c85814616ad03f80e117133ecdc2836892e74038.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43c352018ba4ef1a23828489ae2ff607c7250d26`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variant7f6422d47a567aca86403810c85814616ad03f80e117133ecdc2836892e74038.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variant7f6422d47a567aca86403810c85814616ad03f80e117133ecdc2836892e74038.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Capability.Scope` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RespectEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variant7f6422d47a567aca86403810c85814616ad03f80e117133ecdc2836892e74038.lean/declarations/respectevidence--e3e72383cd6afa26c4a48d15.md) | 22 | `declaration-track:e3e72383cd6afa26c4a48d150ffec855c8f06e1026f72dce7f04884346b28690` |
| 2 | `def` | [RespectEvidence.AppliesTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variant7f6422d47a567aca86403810c85814616ad03f80e117133ecdc2836892e74038.lean/declarations/respectevidence-appliesto--5d6fd563f7be7640e84dfc15.md) | 34 | `declaration-track:5d6fd563f7be7640e84dfc15d0f9fa5d4121e03e17369eba0bc2a672566e222b` |
| 3 | `def` | [RespectEvidence.impliesTrust](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variant7f6422d47a567aca86403810c85814616ad03f80e117133ecdc2836892e74038.lean/declarations/respectevidence-impliestrust--25e826328cec3f8b9a01e479.md) | 39 | `declaration-track:25e826328cec3f8b9a01e47966133d5e28998afcc2ff2f9c61c2383de1119635` |
| 4 | `theorem` | [trust_not_implied_by_respect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variant7f6422d47a567aca86403810c85814616ad03f80e117133ecdc2836892e74038.lean/declarations/trust-not-implied-by-respect--2df288debe19ee6e5d79078d.md) | 43 | `result-track:2df288debe19ee6e5d79078da09595daafc9d0e737d2ff53394c9d755adaa07d` |
| 5 | `theorem` | [respect_is_scope_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Respect/Variant7f6422d47a567aca86403810c85814616ad03f80e117133ecdc2836892e74038.lean/declarations/respect-is-scope-bound--fe0aa614df469fd085cdbf82.md) | 48 | `result-track:fe0aa614df469fd085cdbf82d6fefcf0c6f996b0ed1ceea8e7f097656a77dcdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
