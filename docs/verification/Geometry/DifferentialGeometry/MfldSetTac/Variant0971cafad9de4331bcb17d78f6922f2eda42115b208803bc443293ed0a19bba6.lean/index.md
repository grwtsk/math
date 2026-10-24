# Verification target: GRWTSK.Geometry.DifferentialGeometry.MfldSetTac.Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad921934de09745a1b04a3f25fbe8cf550a35149",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad921934de09745a1b04a3f25fbe8cf550a35149`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.PartialEquiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/test-sorry--269e6b3facced7d2a9aa454f.md) | 9 | `declaration-track:269e6b3facced7d2a9aa454f7ae2883a707e674fcd19c17bd2d3085ef0aea24b` |
| 2 | `structure` | [PartialHomeomorph](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/partialhomeomorph--1bf5400cf31cac09686f0746.md) | 24 | `declaration-track:1bf5400cf31cac09686f0746174f6f1693f178c8e44f65ac6091e01687bc4816` |
| 3 | `instance` | [PartialHomeomorph.has_coe_to_fun](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/partialhomeomorph-has-coe-to-fun--40cba17bb0fde5868b52f221.md) | 27 | `declaration-track:40cba17bb0fde5868b52f221fce63e6929eb6cc9ad332f91e39837b4a476c7c9` |
| 4 | `def` | [PartialHomeomorph.symm](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/partialhomeomorph-symm--dbcb01191325bd20dbef354c.md) | 31 | `declaration-track:dbcb01191325bd20dbef354c96f125dadce7980d67d145c499bfc8efb968e11a` |
| 5 | `lemma` | [PartialHomeomorph.left_inv](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/partialhomeomorph-left-inv--0a12267390a7acaea8e6cfb0.md) | 33 | `result-track:0a12267390a7acaea8e6cfb015ac4b67734ec202106368219a7495deb13863d4` |
| 6 | `theorem` | [PartialHomeomorph.symm_to_PartialEquiv](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/partialhomeomorph-symm-to-partialequiv--5b4646fd3df8ed22954a5073.md) | 38 | `result-track:5b4646fd3df8ed22954a5073fd90ae5ec447ffce4c8b2ae137fd6336a6a628e8` |
| 7 | `lemma` | [PartialHomeomorph.coe_coe](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/partialhomeomorph-coe-coe--e1e5975d6c8eec1662e6b036.md) | 42 | `result-track:e1e5975d6c8eec1662e6b0367cce41d52a83d80f8285e9419c7667177baa2fb5` |
| 8 | `lemma` | [PartialHomeomorph.coe_coe_symm](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/partialhomeomorph-coe-coe-symm--01f4c3a65eff515ca0b46d77.md) | 46 | `result-track:01f4c3a65eff515ca0b46d7797327a6cdc9f559c172043618f85032ea1007aec` |
| 9 | `structure` | [ModelWithCorners](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/modelwithcorners--bb7b2bcf27e1a176e658d31a.md) | 50 | `declaration-track:bb7b2bcf27e1a176e658d31a04bc644baccb391b70e5cbb5abb98b51a2ea914a` |
| 10 | `def` | [ModelWithCorners.symm](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/modelwithcorners-symm--f2728ca419c9b9f2440a2c24.md) | 56 | `declaration-track:f2728ca419c9b9f2440a2c24c7bd1c66b4174b0f683cc599938b30a0b17d45fd` |
| 11 | `instance` | [ModelWithCorners.has_coe_to_fun](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/modelwithcorners-has-coe-to-fun--9a3cd82d60f988b002383494.md) | 59 | `declaration-track:9a3cd82d60f988b00238349445ed7231c3ff7ce874adf4ea4d1d12f2ebdc6261` |
| 12 | `lemma` | [ModelWithCorners.left_inv](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/modelwithcorners-left-inv--e9b5d54403b092d3979f92c3.md) | 62 | `result-track:e9b5d54403b092d3979f92c3cf6309f813f46a3abb0e6363deb538eb73e7c1a1` |
| 13 | `lemma` | [ModelWithCorners.to_local_equiv_coe](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/modelwithcorners-to-local-equiv-coe--a73c9ce952c3c1f67d800111.md) | 66 | `result-track:a73c9ce952c3c1f67d800111cc5a321c557074a6b2652d385995672ecba4a3f4` |
| 14 | `lemma` | [ModelWithCorners.to_local_equiv_coe_symm](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/modelwithcorners-to-local-equiv-coe-symm--4b2a4925ac1cc8e77edf82de.md) | 70 | `result-track:4b2a4925ac1cc8e77edf82de64d036f2a888cf1e57a53d7c3ca12f17cc6cf632` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/example--348d2a8205930bc94fbcb5be.md) | 80 | `declaration-track:348d2a8205930bc94fbcb5bedec7c274bfcd9d06cf778cc349928739788be3ee` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/example--e7bc8b3089ca75a519455a89.md) | 84 | `declaration-track:e7bc8b3089ca75a519455a897ebb33a04ef52552b2b52f56f45e666021ae22c5` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/example--f5d570f510323e8e25ba9772.md) | 86 | `declaration-track:f5d570f510323e8e25ba9772325db5ceaf05b7771998838ae8e0e6acf45f04b9` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/declarations/example--b281842ee0fa4e3d28bd039c.md) | 90 | `declaration-track:b281842ee0fa4e3d28bd039c92168b43ac57cd653beb7be239f0daedb085eef1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
