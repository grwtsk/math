# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Finiteness.Variant68525da5f3f59b7c01086df93089fa1ef5f8128673fd1a4710a7f33a2361add4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b07ed4b0e28565c7c4227830e630910657fe7ab2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant68525da5f3f59b7c01086df93089fa1ef5f8128673fd1a4710a7f33a2361add4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant68525da5f3f59b7c01086df93089fa1ef5f8128673fd1a4710a7f33a2361add4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant68525da5f3f59b7c01086df93089fa1ef5f8128673fd1a4710a7f33a2361add4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b07ed4b0e28565c7c4227830e630910657fe7ab2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant68525da5f3f59b7c01086df93089fa1ef5f8128673fd1a4710a7f33a2361add4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant68525da5f3f59b7c01086df93089fa1ef5f8128673fd1a4710a7f33a2361add4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Colimit.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fgSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant68525da5f3f59b7c01086df93089fa1ef5f8128673fd1a4710a7f33a2361add4.lean/declarations/fgsystem--00aa8e55d7a7055d366516d5.md) | 35 | `declaration-track:00aa8e55d7a7055d366516d5f5e2c3a575268542f45e236f8da122010746e406` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant68525da5f3f59b7c01086df93089fa1ef5f8128673fd1a4710a7f33a2361add4.lean/declarations/instance--c2e03d69d1a5cc33f9d80015.md) | 42 | `declaration-track:c2e03d69d1a5cc33f9d80015efe342fb59f432e4d70d4f99c0a112218a24d6e2` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant68525da5f3f59b7c01086df93089fa1ef5f8128673fd1a4710a7f33a2361add4.lean/declarations/instance--d16f4a1ecfc6b2a3964c7c63.md) | 46 | `declaration-track:d16f4a1ecfc6b2a3964c7c6364909874bcbdb41b8e68b28db743113a198beaa8` |
| 4 | `def` | [equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant68525da5f3f59b7c01086df93089fa1ef5f8128673fd1a4710a7f33a2361add4.lean/declarations/equiv--22405306fc8d9cbd4aec4942.md) | 54 | `declaration-track:22405306fc8d9cbd4aec494261eb3cd3b1a7a48e212a80b5f7fdba8f54dec099` |
| 5 | `lemma` | [equiv_comp_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant68525da5f3f59b7c01086df93089fa1ef5f8128673fd1a4710a7f33a2361add4.lean/declarations/equiv-comp-of--a59f19579cbab66bc2609427.md) | 61 | `result-track:a59f19579cbab66bc26094271571a24e76af7511395c548c64a03fcf462c8587` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
