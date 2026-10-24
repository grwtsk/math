# Verification target: GRWTSK.Topology.GeneralTopology.List.Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5893eaa62aa4fc9a74832d2cc8ac3de5c248a06",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5893eaa62aa4fc9a74832d2cc8ac3de5c248a06`.

Source path: `GRWTSK/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/mem-tolist--ea729f850bc8c0779f9edb53.md) | 20 | `result-track:ea729f850bc8c0779f9edb537e7acb4dc2dffbad1dc75542a0fcfa1f7da34966` |
| 2 | `theorem` | [forIn'_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/forin-tolist--33d33f7c1789041835388ff4.md) | 23 | `result-track:33d33f7c1789041835388ff4f60b30c45c5bb98c83248c010a8f4514ea600f73` |
| 3 | `theorem` | [forIn_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/forin-tolist--bf37e2aaa48623117469d043.md) | 27 | `result-track:bf37e2aaa48623117469d0436778df7197d6ead9d0fd5138865c75b53f675b21` |
| 4 | `theorem` | [foldlM_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/foldlm-tolist--b71a609c5bfe14cbf7a29f47.md) | 31 | `result-track:b71a609c5bfe14cbf7a29f47918552fccaf14318142cafa0da9c4ea34384debf` |
| 5 | `theorem` | [foldrM_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/foldrm-tolist--956518d0f5a7df6649c6f723.md) | 35 | `result-track:956518d0f5a7df6649c6f723f74990664d3b39e2fc1619bfa81383e6899f13a0` |
| 6 | `theorem` | [foldl_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/foldl-tolist--d348f997eb165a1dac37c0b6.md) | 39 | `result-track:d348f997eb165a1dac37c0b6e7c64fb3f65d1f042f5feb5bba6ef41107d1944b` |
| 7 | `theorem` | [foldr_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/foldr-tolist--3a218f9c78c86f31e153c248.md) | 43 | `result-track:3a218f9c78c86f31e153c248e78483dfccbd50bd5706a70eaf97a89ba6d6405c` |
| 8 | `theorem` | [pairwise_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/pairwise-tolist--f89281efbf918350cfd3fb78.md) | 48 | `result-track:f89281efbf918350cfd3fb78915098c1f6556cfe34dd8dcb865b31fa717eb467` |
| 9 | `theorem` | [head?_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/head-tolist--2616fca8a9276bf953880888.md) | 52 | `result-track:2616fca8a9276bf953880888ebf60f2887a8c51eaa481e16d24f9517b518fa9a` |
| 10 | `theorem` | [toList_filter](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/tolist-filter--1ae5b4a61c0b1beab1031cc7.md) | 55 | `result-track:1ae5b4a61c0b1beab1031cc765ad605108ccd6f94646425e661d640dae5bd0c6` |
| 11 | `theorem` | [toList_bind](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/tolist-bind--f7d9113d67e8d87b62a83e80.md) | 63 | `result-track:f7d9113d67e8d87b62a83e80050ee31dd43ff34bd058934a7c2afff572e46ff7` |
| 12 | `theorem` | [toList_join](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/tolist-join--bd96aaa8ad4dba0c0d3657a1.md) | 67 | `result-track:bd96aaa8ad4dba0c0d3657a1c51519f46f22e306e9136bb0988eb7e41173fc7f` |
| 13 | `theorem` | [toList_map](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/tolist-map--a4efa08e8e3cefc6047d85e4.md) | 70 | `result-track:a4efa08e8e3cefc6047d85e42a3d3fc4d8e1921f68930f744551b61ca30186b2` |
| 14 | `theorem` | [toList_min](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/tolist-min--be641bce5660165b48016738.md) | 73 | `result-track:be641bce5660165b48016738df7c5c7105e84c8ae65af00161ab421b8664250e` |
| 15 | `theorem` | [length_toList_le](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/length-tolist-le--af7555ac645eacc74637c056.md) | 78 | `result-track:af7555ac645eacc74637c0565c532898e808e20aeff5c69c2fbce8496fb5a322` |
| 16 | `theorem` | [length_toList](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/length-tolist--3333a5a02d90153a0ca8ee51.md) | 82 | `result-track:3333a5a02d90153a0ca8ee51b2ec5ac1e8bb7a11f776e76e4a9dba43c2c12a14` |
| 17 | `theorem` | [toList_eq_nil_iff](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/tolist-eq-nil-iff--9d06a7effcae4b0975198170.md) | 87 | `result-track:9d06a7effcae4b0975198170998537308013f2cfd52122fc818ee4a0004abc32` |
| 18 | `theorem` | [toList_eq_singleton_iff](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/tolist-eq-singleton-iff--f647d3aae84dbdbaa44a3d36.md) | 91 | `result-track:f647d3aae84dbdbaa44a3d36a13aced149952c959a71c295340ff1b4b4812b9f` |
| 19 | `theorem` | [length_toList_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/length-tolist-eq-zero-iff--31eaa0e03044b0b41475ce9d.md) | 94 | `result-track:31eaa0e03044b0b41475ce9d6f94378ba7ef113cca78336b923801f7260c09af` |
| 20 | `theorem` | [length_toList_eq_one_iff](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/length-tolist-eq-one-iff--4915462e8ca2f25a2deec369.md) | 99 | `result-track:4915462e8ca2f25a2deec36996abef1230678cbf4ebea2953d528aeb2639b5ef` |
| 21 | `theorem` | [length_toList_choice_eq_one](../../../../../mathematics/Topology/GeneralTopology/List/Variantb9586425ea231b004bfa6472bc90f8f287ba553a6f48d0c257b33064b97df3e6.lean/declarations/length-tolist-choice-eq-one--9112e8befa136f01fbe39061.md) | 103 | `result-track:9112e8befa136f01fbe390619ef15dd617885de6eda83436ef3cdca1ab0b23ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
