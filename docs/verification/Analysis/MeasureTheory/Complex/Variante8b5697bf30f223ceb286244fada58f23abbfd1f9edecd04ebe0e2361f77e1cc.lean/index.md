# Verification target: GRWTSK.Analysis.MeasureTheory.Complex.Variante8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89c578de4558a5fedf3916bd141a4ff0a8c6ecba",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Complex/Variante8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variante8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variante8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89c578de4558a5fedf3916bd141a4ff0a8c6ecba`.

Source path: `GRWTSK/Analysis/MeasureTheory/Complex/Variante8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Complex/Variante8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variante8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc.lean/declarations/instance--df789a03a247357897fbdb23.md) | 14 | `declaration-track:df789a03a247357897fbdb238a7a6144a976b8725f85eaf70adfaa73bf299ec3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variante8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc.lean/declarations/instance--57bd699945ddc1d69b3fc9c9.md) | 17 | `declaration-track:57bd699945ddc1d69b3fc9c98e03c3e1f2e6fcc224afe3a6598f49dc7d327766` |
| 3 | `instance` | [Complex.measurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variante8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc.lean/declarations/complex-measurablespace--4a0e73c91707957a05ad7dd0.md) | 20 | `declaration-track:4a0e73c91707957a05ad7dd0ecfb1c0307634f4576bf116777c45f308c901c58` |
| 4 | `instance` | [Complex.borelSpace](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variante8b5697bf30f223ceb286244fada58f23abbfd1f9edecd04ebe0e2361f77e1cc.lean/declarations/complex-borelspace--c03a614efc64693b2d63d4b9.md) | 23 | `declaration-track:c03a614efc64693b2d63d4b9e0bc3135c664f3f217123a05892cb1bdd092d67f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
