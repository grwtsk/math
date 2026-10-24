# Verification target: GRWTSK.Topology.AlgebraicTopology.Shape.Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35a2664f0fea8b2c637e1628aeb1427df69e526b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35a2664f0fea8b2c637e1628aeb1427df69e526b`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplexCategory.Truncated` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Shape](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/declarations/shape--5cf138252059f74ad54c3682.md) | 33 | `declaration-track:5cf138252059f74ad54c36821d504f228393ac04b242a3adb86d0360ad0eeb95` |
| 2 | `abbrev` | [SimplexOperator](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/declarations/simplexoperator--f56e2fff4792586b97e1b302.md) | 36 | `declaration-track:f56e2fff4792586b97e1b3026b3a928aaf262428873fa2310bf828fd8b39ec53` |
| 3 | `abbrev` | [Cell](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/declarations/cell--3daba3873ff2f0efa79963ce.md) | 42 | `declaration-track:3daba3873ff2f0efa79963cef2c477e5d3197d69f6ca1665de7250584b3fd498` |
| 4 | `def` | [restrict](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/declarations/restrict--ff05269103499284b704e01c.md) | 46 | `declaration-track:ff05269103499284b704e01c13c59a0d85907f9cfe8140f6995ab83b5cb56cfe` |
| 5 | `def` | [face](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/declarations/face--6b343b74035f748115187aab.md) | 51 | `declaration-track:6b343b74035f748115187aabda512e1ae26421361e52c7439c4ff6959ef213b3` |
| 6 | `def` | [degeneracy](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/declarations/degeneracy--fe06c6f9967f439f6a677fae.md) | 56 | `declaration-track:fe06c6f9967f439f6a677faefd5fca9f9152b6e8628ba2d0dec2c809dc8fb55b` |
| 7 | `theorem` | [restrict_id](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/declarations/restrict-id--f732993cae711e317f2bb53f.md) | 61 | `result-track:f732993cae711e317f2bb53f18ed365d260eb4b3f48fdddc218ab2f29a658ae0` |
| 8 | `theorem` | [restrict_comp](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/declarations/restrict-comp--c5a88df9513e139c1c59834e.md) | 66 | `result-track:c5a88df9513e139c1c59834eb62eb4f4c0bdc595a5f2588de4fae9f0644d63b1` |
| 9 | `theorem` | [restrict_naturality](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/declarations/restrict-naturality--dae270f13204758f68956df9.md) | 73 | `result-track:dae270f13204758f68956df94ac280a9f2e505f5ba79a3158cb2316ed706696d` |
| 10 | `abbrev` | [compMap](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/declarations/compmap--f8f071b3c1c9264911bcc4ec.md) | 84 | `declaration-track:f8f071b3c1c9264911bcc4ec1278d952e1a647a6fcff1c3a9f8f90e1ba6b9b7c` |
| 11 | `theorem` | [compMap_app_apply](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/declarations/compmap-app-apply--937dbc29bcb474ec77e81286.md) | 88 | `result-track:937dbc29bcb474ec77e8128657a18761e1c98c6fb647defae15e07c50ea842e6` |
| 12 | `theorem` | [face_eq_map](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/declarations/face-eq-map--f834db20a2da840c6a58959b.md) | 94 | `result-track:f834db20a2da840c6a58959b45c1ba777e5b30ff3c06d915481fbfe3680d50ce` |
| 13 | `theorem` | [degeneracy_eq_map](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/declarations/degeneracy-eq-map--de4535e4390fc265a3e6e852.md) | 100 | `result-track:de4535e4390fc265a3e6e85286b28f2246ceb5c1a4ff87788e7e759cfec6e1c8` |
| 14 | `structure` | [FiniteShape](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/declarations/finiteshape--19e291f48e8381f72fe74cd0.md) | 108 | `declaration-track:19e291f48e8381f72fe74cd072170e719228d9f98386b850b05868291d3cddd0` |
| 15 | `structure` | [TruncatedShape](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/declarations/truncatedshape--f7d9b12eb6b1bc2b3b2b510a.md) | 113 | `declaration-track:f7d9b12eb6b1bc2b3b2b510aad8a2f03fa50454a368d45189080312a2f1a10f3` |
| 16 | `def` | [Cell](../../../../../mathematics/Topology/AlgebraicTopology/Shape/Variant679bbeced950bc3a8223c6a1704f724689c38546bb218ff187183b8a1586a1c6.lean/declarations/cell--dcc4da108e0b9d047c0e487d.md) | 119 | `declaration-track:dcc4da108e0b9d047c0e487d1d0ec8d471cc16ef812eb57ce67ea90df7088eb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
