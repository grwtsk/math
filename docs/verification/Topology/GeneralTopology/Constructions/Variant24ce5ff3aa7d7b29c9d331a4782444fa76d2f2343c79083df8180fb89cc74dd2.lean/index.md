# Verification target: GRWTSK.Topology.GeneralTopology.Constructions.Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3382c4331db98cbf0d85966e15eb927b95563b0f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3382c4331db98cbf0d85966e15eb927b95563b0f`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.FiberBundle.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.VectorBundle.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [trivialization.isLinear](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean/declarations/trivialization-islinear--c218239750745462ea9e1c4f.md) | 40 | `declaration-track:c218239750745462ea9e1c4facb8e182ce8e6328f8c84c2e884112ca20e7e9a4` |
| 2 | `theorem` | [trivialization.coordChangeL](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean/declarations/trivialization-coordchangel--b21df29f019599bccd1bace6.md) | 44 | `result-track:b21df29f019599bccd1bace6d178d77cf1263601c5a833725801e54f25195427` |
| 3 | `instance` | [vectorBundle](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean/declarations/vectorbundle--9dbff7db11e20c253bb4e3f8.md) | 51 | `declaration-track:9dbff7db11e20c253bb4e3f8052b49472eafd17da3362ca4ef5c9d0fac93089b` |
| 4 | `instance` | [prod.isLinear](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean/declarations/prod-islinear--92db390d5a2517bc8effba4f.md) | 79 | `declaration-track:92db390d5a2517bc8effba4fb86fda55d6dc36a0f1b1f948c8a4f44f2aa2f819` |
| 5 | `theorem` | [coordChangeL_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean/declarations/coordchangel-prod--2bae187d0b132bba3d39bf81.md) | 84 | `result-track:2bae187d0b132bba3d39bf815e23e78c37c12b02bba67fb2cd797e90d08954c7` |
| 6 | `theorem` | [prod_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean/declarations/prod-apply--344eab5f30d304821dd74284.md) | 99 | `result-track:344eab5f30d304821dd74284f0c2438aa3dafe60fdcd1b6c59d8373ab593a807` |
| 7 | `instance` | [VectorBundle.prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean/declarations/vectorbundle-prod--cd3647d526ca9c383175dc4b.md) | 114 | `declaration-track:cd3647d526ca9c383175dc4b02aeec017f77f676061d0f59327456ac271bb03a` |
| 8 | `theorem` | [Trivialization.continuousLinearEquivAt_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean/declarations/trivialization-continuouslinearequivat-prod--6a029f5bcb0e367ab5e36ab1.md) | 137 | `result-track:6a029f5bcb0e367ab5e36ab1393c191a066eba4b0b0a13dd8b673e5c95808a58` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean/declarations/instance--a6dadff7052ef2ab4475af72.md) | 155 | `declaration-track:a6dadff7052ef2ab4475af726528f9ac02d483c499eada7a829f888b626894ce` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean/declarations/instance--956e68d4dadadb572535e88e.md) | 157 | `declaration-track:956e68d4dadadb572535e88e3684f4a22b826e7f9a3129bb42940b214c35ea6b` |
| 11 | `instance` | [Trivialization.pullback_linear](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean/declarations/trivialization-pullback-linear--f4a75ea21f8a23c74c806af6.md) | 164 | `declaration-track:f4a75ea21f8a23c74c806af6a578e781a7c9b3d993c3f1b8d3a98c0b6d129e12` |
| 12 | `instance` | [VectorBundle.pullback](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant24ce5ff3aa7d7b29c9d331a4782444fa76d2f2343c79083df8180fb89cc74dd2.lean/declarations/vectorbundle-pullback--f46dc1dfcba96e39f8e15f78.md) | 168 | `declaration-track:f46dc1dfcba96e39f8e15f78aead698fefcb0866cf8b13b245673279efe8e0ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
