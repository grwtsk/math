# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Rank.Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7103a4e638f95105059aff38baa760b77beef283",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7103a4e638f95105059aff38baa760b77beef283`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.UnivLE` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Rank` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.ZFC.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rank](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank--09dcfc6cf18b87ffbc019603.md) | 32 | `declaration-track:09dcfc6cf18b87ffbc019603964bc1afac27a4dcaa61dfac6e1b21e0c225f6e6` |
| 2 | `theorem` | [rank_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-congr--8fd8c966fdd2d10fb9abe248.md) | 35 | `result-track:8fd8c966fdd2d10fb9abe2483707ae01adb8545634bcf2afc926c7df1d2d3342` |
| 3 | `theorem` | [rank_lt_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-lt-of-mem--bade554971ef1f95e5b3b021.md) | 47 | `result-track:bade554971ef1f95e5b3b0216c449726bb22d8f24266fbc6801d31c58392e4cf` |
| 4 | `theorem` | [rank_le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-le-iff--ea1bdc53d38558cefac65092.md) | 52 | `result-track:ea1bdc53d38558cefac6509276f395a347016ebde3289d0575414fc6be9979c8` |
| 5 | `theorem` | [lt_rank_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/lt-rank-iff--483b04246a0270651bc20c25.md) | 58 | `result-track:483b04246a0270651bc20c251a6f814005d9dfefabd6035062b9fba2be9b0460` |
| 6 | `theorem` | [rank_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-mono--1dd3e06467bdbe50fca833ef.md) | 64 | `result-track:1dd3e06467bdbe50fca833efbf459f4cfaf8b71dd283ccaa479dd6a762593e83` |
| 7 | `theorem` | [rank_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-empty--3a556115bca895198427cc00.md) | 68 | `result-track:3a556115bca895198427cc0008b38199c85a8b2320898303b48b9d217cb71d75` |
| 8 | `theorem` | [rank_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-insert--6b32bf4a8bad248891b3f63c.md) | 71 | `result-track:6b32bf4a8bad248891b3f63c0cb7360be812cbb2329f0b25d27eadd8254c287b` |
| 9 | `theorem` | [rank_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-singleton--a8ed858d9677d13554be7c29.md) | 82 | `result-track:a8ed858d9677d13554be7c2915551ad8b1dbcf279b6520da3f4d76d3850e11e9` |
| 10 | `theorem` | [rank_pair](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-pair--63741a65b45e5a8f20e7f3ce.md) | 85 | `result-track:63741a65b45e5a8f20e7f3ce474752bf8d22995050bf780d30f849f683995bfa` |
| 11 | `theorem` | [rank_powerset](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-powerset--e4d771133f655015217ed09e.md) | 89 | `result-track:e4d771133f655015217ed09e016019e2c7a0d1d672b9a9096c7c1638cc52a30d` |
| 12 | `theorem` | [rank_sUnion_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-sunion-le--b62dd9cb93a09acd307a27e7.md) | 101 | `result-track:b62dd9cb93a09acd307a27e7c9ce3ee0f3539d1c36d6bd2ea3c202e03f23e283` |
| 13 | `theorem` | [le_succ_rank_sUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/le-succ-rank-sunion--f3f81af1e4c455b1958f97a7.md) | 106 | `result-track:f3f81af1e4c455b1958f97a798bcf8c1deb2a012ba376212bfd16ef2797b0845` |
| 14 | `theorem` | [rank_eq_wfRank](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-eq-wfrank--b477a29557951a3c8e449d10.md) | 117 | `result-track:b477a29557951a3c8e449d106869dd41f9b47a0aa5cc9ee9652c3f53750c5d80` |
| 15 | `def` | [rank](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank--ef22d9eab73521bf2a3f5482.md) | 136 | `declaration-track:ef22d9eab73521bf2a3f5482c7efcf8f3a26bc29ac6a763e44dce3d118eaa466` |
| 16 | `theorem` | [rank_lt_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-lt-of-mem--a2425748b49c0b8e7262a968.md) | 139 | `result-track:a2425748b49c0b8e7262a96833505cd91308b8a25a3d83b77d201d1f08326cdc` |
| 17 | `theorem` | [rank_le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-le-iff--458359664bf1fddd0f9620b9.md) | 142 | `result-track:458359664bf1fddd0f9620b9d97a0fbe01f10b509e33a00286e1762459e64fff` |
| 18 | `theorem` | [lt_rank_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/lt-rank-iff--24e3003c77d68e79cae51181.md) | 147 | `result-track:24e3003c77d68e79cae51181d88bfeee7dcae04560d3f0e27d28f4134ffa2247` |
| 19 | `theorem` | [rank_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-mono--6edb7a881ae4c51ddb4ba646.md) | 151 | `result-track:6edb7a881ae4c51ddb4ba646ab869428f88ce372ae9b83e14a7a8ec1e705c27a` |
| 20 | `theorem` | [rank_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-empty--e6698dd046e6b7588a365d22.md) | 155 | `result-track:e6698dd046e6b7588a365d226d87ab382b02fd7a9362a646b0fdfee0b4388492` |
| 21 | `theorem` | [rank_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-insert--4c8aef87dad2d9466a736793.md) | 158 | `result-track:4c8aef87dad2d9466a736793fe9d81c0c8684e81e6a20814b6e3af9b9e66fdea` |
| 22 | `theorem` | [rank_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-singleton--81edcb382cb1ec6a835ff85a.md) | 162 | `result-track:81edcb382cb1ec6a835ff85aca3256f33f745c14a9fc1cb77bfacc67efd428c7` |
| 23 | `theorem` | [rank_pair](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-pair--6029011afe353241b36ea533.md) | 165 | `result-track:6029011afe353241b36ea5333a08956bb676810dcd66df6058b956d5f7684387` |
| 24 | `theorem` | [rank_union](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-union--0eafdce0e0213c36f57eb5a5.md) | 169 | `result-track:0eafdce0e0213c36f57eb5a53aabee53d2526f2a452909e306668a46e9b6c4fb` |
| 25 | `theorem` | [rank_powerset](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-powerset--4f79a61db9f80c5558782b21.md) | 177 | `result-track:4f79a61db9f80c5558782b21e03ccaf63c51bba48360cf2e774cdc84ef49ee23` |
| 26 | `theorem` | [rank_sUnion_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-sunion-le--ebce83b0781d10781c698ad4.md) | 183 | `result-track:ebce83b0781d10781c698ad489aee3e1a25d5e7082adc4af1b95a7fe66930247` |
| 27 | `theorem` | [le_succ_rank_sUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/le-succ-rank-sunion--a1ad3ab84b8600933a02a0c8.md) | 188 | `result-track:a1ad3ab84b8600933a02a0c8ee3713691c1c9c6567b646cc591228baa2f8c2fa` |
| 28 | `theorem` | [rank_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-range--88e4c9dd2f6b34760d816f1e.md) | 198 | `result-track:88e4c9dd2f6b34760d816f1e0a3bb7ff8e96121a7bcae092fd23dd816b32f4b6` |
| 29 | `theorem` | [rank_eq_wfRank](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variantd76268fd065dbc68ad155e65df492d80c8bebf90a35d27e2625cf66795fbffc8.lean/declarations/rank-eq-wfrank--7bd135076dafedd749471ff4.md) | 205 | `result-track:7bd135076dafedd749471ff43652d5618f1133ae133fac3b2fd8941df29c9904` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
