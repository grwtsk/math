# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ab7e532c8e9810318816e7f88e93a32438a6b6e",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ab7e532c8e9810318816e7f88e93a32438a6b6e`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Count` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.MinMax` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tail_dropLast](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/tail-droplast--3a1e3df715a586fedcbd97fe.md) | 44 | `result-track:3a1e3df715a586fedcbd97fed526b3a19961c56c623afcd4fa773ceac44f66f8` |
| 2 | `theorem` | [dropLast_reverse](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/droplast-reverse--8bbd567f7d0e583b327d51b1.md) | 53 | `result-track:8bbd567f7d0e583b327d51b1b684878f9ed534c04307e52eb578057a526da468` |
| 3 | `theorem` | [length_filter_pos_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/length-filter-pos-iff--cb2d56e89438dbb433cdeac0.md) | 65 | `result-track:cb2d56e89438dbb433cdeac0955a93a39a7c8f7b1fe0343dc59aca0c080e2860` |
| 4 | `theorem` | [length_filter_lt_length_iff_exists](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/length-filter-lt-length-iff-exists--359fec7216ee0f0a905f4665.md) | 71 | `result-track:359fec7216ee0f0a905f46650cb483bd61b324a317a61fdcf47c17b5b33251e0` |
| 5 | `theorem` | [length_filterMap_pos_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/length-filtermap-pos-iff--3f1561cda929ec735914c0f1.md) | 78 | `result-track:3f1561cda929ec735914c0f1fe22dcbd02e898d40bb7d487b19a205b2f319ebb` |
| 6 | `theorem` | [length_filterMap_lt_length_iff_exists](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/length-filtermap-lt-length-iff-exists--08e55cc5a471c6f881f3d5f0.md) | 89 | `result-track:08e55cc5a471c6f881f3d5f033e3a7f03fff6a7a3caf9f420399e974368fb693` |
| 7 | `theorem` | [getElem_eq_getElem_reverse](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/getelem-eq-getelem-reverse--eeca1dba1dc3555cf4c0ac4b.md) | 103 | `result-track:eeca1dba1dc3555cf4c0ac4b06e1fa3f607e9a67a4a90b385637311d3d4b2e50` |
| 8 | `theorem` | [length_leftpad](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/length-leftpad--cc15edfa33fe5ede062002cd.md) | 115 | `result-track:cc15edfa33fe5ede062002cd50a79ecf0112eccc45220686ff7d11a4abaeee9b` |
| 9 | `theorem` | [length_rightpad](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/length-rightpad--be562956db49093e41da3878.md) | 119 | `result-track:be562956db49093e41da387880d70af5464611e08d7ada8baaacbf03456ad1c3` |
| 10 | `theorem` | [length_intersperse](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/length-intersperse--684a3caf74fa63379bec6819.md) | 129 | `result-track:684a3caf74fa63379bec68193149b3be573db372f2dc97c705bc51148139a463` |
| 11 | `theorem` | [getElem?_intersperse_two_mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/getelem-intersperse-two-mul--8a47440aa56193225b8ec598.md) | 135 | `result-track:8a47440aa56193225b8ec598dcc518a150239a069082d19d97bcfe4e55cdbdae` |
| 12 | `theorem` | [getElem?_intersperse_two_mul_add_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/getelem-intersperse-two-mul-add-one--685e33cdd9a2024aa6dd67ff.md) | 139 | `result-track:685e33cdd9a2024aa6dd67ff6f500a2ae9babb1c83d8769cb609d1fa0836c52d` |
| 13 | `theorem` | [getElem?_intersperse](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/getelem-intersperse--e8f481390edce0a138b0c6ef.md) | 149 | `result-track:e8f481390edce0a138b0c6ef1d57b709fe8aced133a0bdd4afe8af37a4050e5a` |
| 14 | `theorem` | [getElem_intersperse_two_mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/getelem-intersperse-two-mul--888d83b79228c90ba0c2a405.md) | 168 | `result-track:888d83b79228c90ba0c2a4055339f6ebf261842bf49d97557006aed865fa324d` |
| 15 | `theorem` | [getElem_intersperse_two_mul_add_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/getelem-intersperse-two-mul-add-one--8dd34421b81eec6c3532eb21.md) | 173 | `result-track:8dd34421b81eec6c3532eb2126dd57da48b5983bb455e6a0ac987b1dd7d29f79` |
| 16 | `theorem` | [getElem_intersperse](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/getelem-intersperse--d803b5f014325cc1d6cbd418.md) | 180 | `result-track:d803b5f014325cc1d6cbd4180fe4c06614b4e1ec7f7e6cbe3976b673292ef669` |
| 17 | `theorem` | [getElem_eq_getElem_intersperse_two_mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/getelem-eq-getelem-intersperse-two-mul--aebf9d97e5bbd37f7ac28c99.md) | 191 | `result-track:aebf9d97e5bbd37f7ac28c9969f9b837fad38444715fa1e1dec49f70c6d420db` |
| 18 | `theorem` | [mem_eraseIdx_iff_getElem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/mem-eraseidx-iff-getelem--577376697d510081985fe9a6.md) | 199 | `result-track:577376697d510081985fe9a68317b7ef6f69c9cc3a519616291ec9650f4c8188` |
| 19 | `theorem` | [mem_eraseIdx_iff_getElem?](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/mem-eraseidx-iff-getelem--5a6f026f6431f2d5fa8b5c84.md) | 210 | `result-track:5a6f026f6431f2d5fa8b5c84420553ea1f7d9f3426bafc28b68ecc81c87db15a` |
| 20 | `theorem` | [min?_eq_some_iff'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/min-eq-some-iff--69433869a883d9ffaf71f6ca.md) | 223 | `result-track:69433869a883d9ffaf71f6ca14a0c54ec6aef9030e8929823b582e0121a3a2a4` |
| 21 | `theorem` | [min?_get_le_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/min-get-le-of-mem--e3b9350cc5333738c66a8499.md) | 227 | `result-track:e3b9350cc5333738c66a8499762053e5de9a4d5a9785b6a9605203b54d4a85d1` |
| 22 | `theorem` | [min?_getD_le_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/min-getd-le-of-mem--1500faac3fd6a3efff2824fa.md) | 241 | `result-track:1500faac3fd6a3efff2824fa1abf8ae0e6620f56a8514ee04117e45051908ee8` |
| 23 | `theorem` | [max?_eq_some_iff'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/max-eq-some-iff--d402d23b798c20fd55ae7e7a.md) | 248 | `result-track:d402d23b798c20fd55ae7e7ac3bf16072e07fc0ab0fc7dd923cf04a53b434eb7` |
| 24 | `theorem` | [le_max?_get_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/le-max-get-of-mem--43a163954767f16283b9d22b.md) | 252 | `result-track:43a163954767f16283b9d22ba6b426fdedc2ef42f7849d831802e06a8db1b99a` |
| 25 | `theorem` | [le_max?_getD_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/le-max-getd-of-mem--669bb2c43b9c9c5aa7639e7a.md) | 266 | `result-track:669bb2c43b9c9c5aa7639e7ac804a86d9a0e00f5f3cd371705d3d6801391b885` |
| 26 | `theorem` | [append_eq_append_iff_of_size_eq_left](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/append-eq-append-iff-of-size-eq-left--799ba8d39816e38a9426727b.md) | 272 | `result-track:799ba8d39816e38a9426727b669b08fe94ceca985d4d66391be2276f3eab8009` |
| 27 | `theorem` | [append_eq_append_iff_of_size_eq_right](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/declarations/append-eq-append-iff-of-size-eq-right--c1207b209af098707f779a9b.md) | 279 | `result-track:c1207b209af098707f779a9b6756cbce592e88178ac79d0914ddb9cf0365f0ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
