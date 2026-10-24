# Verification target: GRWTSK.Topology.GeneralTopology.Array.Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40a154613241b7d411943937ab54257ab6d208e2",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40a154613241b7d411943937ab54257ab6d208e2`.

Source path: `GRWTSK/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.List.Zip` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Option.List` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/mem-toarray--a1d438835ae578070eb5dcf6.md) | 22 | `result-track:a1d438835ae578070eb5dcf629ae49bb23e31c9666618416dee62f4c3ee40160` |
| 2 | `theorem` | [forIn'_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/forin-toarray--bae4a077aae6f78e6b1d66e9.md) | 25 | `result-track:bae4a077aae6f78e6b1d66e973f0473116dd3df3fddd9c85a4806b20af7223e6` |
| 3 | `theorem` | [forIn_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/forin-toarray--ac74cfd8fc44211dbc0e5acf.md) | 29 | `result-track:ac74cfd8fc44211dbc0e5acf8784dcf5ef02e4c2ffa380b979d3a4caaebef412` |
| 4 | `theorem` | [foldlM_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/foldlm-toarray--8b07c44d914c9a11f62222f5.md) | 33 | `result-track:8b07c44d914c9a11f62222f548b40945724c28368d8627a7e3fadbc271d16fc1` |
| 5 | `theorem` | [foldrM_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/foldrm-toarray--84e512015a7e74412e081ff5.md) | 37 | `result-track:84e512015a7e74412e081ff5c4327ad50abef38e147d3286d5013f362b18e0bf` |
| 6 | `theorem` | [foldl_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/foldl-toarray--5a8a32785550d5e9bb16bd9b.md) | 41 | `result-track:5a8a32785550d5e9bb16bd9b23c764513b487998707396b104039e6aad0a222e` |
| 7 | `theorem` | [foldr_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/foldr-toarray--15d9f185dac9166517480e4c.md) | 45 | `result-track:15d9f185dac9166517480e4c6c8ddba9fba58be4bd800ee5c38a674c5a3f8c74` |
| 8 | `theorem` | [toList_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/tolist-toarray--627dc311966b897f0d38d17f.md) | 50 | `result-track:627dc311966b897f0d38d17f16d8a17dfde2673eaac08f4eef44944d5bbb7b83` |
| 9 | `theorem` | [toArray_toList](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/toarray-tolist--9d521b3105bc1a6febd322f2.md) | 54 | `result-track:9d521b3105bc1a6febd322f24ad1acecb0030e13b00dee17c16da047f7a03880` |
| 10 | `theorem` | [toArray_filter](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/toarray-filter--20610543c82f417fce5842a3.md) | 57 | `result-track:20610543c82f417fce5842a3279a8be047082e784a3d2221e65d262913447bee` |
| 11 | `theorem` | [toArray_bind](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/toarray-bind--2d77f821d85b0d0b30b5c17b.md) | 61 | `result-track:2d77f821d85b0d0b30b5c17b7ac22fd3c1ebaa8c4397593a7f057f01d58e702d` |
| 12 | `theorem` | [toArray_join](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/toarray-join--b38a18f79ba16a941ad9eed1.md) | 65 | `result-track:b38a18f79ba16a941ad9eed11eed8d286779850385b3a184d5854dcd9d61ae44` |
| 13 | `theorem` | [toArray_map](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/toarray-map--6999353fbdd7036ede19df45.md) | 68 | `result-track:6999353fbdd7036ede19df45c03c1fc89425af69b64d527f608f5cd24bb754d9` |
| 14 | `theorem` | [toArray_min](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/toarray-min--22f2fb760f04beaea84fbe14.md) | 71 | `result-track:22f2fb760f04beaea84fbe14f142a964a61a612899e7e4cbe5a3e7219ef3bf5a` |
| 15 | `theorem` | [size_toArray_le](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/size-toarray-le--66d060658c80919a5733856e.md) | 76 | `result-track:66d060658c80919a5733856e32e72a305014205436f3d960d452b919690ada3f` |
| 16 | `theorem` | [size_toArray](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/size-toarray--983fe28281ee0c6c0ee347b2.md) | 80 | `result-track:983fe28281ee0c6c0ee347b2e9db956a36a19b62873777d3cf2aaa2d033a4fe5` |
| 17 | `theorem` | [toArray_eq_empty_iff](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/toarray-eq-empty-iff--214e2ae040b32e89e8144ecd.md) | 85 | `result-track:214e2ae040b32e89e8144ecd349ff1144f2be9c61137a354a98805ddd6daa4a4` |
| 18 | `theorem` | [toArray_eq_singleton_iff](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/toarray-eq-singleton-iff--3fa2f23723165acc5904cde0.md) | 89 | `result-track:3fa2f23723165acc5904cde03a99a2e00bfd26bf3655e06558a1432bc20cfe95` |
| 19 | `theorem` | [size_toArray_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/size-toarray-eq-zero-iff--06e09d45ab82975137da2a8e.md) | 92 | `result-track:06e09d45ab82975137da2a8e117ec984e9686c3ae67f9dcd22fdba94f80a187d` |
| 20 | `theorem` | [size_toArray_eq_one_iff](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/size-toarray-eq-one-iff--16d1fcdb961e414877b5a2a2.md) | 97 | `result-track:16d1fcdb961e414877b5a2a2aeceadecafd03cfd0d69045affdab46a69197e1c` |
| 21 | `theorem` | [size_toArray_choice_eq_one](../../../../../mathematics/Topology/GeneralTopology/Array/Variant26f3355f987c6d842507c74d26ad7ed0316a688d35463e5b3a33302f317ee62c.lean/declarations/size-toarray-choice-eq-one--861e56773342caf920ee7ed9.md) | 101 | `result-track:861e56773342caf920ee7ed9b0e639535f406f2efdf28db6cb080056fffb0288` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
