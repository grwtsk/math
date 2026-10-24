# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Partition.Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc4283d0475faff073fc09fb1096d0ee591bad13",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc4283d0475faff073fc09fb1096d0ee591bad13`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Composition` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Partition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/declarations/partition--e98bf61303e4d89cf26f84fc.md) | 64 | `declaration-track:e98bf61303e4d89cf26f84fce9f74d1b95bfc65ef33d561fc4a562dc94b61e66` |
| 2 | `instance` | [decidableEqParition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/declarations/decidableeqparition--8f11775311d3f0f960deec1d.md) | 77 | `declaration-track:8f11775311d3f0f960deec1d6703d56fbde4ad0f083881a059f9facbd77c8a98` |
| 3 | `def` | [ofComposition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/declarations/ofcomposition--1cfafec4b9c6f6333ff4b650.md) | 81 | `declaration-track:1cfafec4b9c6f6333ff4b650b5e9c535398d02e5a2741c3d4819b9969d29de6e` |
| 4 | `theorem` | [ofComposition_surj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/declarations/ofcomposition-surj--ceaecd78c05690e4868b1606.md) | 88 | `result-track:ceaecd78c05690e4868b1606844ae3de4d19f963f061019d75dc836fc7949f0d` |
| 5 | `def` | [ofSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/declarations/ofsums--8eccd04b05b128eda91079b7.md) | 100 | `declaration-track:8eccd04b05b128eda91079b77ac30ea11c0e9ad67077ef9486ad3bf642ef032d` |
| 6 | `def` | [ofMultiset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/declarations/ofmultiset--1c98ccf3ceeb9051c67165f3.md) | 114 | `declaration-track:1c98ccf3ceeb9051c67165f3252c32d1da9e35db7b1be5856be0afde1ea6fc61` |
| 7 | `def` | [indiscretePartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/declarations/indiscretepartition--2add4c9c2475bc0128f1cc7c.md) | 119 | `declaration-track:2add4c9c2475bc0128f1cc7c02a14d603f8d91f6172db009ecdad6491457be05` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/declarations/instance--7d433a477a2153d361ac50c3.md) | 123 | `declaration-track:7d433a477a2153d361ac50c381e014591363d8739256d9e835e44ddabe4b5f09` |
| 9 | `theorem` | [count_ofSums_of_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/declarations/count-ofsums-of-ne-zero--7e3fb8c6ee96ef1ecdf4b302.md) | 131 | `result-track:7e3fb8c6ee96ef1ecdf4b3029880694552b4fff24ac879a6a92ca4272ea16cf3` |
| 10 | `theorem` | [count_ofSums_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/declarations/count-ofsums-zero--2623d4b692a2e447a4cadefa.md) | 136 | `result-track:2623d4b692a2e447a4cadefa250430affd12b9a4f64c48b6bfa84a754406ec6a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/declarations/instance--f4b97577ce6281d3a44c6922.md) | 144 | `declaration-track:f4b97577ce6281d3a44c6922d90964ce26641b3917cfc5e15c6800527b875326` |
| 12 | `def` | [odds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/declarations/odds--49f30446291f2c7a9aac5439.md) | 148 | `declaration-track:49f30446291f2c7a9aac54392143511a4d09babce4c6a6f860d80af666db1549` |
| 13 | `def` | [distincts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/declarations/distincts--269794b0e36161b55b38533c.md) | 153 | `declaration-track:269794b0e36161b55b38533c9cd67b0069e83cf14fb59ddee5e736cca564cc76` |
| 14 | `def` | [oddDistincts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/declarations/odddistincts--0b1a8990b72bce00d67e0acd.md) | 158 | `declaration-track:0b1a8990b72bce00d67e0acda4879d8375828d7790a60d2b31c171115493f7e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
