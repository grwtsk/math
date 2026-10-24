# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GlobalProjection.Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8814ed11440136d34385df535071112a8a86c374",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8814ed11440136d34385df535071112a8a86c374`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.GaloisField` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/matrixlocus--60fc7191deec0f00a25f0bce.md) | 14 | `declaration-track:60fc7191deec0f00a25f0bce17e502284c10dd8856da089527d431e274934bc6` |
| 2 | `def` | [rowEmbed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/rowembed--c54d92f84b4607ac34225e85.md) | 24 | `declaration-track:c54d92f84b4607ac34225e853873972113383bce4931ff13fd147b84d843970a` |
| 3 | `def` | [columnEmbed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/columnembed--92fc37306da2c186c43bfb1a.md) | 28 | `declaration-track:92fc37306da2c186c43bfb1a358c36c5cb279fe6177db3101a16449c26cc8fee` |
| 4 | `theorem` | [rowEmbed_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/rowembed-mem--77b696b84b1631959ee47b7b.md) | 32 | `result-track:77b696b84b1631959ee47b7b3cf44b00009e46f952e227cc5505cf9a5c9c4d28` |
| 5 | `theorem` | [columnEmbed_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/columnembed-mem--4ea841a9f93cc41035e92f31.md) | 37 | `result-track:4ea841a9f93cc41035e92f3158c466733889a18947ec6a1a378bb7add4f4cdea` |
| 6 | `theorem` | [rowEmbed_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/rowembed-injective--f81991669bfc650b416052dd.md) | 41 | `result-track:f81991669bfc650b416052dda2caa6f7b882b7721b3d3997ed8aca6330709b80` |
| 7 | `theorem` | [columnEmbed_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/columnembed-injective--11d662f614db5f5e7617869e.md) | 45 | `result-track:11d662f614db5f5e7617869ec827bb61a6d6428432bbf2238a4230a05e4af4ae` |
| 8 | `def` | [localRow?](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/localrow--5b7f4dc0db0b733c0f86f2a9.md) | 50 | `declaration-track:5b7f4dc0db0b733c0f86f2a9e8ff9a407b4bc7f6a7da2a626c62ea6f2158b4cd` |
| 9 | `def` | [localColumn?](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/localcolumn--0a6691be1b0a1dc0bd9ae5a3.md) | 57 | `declaration-track:0a6691be1b0a1dc0bd9ae5a3db5309403763d0fca6a12787292f3a8fb6925dfb` |
| 10 | `theorem` | [localRow?_rowEmbed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/localrow-rowembed--c9b260f7555c611a59f25c9b.md) | 65 | `result-track:c9b260f7555c611a59f25c9bafc46ecd604c2654dd0a88eec3912f572beeb8ac` |
| 11 | `theorem` | [localColumn?_columnEmbed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/localcolumn-columnembed--ca10274e44d8a50343762516.md) | 77 | `result-track:ca10274e44d8a503437625163a3fb592f8f2e7f585c3cfd04cfe337a507dfece` |
| 12 | `theorem` | [localRow?_eq_none_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/localrow-eq-none-iff--7ee485ee278646998d73f8ed.md) | 89 | `result-track:7ee485ee278646998d73f8eded76d55ac12ec66f0cd7e00d87c06af1c763c4a9` |
| 13 | `theorem` | [localColumn?_eq_none_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/localcolumn-eq-none-iff--ada549545d8c5e8395d672bf.md) | 93 | `result-track:ada549545d8c5e8395d672bf3edda084b99daa172057e51799a14a568127b734` |
| 14 | `theorem` | [localRow?_eq_some_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/localrow-eq-some-iff--9acdc69720bad4da2eabfaed.md) | 97 | `result-track:9acdc69720bad4da2eabfaedcdc45d36904da22ad421ae656ac29481af811432` |
| 15 | `theorem` | [localColumn?_eq_some_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/localcolumn-eq-some-iff--443daffe50e21bc4a5846042.md) | 112 | `result-track:443daffe50e21bc4a58460429d236a3c86ba0619fd272411fb612cb6abfdb04c` |
| 16 | `theorem` | [rowEmbed_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/rowembed-range--a95effa40236df7dd3b36efa.md) | 127 | `result-track:a95effa40236df7dd3b36efa7ba84f27a6fdafd97be5ea48f12f316e41e68ad6` |
| 17 | `theorem` | [columnEmbed_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/columnembed-range--57131b1141a62b13e1336c37.md) | 131 | `result-track:57131b1141a62b13e1336c379b60e8c2c6728ee9c75f484d67b0967eeea16383` |
| 18 | `def` | [coordinateOfOffset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/coordinateofoffset--831bf151dc5461ada86c20f6.md) | 138 | `declaration-track:831bf151dc5461ada86c20f6522ebc55173a7585e18c5c1231f1f2611f5446b1` |
| 19 | `theorem` | [coordinateOfOffset_flatIdx](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/coordinateofoffset-flatidx--882c8300fbaf01278397d388.md) | 143 | `result-track:882c8300fbaf01278397d388c5c86b6d7477919072b47bb8449016af3c922eb4` |
| 20 | `def` | [rowMajorOffsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/rowmajoroffsets--cc09548570bcd92d0e4d871a.md) | 154 | `declaration-track:cc09548570bcd92d0e4d871a1789bde07ea8185a201bd083854ddeb572a8a1ac` |
| 21 | `theorem` | [mem_rowMajorOffsets_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/mem-rowmajoroffsets-iff--4310e261aef72df63690c96e.md) | 159 | `result-track:4310e261aef72df63690c96ea74d60796e1fe60d2cb077cac1eb8181dcdb29a9` |
| 22 | `theorem` | [flatIdx_mem_rowMajorOffsets_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant04ecdef91c09cd8665826fe2f0ee1334b7d65ccf8b200fb9cb60ead26b061d8b.lean/declarations/flatidx-mem-rowmajoroffsets-iff--321b732652363d9abf944d70.md) | 167 | `result-track:321b732652363d9abf944d70d98a3322221df2861c185fca2db3eae2b6dd925b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
