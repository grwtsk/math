# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DFinsupp.Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e5afb0f938fed13fd3d26bf217b7944b2ead5c3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e5afb0f938fed13fd3d26bf217b7944b2ead5c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Quotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dfinsupp_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean/declarations/dfinsupp-ext--34b1dc034c9a878d00725d26.md) | 48 | `result-track:34b1dc034c9a878d00725d26f3abb7abebef1901e94ee3f78e2ceb8463d9dd56` |
| 2 | `def` | [dfinsuppFamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean/declarations/dfinsuppfamily--3e06fffc6acee6f4eac481cf.md) | 85 | `declaration-track:3e06fffc6acee6f4eac481cfad5f71650b84922946699c16ca4b2b410b288c41` |
| 3 | `theorem` | [support_dfinsuppFamily_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean/declarations/support-dfinsuppfamily-subset--71cb3d4630d984956fb7813f.md) | 108 | `result-track:71cb3d4630d984956fb7813fc7ab7bd3a1f8c773484025c27b63f86881452764` |
| 4 | `theorem` | [dfinsuppFamily_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean/declarations/dfinsuppfamily-single--742e5897902dbd298dce378a.md) | 124 | `result-track:742e5897902dbd298dce378af17ef33dbb0c8568de356064331cc1b422e13fae` |
| 5 | `theorem` | [dfinsuppFamily_single_left_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean/declarations/dfinsuppfamily-single-left-apply--3a352accfde099ebd4dc083a.md) | 140 | `result-track:3a352accfde099ebd4dc083a05c01d1a10e39cbc72fc2cee5ff28d84022a2f78` |
| 6 | `theorem` | [dfinsuppFamily_single_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean/declarations/dfinsuppfamily-single-left--b4573c6518e0dd3ed6c8e1cd.md) | 148 | `result-track:b4573c6518e0dd3ed6c8e1cdb76a44b3c63c397c8a443f42598fd7b910d62346` |
| 7 | `theorem` | [dfinsuppFamily_compLinearMap_lsingle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean/declarations/dfinsuppfamily-complinearmap-lsingle--a9d25a9a9463c970109d7cc2.md) | 155 | `result-track:a9d25a9a9463c970109d7cc2be94a0e066b5811f726026078365318b846775c5` |
| 8 | `theorem` | [dfinsuppFamily_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean/declarations/dfinsuppfamily-zero--01a7327857189faf371fbf49.md) | 162 | `result-track:01a7327857189faf371fbf493931f06003eaf066e7a9a0a4253a1ef0bf67975c` |
| 9 | `theorem` | [dfinsuppFamily_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean/declarations/dfinsuppfamily-add--25475897f3670edc9c271c01.md) | 167 | `result-track:25475897f3670edc9c271c017e16d6bd958aa99fd809720f46d266108202e9a7` |
| 10 | `theorem` | [dfinsuppFamily_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean/declarations/dfinsuppfamily-smul--8a6ec30b60747f82354620d1.md) | 172 | `result-track:8a6ec30b60747f82354620d14d7ab956481468416a76b908bbf3183118e04544` |
| 11 | `def` | [dfinsuppFamilyₗ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean/declarations/dfinsuppfamily--e6c795b01549e17e372a2196.md) | 188 | `declaration-track:e6c795b01549e17e372a21967235416e2cc45cba77f14ac03de8581b56595b34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
