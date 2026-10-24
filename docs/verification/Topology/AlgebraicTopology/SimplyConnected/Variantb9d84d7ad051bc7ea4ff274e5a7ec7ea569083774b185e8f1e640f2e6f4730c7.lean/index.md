# Verification target: GRWTSK.Topology.AlgebraicTopology.SimplyConnected.Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95968725497e01a32255909775b1ae8d6ef2b025",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95968725497e01a32255909775b1ae8d6ef2b025`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.FundamentalGroupoid.InducedMaps` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Contractible` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PUnit` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.FundamentalGroupoid.PUnit` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SimplyConnectedSpace](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean/declarations/simplyconnectedspace--1ef9dbae1c7255eab573828b.md) | 35 | `declaration-track:1ef9dbae1c7255eab573828bc60005b426b8f6ae595f5ab1519b60486aff62c3` |
| 2 | `theorem` | [simply_connected_def](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean/declarations/simply-connected-def--a9c94a8c5255534bac78228e.md) | 39 | `result-track:a9c94a8c5255534bac78228e06f8007ece4e5a613a3ea399f3c9b14e8a063ae9` |
| 3 | `theorem` | [simply_connected_iff_unique_homotopic](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean/declarations/simply-connected-iff-unique-homotopic--b351157c592f938153cdca86.md) | 44 | `result-track:b351157c592f938153cdca8628c38a08766afee2ea6adb999702806e7345e235` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean/declarations/instance--46444912fa4e7edc45791ed2.md) | 54 | `declaration-track:46444912fa4e7edc45791ed2a5c0018031024620a2a5214319117d9717441c3f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean/declarations/instance--2c31401062d7b921d1feaa67.md) | 60 | `declaration-track:2c31401062d7b921d1feaa67c91c61d6ec8355397a84fdaf9bdaa9342e27a095` |
| 6 | `theorem` | [paths_homotopic](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean/declarations/paths-homotopic--64627a193e4b589bef9863c5.md) | 66 | `result-track:64627a193e4b589bef9863c5d86f1b896027160144466643b90429c026acf4e2` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean/declarations/instance--5aacaf6b150af5fb4abe142e.md) | 70 | `declaration-track:5aacaf6b150af5fb4abe142e1933688eb0dce31f3497b751b85c6258ac0629c9` |
| 8 | `theorem` | [simply_connected_iff_paths_homotopic](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean/declarations/simply-connected-iff-paths-homotopic--069744e88b14ee2fb87b1ede.md) | 84 | `result-track:069744e88b14ee2fb87b1edecef02374460eaf261b07d222f5a8a8af3b12e650` |
| 9 | `theorem` | [simply_connected_iff_paths_homotopic'](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean/declarations/simply-connected-iff-paths-homotopic--13663a08bfbe51a84e806d09.md) | 93 | `result-track:13663a08bfbe51a84e806d099c89f0bdc8843aeb6e1bd6735f497daf2e6ba35d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
