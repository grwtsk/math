# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Order.Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8bb944351b952a362bb1ec95dbce87418ef0794",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8bb944351b952a362bb1ec95dbce87418ef0794`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PartialBit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/partialbit--b6c8f7b856e11047aae9909c.md) | 24 | `declaration-track:b6c8f7b856e11047aae9909c5eaf6231502b1f225a7e7140b42653e3af9fb5f8` |
| 2 | `def` | [LE](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/le--9b5b56f5a3920c33a5887dab.md) | 32 | `declaration-track:9b5b56f5a3920c33a5887dab5aba68d7762bca4d088fdf85aafc7900cf6bd46f` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/instance--cadedfa0457a974463626efa.md) | 38 | `declaration-track:cadedfa0457a974463626efa594126b84b3b5426bacfeaad312bb921940b925d` |
| 4 | `theorem` | [unresolved_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/unresolved-le--30700a4c45c9a7d6c09e4c23.md) | 41 | `result-track:30700a4c45c9a7d6c09e4c23fddf74f3666ae297317d7f799e992fccbb11af09` |
| 5 | `theorem` | [zero_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/zero-le-iff--3c2223c57dd8f2101d7032c0.md) | 46 | `result-track:3c2223c57dd8f2101d7032c0d1a51796546968a5e757fbaec389a974cb9c60b6` |
| 6 | `theorem` | [one_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/one-le-iff--9cf686b84825887d3f2d0ec7.md) | 52 | `result-track:9cf686b84825887d3f2d0ec765adfc8a260e4736b5a66f9872d032bfe8f6e54c` |
| 7 | `theorem` | [le_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/le-refl--044257e847577eb4db7fccb5.md) | 58 | `result-track:044257e847577eb4db7fccb5b07a00b49943be175886bac1bb95171c84a0b3a1` |
| 8 | `theorem` | [le_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/le-trans--a6e18cca46f02dae08c148dc.md) | 62 | `result-track:a6e18cca46f02dae08c148dcaa4bf4e6d8fa0b9d2b621f6ac1d142ab51bc28fe` |
| 9 | `theorem` | [le_antisymm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/le-antisymm--f5dd9bf1bfeecc7c5dad0615.md) | 72 | `result-track:f5dd9bf1bfeecc7c5dad0615b83224099af1202dc56bdcee6480ab85d38a0653` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/instance--04a25156d3c882f15b445b14.md) | 81 | `declaration-track:04a25156d3c882f15b445b14e6eb62bdefe8c9f8dc394687dcdfd442c32172a3` |
| 11 | `def` | [ofBool](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/ofbool--a212e074eef460726c55df35.md) | 86 | `declaration-track:a212e074eef460726c55df35700387d9752b065a93b79b0f642a47897e1d3adf` |
| 12 | `def` | [isResolved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/isresolved--883578cdbff0e07aeb5fea15.md) | 90 | `declaration-track:883578cdbff0e07aeb5fea1549072236a150f7a6049a29271e5293bc45f84e5c` |
| 13 | `theorem` | [ofBool_ne_unresolved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/ofbool-ne-unresolved--307a1b0d81d44e72bd18b027.md) | 95 | `result-track:307a1b0d81d44e72bd18b02791d1fe3252fddf0e00634ffa222ab13bf2c6de15` |
| 14 | `theorem` | [partialBit_partialOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/partialbit-partialorder--151efbddde46bbd03b1f5320.md) | 102 | `result-track:151efbddde46bbd03b1f532057d28799bfe6b570099487bfeed80ba5a5f7a6a9` |
| 15 | `abbrev` | [PartialBitfield](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/partialbitfield--e5c6b90833d0e8e3406ccbe8.md) | 106 | `declaration-track:e5c6b90833d0e8e3406ccbe8a0d7bb45123929ab0c84822b79b34c87f9a798c0` |
| 16 | `abbrev` | [FullBitfield](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/fullbitfield--33eed1187667d4fc4fa31e84.md) | 109 | `declaration-track:33eed1187667d4fc4fa31e842dbed8dbe4f6cedaacc5af7a85e2e1909a31d201` |
| 17 | `def` | [Extends](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/extends--764c07f019c7ba7ddbf1cb4b.md) | 112 | `declaration-track:764c07f019c7ba7ddbf1cb4b369654bd803bfb46516177183607d31a567aaa0f` |
| 18 | `def` | [embedFull](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/embedfull--7f1ebe2733c89ee437c375f6.md) | 118 | `declaration-track:7f1ebe2733c89ee437c375f60152b41b016b990ddb0c4f76f7aca97ad2ac9b9a` |
| 19 | `def` | [ExtendsFull](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/extendsfull--6d03462e743a4dfd5b02ba4d.md) | 125 | `declaration-track:6d03462e743a4dfd5b02ba4d74fdfcf7f1b0ec6824f590ff8c2ffca42f91846b` |
| 20 | `def` | [resolvedSupport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/resolvedsupport--33d8be5fd18c8be92118ab06.md) | 131 | `declaration-track:33d8be5fd18c8be92118ab0685cdc30e36f4df4c58d0122a8ab7138852144ea7` |
| 21 | `def` | [IsFull](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/isfull--502f3fcc54baa1611656e0a8.md) | 139 | `declaration-track:502f3fcc54baa1611656e0a810a9d121568db936d0a4c2c1ab886a3fa6bd3bfa` |
| 22 | `theorem` | [extends_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/extends-refl--e4fcd4cc1d4909b442cfba5a.md) | 145 | `result-track:e4fcd4cc1d4909b442cfba5a97761425c04a43a2ac97cd913b22b7c865dcaeee` |
| 23 | `theorem` | [extends_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/extends-trans--697c4e33c3d55ff528367400.md) | 151 | `result-track:697c4e33c3d55ff5283674009c72f5df7f07d725637bab3aab2af51cff515544` |
| 24 | `theorem` | [resolvedSupport_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/resolvedsupport-mono--7e3c008ed38af129d3d110c9.md) | 162 | `result-track:7e3c008ed38af129d3d110c9d7c45731dad5b0bde418b037e91d4be131df1f4d` |
| 25 | `theorem` | [embedded_full_is_full](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/embedded-full-is-full--49c7214541aabf3cd3356cfa.md) | 182 | `result-track:49c7214541aabf3cd3356cfaa4c5ad93d071d09b7cb1fc203609056b509425eb` |
| 26 | `theorem` | [full_extension_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/full-extension-unique--dffc590a7c9f2d7936628a13.md) | 191 | `result-track:dffc590a7c9f2d7936628a13c0db9399839d010710861aafbb335d6280446a40` |
| 27 | `def` | [OneCoordinateResolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/onecoordinateresolution--145842c710c7dd221161018d.md) | 209 | `declaration-track:145842c710c7dd221161018ddaedc8f7830a57979dd80869f763f2a4b9416476` |
| 28 | `theorem` | [oneCoordinateResolution_extends](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/onecoordinateresolution-extends--72c9296d88d65ee6b9e6f030.md) | 219 | `result-track:72c9296d88d65ee6b9e6f03057160a9e178c13be4e29525fbd5b17aebea4c65a` |
| 29 | `theorem` | [oneCoordinateResolution_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/onecoordinateresolution-support--31a90d2bf2a215dfaa40de62.md) | 235 | `result-track:31a90d2bf2a215dfaa40de624b308ed1aa4e2413f19c9d06aa8d87d883f6e8b9` |
| 30 | `theorem` | [oneCoordinateResolution_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/onecoordinateresolution-card--e1d7e9d261e1e39d61fcb909.md) | 257 | `result-track:e1d7e9d261e1e39d61fcb90944cfa34ac949ab8000fd79925861a738eedb2cd7` |
| 31 | `theorem` | [oneCoordinateResolution_support_increment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/onecoordinateresolution-support-increment--1ec4d5aa60279a59ae90d04b.md) | 287 | `result-track:1ec4d5aa60279a59ae90d04b91418bd27a805e8a3d8affcdda4a3f6cf5892337` |
| 32 | `structure` | [CompleteBooleanSplit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/completebooleansplit--f6cbed718fbb8af7ec0c1303.md) | 296 | `declaration-track:f6cbed718fbb8af7ec0c13036c9ec040585295e8b26c10cc2640217f159a9be4` |
| 33 | `theorem` | [zero_resolves_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/zero-resolves-one--00d28d67bd6eb927d9f9b01e.md) | 318 | `result-track:00d28d67bd6eb927d9f9b01e4dc97f9fecf248b569f948b6f47518f8176ea294` |
| 34 | `theorem` | [one_resolves_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/one-resolves-one--9782b939a5ca00414d855db5.md) | 331 | `result-track:9782b939a5ca00414d855db5125e451fdf12908326c56653e9cf171906666797` |
| 35 | `theorem` | [siblings_equal_elsewhere](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/siblings-equal-elsewhere--a87ccb0bec2d36d5ceee5e6b.md) | 344 | `result-track:a87ccb0bec2d36d5ceee5e6bb13c5f25375cb34ccc8e4f69182bae5d324be953` |
| 36 | `theorem` | [siblings_differ_exactly_once](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/declarations/siblings-differ-exactly-once--39c4aaa9a564f7b80390194f.md) | 357 | `result-track:39c4aaa9a564f7b80390194fa4007920b1f91db978d3282afb2efb7645685178` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
