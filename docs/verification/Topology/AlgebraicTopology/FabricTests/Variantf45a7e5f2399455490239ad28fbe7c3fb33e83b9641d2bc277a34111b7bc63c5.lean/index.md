# Verification target: GRWTSK.Topology.AlgebraicTopology.FabricTests.Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d89ce2ce023e67ade9926757dbb3ae7f483d6b22",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d89ce2ce023e67ade9926757dbb3ae7f483d6b22`.

Source path: `GRWTSK/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.Core` — import line 1; external provider; requires a separately pinned dependency.
- `FilesystemCodec.Adapters.Fabric` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.StdSimplex` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitSystem](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/unitsystem--02b471dc2249f4ca1778da3e.md) | 20 | `declaration-track:02b471dc2249f4ca1778da3e06ece24bc4ac22dbdb499b344d5949914fb17cd7` |
| 2 | `def` | [unitPresentation](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/unitpresentation--7624e2724cbc744dc3ab5bf9.md) | 29 | `declaration-track:7624e2724cbc744dc3ab5bf9798fe83daa41d2a64bd838874eb86d2f033a7041` |
| 3 | `def` | [constantPresentedFabric](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/constantpresentedfabric--ed6ba8a8933253e778df5280.md) | 37 | `declaration-track:ed6ba8a8933253e778df528001b0263cc3d171225a174735817561eb94dd0964` |
| 4 | `def` | [oneSimplexShape](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/onesimplexshape--049925b35b593ab9e656789a.md) | 48 | `declaration-track:049925b35b593ab9e656789a11c366869a055550c060abb431211d0c7074c736` |
| 5 | `def` | [canonicalEdge](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/canonicaledge--f6b000a8a5ec9b9a46d5237c.md) | 52 | `declaration-track:f6b000a8a5ec9b9a46d5237c2503b41b4183d7c20e75baff9b24c1e725d31e49` |
| 6 | `def` | [oneSimplexFabric](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/onesimplexfabric--08ba4f373d391a759e2a2ee7.md) | 55 | `declaration-track:08ba4f373d391a759e2a2ee7507ba2cf80f8adf999c8332deee47279ffa27db1` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/example--48dde57e18d689deb2f3ac7b.md) | 58 | `declaration-track:48dde57e18d689deb2f3ac7b18e45428dee21f326b7503241b20e0f596c0ef24` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/example--d50e8e97e2a455d6af91fe0d.md) | 63 | `declaration-track:d50e8e97e2a455d6af91fe0d02f323c4fc463e20f04309061e14ce63e614020d` |
| 9 | `def` | [triangleShape](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/triangleshape--ec239ecbdeb523a8bfd23159.md) | 69 | `declaration-track:ec239ecbdeb523a8bfd2315966dd2ce5e93fe39caa087644bc827ad17b3dd27c` |
| 10 | `def` | [canonicalTriangle](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/canonicaltriangle--fe9bf1ce0dcc98e0e3f8d021.md) | 73 | `declaration-track:fe9bf1ce0dcc98e0e3f8d02104aa438d906d1c040d8c5bcc525d535b96d08b3a` |
| 11 | `def` | [triangleFabric](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/trianglefabric--34366fd4d8de8bbdec900ad8.md) | 76 | `declaration-track:34366fd4d8de8bbdec900ad84d6be2f70cc0e9a9fcbea717711b77e65cae2a24` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/example--b49870d5a3cfdcd9577212fa.md) | 80 | `declaration-track:b49870d5a3cfdcd9577212fa472dbb4c58c696cf91649d1a9c6a30ecf578eaa5` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/example--68e8265c356124c6e281d145.md) | 88 | `declaration-track:68e8265c356124c6e281d145c6b8c22afb02857b6966e1622c9997be61ee2b0b` |
| 14 | `def` | [canonicalVertex](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/canonicalvertex--809ef990b2c8543a0abf06cb.md) | 101 | `declaration-track:809ef990b2c8543a0abf06cbaddd479a035014d7c4f24a8b04b24637bbdfd50f` |
| 15 | `def` | [degenerateEdge](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/degenerateedge--70ae71287c0b1ed26358aef2.md) | 106 | `declaration-track:70ae71287c0b1ed26358aef2c7349cccfc526a7accbac499ece93be739aa8eca` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/example--dee25fbdbd7719f51b8d2d55.md) | 109 | `declaration-track:dee25fbdbd7719f51b8d2d5596516ec820bb19d2aa941b1751de1595deecc14d` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variantf45a7e5f2399455490239ad28fbe7c3fb33e83b9641d2bc277a34111b7bc63c5.lean/declarations/example--305a0cd09b99edbf74b8ddc2.md) | 116 | `declaration-track:305a0cd09b99edbf74b8ddc2f70325e89fa56c54cd5d22411b44431b79d25671` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
