# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.GcdClassTransport.Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34d4f4f159ea1e60c3206c2f8dd6850030546af6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34d4f4f159ea1e60c3206c2f8dd6850030546af6`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusRatio` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coprimePairs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/declarations/coprimepairs--f09e99d0b0e00bcffb72e60d.md) | 13 | `declaration-track:f09e99d0b0e00bcffb72e60d03fa0d7166304d16997dae31ca6cd5130551ac53` |
| 2 | `def` | [gcdClasses](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/declarations/gcdclasses--5a3dbd91bf6891de5721a411.md) | 16 | `declaration-track:5a3dbd91bf6891de5721a411880ededd90e764cd5b76f2035993755f9f5d33d8` |
| 3 | `def` | [splitPair](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/declarations/splitpair--2640b58d1c6d62b6ac1ee835.md) | 19 | `declaration-track:2640b58d1c6d62b6ac1ee83509323014c0211f675acf22786babc2bc7b6da88b` |
| 4 | `def` | [joinClass](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/declarations/joinclass--4384d54bfe75c6e7cd83060b.md) | 22 | `declaration-track:4384d54bfe75c6e7cd83060b57d98053537211134d21688cc1a119187e3bf615` |
| 5 | `theorem` | [splitPair_mem](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/declarations/splitpair-mem--cb5588cd7c6763ad25030051.md) | 25 | `result-track:cb5588cd7c6763ad25030051ce1e9fc3d25c531a4530ff1ec16922f809928115` |
| 6 | `theorem` | [joinClass_mem](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/declarations/joinclass-mem--563e34f928057cb6b001b719.md) | 52 | `result-track:563e34f928057cb6b001b7199535f135209ca76c2feadb7edfcb9dc588839302` |
| 7 | `theorem` | [joinClass_splitPair](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/declarations/joinclass-splitpair--998be2ef6c7a4dc9608ff0c8.md) | 68 | `result-track:998be2ef6c7a4dc9608ff0c8ac106e323336554dc99f7b5024b89934bbcfccba` |
| 8 | `theorem` | [splitPair_joinClass](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/declarations/splitpair-joinclass--98daae3d06abda8fb886156e.md) | 73 | `result-track:98daae3d06abda8fb886156e1ce4bef34081aa0469cb7c05910b573039fecfbd` |
| 9 | `theorem` | [sum_eq_coprime_classes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/declarations/sum-eq-coprime-classes--09aa8b118e394b242b99a489.md) | 83 | `result-track:09aa8b118e394b242b99a489e679667d1a8361e03cd573fd3449f659c936510a` |
| 10 | `theorem` | [moebius_weighted_sum_eq_coprime_classes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/declarations/moebius-weighted-sum-eq-coprime-classes--9fb225468c4740764c5974d7.md) | 99 | `result-track:9fb225468c4740764c5974d740d98d36b8a3178dad7fc1dd868877b36b5baaea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
