# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fold.Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d0222d68739f9278dc94c859921f9f781f7afc5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d0222d68739f9278dc94c859921f9f781f7afc5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Dedup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.MinMax` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/fold--4a5bbcbcf2525830917de75d.md) | 39 | `declaration-track:4a5bbcbcf2525830917de75d4ba5383a346280b25ff91e93274f0cecda7a7a2b` |
| 2 | `theorem` | [fold_eq_foldr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/fold-eq-foldr--5651e42a400654a4b771b9c9.md) | 43 | `result-track:5651e42a400654a4b771b9c9f6b3602342f54d27be9af3e36ad7e74847771520` |
| 3 | `theorem` | [coe_fold_r](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/coe-fold-r--20cdbb775f69c3966df28aec.md) | 49 | `result-track:20cdbb775f69c3966df28aeca25f0a241b2cbc663ce9f482563e24dc95a71c2f` |
| 4 | `theorem` | [coe_fold_l](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/coe-fold-l--b0dc4ab80b10063ca4dd3427.md) | 53 | `result-track:b0dc4ab80b10063ca4dd3427a5f7b8a2e78d6d369ca4fe78a80e62f1d17d58d0` |
| 5 | `theorem` | [fold_eq_foldl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/fold-eq-foldl--690764ffea6a031251ebe464.md) | 57 | `result-track:690764ffea6a031251ebe4643915c05cab578520bbf9888d5ffe2991eb98eba2` |
| 6 | `theorem` | [fold_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/fold-zero--f26e0aec095676ad1614de6d.md) | 63 | `result-track:f26e0aec095676ad1614de6dbfbcfbe57f88dc3eade37c3ae79701dd4ca65013` |
| 7 | `theorem` | [fold_cons_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/fold-cons-left--f091aacb789f9257cc7094aa.md) | 68 | `result-track:f091aacb789f9257cc7094aa05c7edf49880e954b114cb866f2906a0467427b2` |
| 8 | `theorem` | [fold_cons_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/fold-cons-right--f7e85829ea8725c061a01c83.md) | 72 | `result-track:f7e85829ea8725c061a01c833944cd728b38272775673e6cdeecb9a3ef61f28b` |
| 9 | `theorem` | [fold_cons'_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/fold-cons-right--1558da746e91da457cd88370.md) | 76 | `result-track:1558da746e91da457cd883704c9796cfa31075124ee6d836dcd1917d8c301601` |
| 10 | `theorem` | [fold_cons'_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/fold-cons-left--45c45ddfe6e398f4f0dbfc9d.md) | 80 | `result-track:45c45ddfe6e398f4f0dbfc9d58e26eee18367180330763d13e06b4111473bd23` |
| 11 | `theorem` | [fold_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/fold-add--e50b892d0a63831185d043a4.md) | 84 | `result-track:e50b892d0a63831185d043a4e9e256ccb99c6c0001be766c0d6419fe40aee2d6` |
| 12 | `theorem` | [fold_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/fold-bind--3480306dad5ac98c2f9a3276.md) | 91 | `result-track:3480306dad5ac98c2f9a3276801ef75fcee7368d0ed0c349808d99546c3c3d74` |
| 13 | `theorem` | [fold_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/fold-singleton--0d6ee19cc7e03cb3264687e2.md) | 99 | `result-track:0d6ee19cc7e03cb3264687e2c708a4d29e610a4ea2d5bf2f89458f4eeb1a79f5` |
| 14 | `theorem` | [fold_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/fold-distrib--a75bd068d9d4c0b7c820a9e3.md) | 103 | `result-track:a75bd068d9d4c0b7c820a9e3033764518aaaeb80380499249f94612dae43709f` |
| 15 | `theorem` | [fold_hom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/fold-hom--8a08777ef6a5b3139a03394c.md) | 111 | `result-track:8a08777ef6a5b3139a03394ccef915cf6aa21a0cd3e011e0426f6b3589893b45` |
| 16 | `theorem` | [fold_union_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/fold-union-inter--5ff3105f7b9af13032eb11cc.md) | 117 | `result-track:5ff3105f7b9af13032eb11cc16ad374768f50d08c96323cb82b1cc9f6b5830f8` |
| 17 | `theorem` | [fold_dedup_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/fold-dedup-idem--09aa9b4a9ec92e4d6338b74c.md) | 123 | `result-track:09aa9b4a9ec92e4d6338b74c84c8e44f7bd9bb320a459daf64ccc95a17962ecb` |
| 18 | `theorem` | [max_le_of_forall_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/max-le-of-forall-le--e6e327411cb54859db57b8cc.md) | 135 | `result-track:e6e327411cb54859db57b8cc251dc843362cf9df6d1cd963d0312fca212c717e` |
| 19 | `theorem` | [max_nat_le_of_forall_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/max-nat-le-of-forall-le--fe6a8bc49662439eb9e2f4a1.md) | 141 | `result-track:fe6a8bc49662439eb9e2f4a16236944a5a08e976ad9a62af42d6d0fcd008bb07` |
| 20 | `theorem` | [le_smul_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantc504e04bd1c80466b688f40b39c700de9b1a4855c858682ec5dc64923b2084d5.lean/declarations/le-smul-dedup--e8ffc70430b5d01b094464c8.md) | 149 | `result-track:e8ffc70430b5d01b094464c8fa423b2bc6379a587e1bc94939993e884cb0c9aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
