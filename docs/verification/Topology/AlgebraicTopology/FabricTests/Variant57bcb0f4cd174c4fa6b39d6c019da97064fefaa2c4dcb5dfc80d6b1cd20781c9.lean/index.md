# Verification target: GRWTSK.Topology.AlgebraicTopology.FabricTests.Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82da4796ee9e03ed1fd05766410afbc9375afd7a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82da4796ee9e03ed1fd05766410afbc9375afd7a`.

Source path: `GRWTSK/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.Core` — import line 1; external provider; requires a separately pinned dependency.
- `BinaryMatrix.Adapters.Fabric` — import line 2; external provider; requires a separately pinned dependency.
- `FilesystemCodec.Adapters.Fabric` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.StdSimplex` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitSystem](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/unitsystem--b69a0a7bc3eb1ade934bb891.md) | 21 | `declaration-track:b69a0a7bc3eb1ade934bb89150baad2a121fe8ce3497d98ded3000977dc7427b` |
| 2 | `def` | [unitPresentation](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/unitpresentation--31bc5eacba18d26f51c1f54c.md) | 30 | `declaration-track:31bc5eacba18d26f51c1f54cbb9c3771759debec7419c0c16cb5daffa59b957b` |
| 3 | `def` | [constantPresentedFabric](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/constantpresentedfabric--75484e52596e1c9418faee7d.md) | 38 | `declaration-track:75484e52596e1c9418faee7d4124a8281971602dfc01bbb549879d510b8847f4` |
| 4 | `def` | [oneSimplexShape](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/onesimplexshape--6b65ebaadff42e94c3841f73.md) | 49 | `declaration-track:6b65ebaadff42e94c3841f736e4a3a94ece2b8cdca5f3771f1a4f01a7595cba1` |
| 5 | `def` | [canonicalEdge](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/canonicaledge--4f923be8d9e2d366b5c41f01.md) | 53 | `declaration-track:4f923be8d9e2d366b5c41f0187cb047eb7c346a1c0890d510082647c91838e00` |
| 6 | `def` | [oneSimplexFabric](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/onesimplexfabric--61086a6bfe7b1450adb8dd61.md) | 56 | `declaration-track:61086a6bfe7b1450adb8dd614e3aacf82e1af74b2768636176d93fa7e88fe4fb` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/example--ba25136e270c9808f7bcc21d.md) | 59 | `declaration-track:ba25136e270c9808f7bcc21dc5a5cd944192f9676d58bd0356e67dcc13ec513e` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/example--720264266edd606b9d956a60.md) | 64 | `declaration-track:720264266edd606b9d956a6033e79163713125f9b830b99e677f8acf2352781f` |
| 9 | `def` | [triangleShape](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/triangleshape--c9aa6b003f2fa7e01aba149c.md) | 70 | `declaration-track:c9aa6b003f2fa7e01aba149c5e3a71fa47ad913637181159ecd71eb24ed3a402` |
| 10 | `def` | [canonicalTriangle](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/canonicaltriangle--48bd7aa606ddda26419ca002.md) | 74 | `declaration-track:48bd7aa606ddda26419ca00230d81851d0a195b89f023d4da97d829da6e12325` |
| 11 | `def` | [triangleFabric](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/trianglefabric--b552293d33bb292b18b701f8.md) | 77 | `declaration-track:b552293d33bb292b18b701f8e5bd1f14b5168b1311487023bfb4cf462d264688` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/example--82bc0fd54246efebdbe237b1.md) | 81 | `declaration-track:82bc0fd54246efebdbe237b16fbe38f728464dfa58e4af08f4c6f850ff21c42b` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/example--f40fc9f5c9ed519bff569ada.md) | 89 | `declaration-track:f40fc9f5c9ed519bff569adac8448335af3e61c9f79a4925c9482e956e55e6da` |
| 14 | `def` | [canonicalVertex](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/canonicalvertex--d9ab4e7c364b29630117cf8c.md) | 102 | `declaration-track:d9ab4e7c364b29630117cf8c6423044f33162811a38fd26b3130e62aa507227d` |
| 15 | `def` | [degenerateEdge](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/degenerateedge--14bc4b58b97f80fa335d15e1.md) | 107 | `declaration-track:14bc4b58b97f80fa335d15e1180ae562ed485f8a71f5e12f1043d385228a8295` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/example--e64780665bfb3a0ba7688052.md) | 110 | `declaration-track:e64780665bfb3a0ba7688052511f2497d7a5e1449dd65eea4941a2ac40525630` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/example--dca783507d4627c1f88588af.md) | 117 | `declaration-track:dca783507d4627c1f88588af98f845580c1aa101e5b73adbeb6418149144b73c` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant57bcb0f4cd174c4fa6b39d6c019da97064fefaa2c4dcb5dfc80d6b1cd20781c9.lean/declarations/example--cb22ab1dd3ed0deb3acf6cb7.md) | 122 | `declaration-track:cb22ab1dd3ed0deb3acf6cb75dbdfff493ad44775a037c7db4693b5282ee6f0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
