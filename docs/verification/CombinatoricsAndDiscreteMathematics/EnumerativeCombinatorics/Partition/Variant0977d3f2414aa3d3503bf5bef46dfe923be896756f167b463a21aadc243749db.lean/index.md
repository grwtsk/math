# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Partition.Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3362ad7cb365b0c72c31cea0717e8ced5d7ab98",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3362ad7cb365b0c72c31cea0717e8ced5d7ab98`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Enumerative.Composition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Partition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/partition--308106367f28497a6809a836.md) | 52 | `declaration-track:308106367f28497a6809a836dffab74c05bd5f7d6acb863672f4b14addab5474` |
| 2 | `instance` | [decidableEqPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/decidableeqpartition--8cfde8d00b6bcf7f08190d04.md) | 64 | `declaration-track:8cfde8d00b6bcf7f08190d04bca9f752abaf642ea9a0b007fee6f6b4bf9cfd4a` |
| 3 | `def` | [ofComposition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/ofcomposition--09f8f2a933d4debc7c420b4d.md) | 69 | `declaration-track:09f8f2a933d4debc7c420b4de3a0a58dc07af99687f6682eb00dc562eebe5a51` |
| 4 | `theorem` | [ofComposition_surj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/ofcomposition-surj--41d168cff7ff681dce2c2453.md) | 74 | `result-track:41d168cff7ff681dce2c24539aad08df6a6943d0854406c3323ddba7e64e924b` |
| 5 | `def` | [ofSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/ofsums--d3d028609cf7b70b3bca6f28.md) | 85 | `declaration-track:d3d028609cf7b70b3bca6f28ba1d08f24233f904e8af810bc1933a01cffbf2dd` |
| 6 | `def` | [ofMultiset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/ofmultiset--dda0717a4adb280737bd67aa.md) | 94 | `declaration-track:dda0717a4adb280737bd67aa76442cd13c7a4a26c74a63c1a36725e6c18eb319` |
| 7 | `def` | [ofSym](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/ofsym--898212d5085468c947dbbf6f.md) | 97 | `declaration-track:898212d5085468c947dbbf6f03502fd292f32f1cf260a37c09aeffa4a49a4521` |
| 8 | `lemma` | [ofSym_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/ofsym-map--fe6f54419ca2dde8303e0826.md) | 107 | `result-track:fe6f54419ca2dde8303e082635f49a2e769be24eff83d451644f99a77a863822` |
| 9 | `def` | [ofSymShapeEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/ofsymshapeequiv--601b34147dbde364cac508f1.md) | 117 | `declaration-track:601b34147dbde364cac508f195577b551457c2e516d8a3196bf1ff8e280c2aef` |
| 10 | `def` | [indiscrete](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/indiscrete--1898e629a7e686791b917fa6.md) | 125 | `declaration-track:1898e629a7e686791b917fa697ae9ff91ed3da3a22d55de470527d198f20d814` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/instance--efbe6fa7959868c5b9ced275.md) | 127 | `declaration-track:efbe6fa7959868c5b9ced2755596e87b359dbab81d554aa37323180724801c52` |
| 12 | `lemma` | [indiscrete_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/indiscrete-parts--230f75201544c47fe436aedd.md) | 129 | `result-track:230f75201544c47fe436aedd8a090edec0b3b5489f5e177d35ec26001bd3d68c` |
| 13 | `lemma` | [partition_zero_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/partition-zero-parts--fda4ba25ee6546a1504ef63a.md) | 132 | `result-track:fda4ba25ee6546a1504ef63a9580866203052ec5c6527710e32015bd5bed42e4` |
| 14 | `instance` | [UniquePartitionZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/uniquepartitionzero--1fdbe93128fbece8f4f8e202.md) | 135 | `declaration-track:1fdbe93128fbece8f4f8e20206329d5edd036df7839ce9d698dd6f24cee6c120` |
| 15 | `lemma` | [partition_one_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/partition-one-parts--e70094e237d93f370cdffd38.md) | 138 | `result-track:e70094e237d93f370cdffd38f6e9fd25178d56ed98cbbe9de192576a9140f735` |
| 16 | `instance` | [UniquePartitionOne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/uniquepartitionone--65ad182052d1241873409ef1.md) | 144 | `declaration-track:65ad182052d1241873409ef13d55fb9785ef5d55010e748a89ef2f31c100458e` |
| 17 | `lemma` | [ofSym_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/ofsym-one--fd77ae11163f04d8afebb6c4.md) | 147 | `result-track:fd77ae11163f04d8afebb6c4686dec7c9e58ea4fdcce67713687ebf63c84e97f` |
| 18 | `theorem` | [count_ofSums_of_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/count-ofsums-of-ne-zero--bd5e62d9fe665d92cefb9fe8.md) | 155 | `result-track:bd5e62d9fe665d92cefb9fe8b2fab39445055adf7abb9ffec054de74efc2b067` |
| 19 | `theorem` | [count_ofSums_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/count-ofsums-zero--8e6709c38356ddd544823d23.md) | 159 | `result-track:8e6709c38356ddd544823d23f7cea942174b81227770a5dbda946508bf05842b` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/instance--161f46ba2966fcea6a613bfd.md) | 166 | `declaration-track:161f46ba2966fcea6a613bfd23503248b12dde6b56571a739322349747cf71ea` |
| 21 | `def` | [odds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/odds--c4748ccc7022f5a4d7263c80.md) | 170 | `declaration-track:c4748ccc7022f5a4d7263c80b17321a8d8173c37016f84a6d7a9d190a7e64a0d` |
| 22 | `def` | [distincts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/distincts--71bf8fa198c1082668876d1c.md) | 174 | `declaration-track:71bf8fa198c1082668876d1ced79c2db9ad85b97fa1a55266ea2b2581a8acf93` |
| 23 | `def` | [oddDistincts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant0977d3f2414aa3d3503bf5bef46dfe923be896756f167b463a21aadc243749db.lean/declarations/odddistincts--83515ef488cda09c32974781.md) | 178 | `declaration-track:83515ef488cda09c32974781010db9dd75b373b4617389bf01bcc2c302b07a44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
