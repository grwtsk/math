# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CubicalPacket.Variant180e84389771ca3cdf631db247ed89ca8bff7254aa0c57ed1856797dff5e522d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e35867da1d3e9ff226dc92530fb1d08da33a8ae",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant180e84389771ca3cdf631db247ed89ca8bff7254aa0c57ed1856797dff5e522d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant180e84389771ca3cdf631db247ed89ca8bff7254aa0c57ed1856797dff5e522d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant180e84389771ca3cdf631db247ed89ca8bff7254aa0c57ed1856797dff5e522d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e35867da1d3e9ff226dc92530fb1d08da33a8ae`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant180e84389771ca3cdf631db247ed89ca8bff7254aa0c57ed1856797dff5e522d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant180e84389771ca3cdf631db247ed89ca8bff7254aa0c57ed1856797dff5e522d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Cubical.BanachHilbert` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExactSkeleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant180e84389771ca3cdf631db247ed89ca8bff7254aa0c57ed1856797dff5e522d.lean/declarations/exactskeleton--3810a5dd73c807286720555b.md) | 26 | `declaration-track:3810a5dd73c807286720555b445290fbe3eaa74182bc3691981a7de15222f83a` |
| 2 | `def` | [rationalRealize](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant180e84389771ca3cdf631db247ed89ca8bff7254aa0c57ed1856797dff5e522d.lean/declarations/rationalrealize--4e498df98ac9afc30917c59d.md) | 36 | `declaration-track:4e498df98ac9afc30917c59d9f0226f14454a079fcf9b13de0d99156c84bd6d3` |
| 3 | `def` | [rationalSquaredCost](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant180e84389771ca3cdf631db247ed89ca8bff7254aa0c57ed1856797dff5e522d.lean/declarations/rationalsquaredcost--6d113da8c76dcc97fa8f1a47.md) | 40 | `declaration-track:6d113da8c76dcc97fa8f1a474a9fbf9bdf5274fea13b3ee9cbfa0f62234af77d` |
| 4 | `structure` | [ExactDynamics](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant180e84389771ca3cdf631db247ed89ca8bff7254aa0c57ed1856797dff5e522d.lean/declarations/exactdynamics--6bebe316c8a94d168f254c4e.md) | 45 | `declaration-track:6bebe316c8a94d168f254c4e556e92031d4f4dc53d34ac1b7f3d154cdad834bd` |
| 5 | `structure` | [MLPacket](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant180e84389771ca3cdf631db247ed89ca8bff7254aa0c57ed1856797dff5e522d.lean/declarations/mlpacket--5fb369e3edb416efaa1a320d.md) | 59 | `declaration-track:5fb369e3edb416efaa1a320d7c5cbcf6e22b7c319f468df21b60b209b714b10a` |
| 6 | `def` | [consume](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant180e84389771ca3cdf631db247ed89ca8bff7254aa0c57ed1856797dff5e522d.lean/declarations/consume--710fbe14043edfff1a9c1e5a.md) | 69 | `declaration-track:710fbe14043edfff1a9c1e5a0fe9561d13dd70903115e42c363ea0239078b176` |
| 7 | `theorem` | [consume_preserves_skeleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant180e84389771ca3cdf631db247ed89ca8bff7254aa0c57ed1856797dff5e522d.lean/declarations/consume-preserves-skeleton--9aedfe1fcac45968f1302184.md) | 79 | `result-track:9aedfe1fcac45968f1302184a095fc261d44f014d56a0eda2d9920241892e69a` |
| 8 | `structure` | [CoveredDecoder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant180e84389771ca3cdf631db247ed89ca8bff7254aa0c57ed1856797dff5e522d.lean/declarations/covereddecoder--3fad87551d4975d280c20a35.md) | 88 | `declaration-track:3fad87551d4975d280c20a35aed97703a74a3ac26e8c3eba20d51a5919551930` |
| 9 | `theorem` | [decode_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CubicalPacket/Variant180e84389771ca3cdf631db247ed89ca8bff7254aa0c57ed1856797dff5e522d.lean/declarations/decode-surjective--ba5a84d61e0c9aafa024a13a.md) | 92 | `result-track:ba5a84d61e0c9aafa024a13a1037b40009d4e21778be7d967075f4c04624b356` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
