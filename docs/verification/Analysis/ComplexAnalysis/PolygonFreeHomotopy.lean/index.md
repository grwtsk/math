# Verification target: GRWTSK.Analysis.Complex.PolygonFreeHomotopy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c73870f61b52899371703ac07a3d1f7538106de",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/PolygonFreeHomotopy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c73870f61b52899371703ac07a3d1f7538106de`.

Source path: `GRWTSK/Analysis/Complex/PolygonFreeHomotopy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/PolygonFreeHomotopy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.Homotopy.FiniteConcatenation`](../../../../mathematics/Topology/Homotopy/FiniteConcatenation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.PolygonTube`](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [constantVertex](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/constantvertex--ba3d89fc875974334699f764.md) | 30 | `declaration-track:ba3d89fc875974334699f764b866b77c4c4e1fee7cf7bfabc24e697e6d3e52f5` |
| 2 | `def` | [affineCell](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/affinecell--0e151f6cee54726c65feb750.md) | 33 | `declaration-track:0e151f6cee54726c65feb750392f4d7f36e3558dbba928611e7d42163e83a72b` |
| 3 | `def` | [polygonMap](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/polygonmap--76c6c783de32bd46b335ce08.md) | 42 | `declaration-track:76c6c783de32bd46b335ce08863a29201bdc841e44341d75e3a371b18a79d6f9` |
| 4 | `theorem` | [polygon_start](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/polygon-start--2a0c0b481652a9168653bff8.md) | 47 | `result-track:2a0c0b481652a9168653bff87213b0bf7efec769ae51e852b662488735e15a22` |
| 5 | `theorem` | [polygon_finish](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/polygon-finish--c9202ac4d43f1af4c2728a22.md) | 50 | `result-track:c9202ac4d43f1af4c2728a22342307c43f46c335f9fceccb5b2fc4e40b91df1b` |
| 6 | `theorem` | [polygonMap_congr](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/polygonmap-congr--43890d93f96fde481395b5d0.md) | 54 | `result-track:43890d93f96fde481395b5d0daea57045faf8f53aad6baf0ee773ea3029b4b9d` |
| 7 | `theorem` | [polygon_hits_cell](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/polygon-hits-cell--7782a3250802afd4a4d84259.md) | 66 | `result-track:7782a3250802afd4a4d84259e57ea404658d861e50839a8bc0170ae7a28e5adc` |
| 8 | `theorem` | [polygon_range](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/polygon-range--e19e703b1d4768274ef31f26.md) | 71 | `result-track:e19e703b1d4768274ef31f268342b2efc8f6af79abfe0a506f010c7ff709eeb0` |
| 9 | `def` | [sourceMap](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/sourcemap--00a8281d69a2d0a827b1735f.md) | 86 | `declaration-track:00a8281d69a2d0a827b1735f5382302be08ff4c0f73a0e2dc370ecacbd7b27fb` |
| 10 | `def` | [vertexMotion](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/vertexmotion--b82646437c6552032903fcd2.md) | 90 | `declaration-track:b82646437c6552032903fcd2da801e24d87f10fe0b5c557cd78a2878417e17ca` |
| 11 | `def` | [deformationCell](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/deformationcell--ba90da5f3ea352eae400b650.md) | 96 | `declaration-track:ba90da5f3ea352eae400b650ba81ceaf57b7f6abad259dd5f64aa699dd5b0c6e` |
| 12 | `def` | [joined](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/joined--67341ba10cf2eca707eac548.md) | 103 | `declaration-track:67341ba10cf2eca707eac548d0731338278cb04e7412485fed39ac345bbab483` |
| 13 | `theorem` | [joined_source](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/joined-source--a031c96f5fb84e7908568a85.md) | 108 | `result-track:a031c96f5fb84e7908568a85c6962b6b5aab7b47867a6df097dbe5628a8a3ec5` |
| 14 | `theorem` | [joined_polygon](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/joined-polygon--4306f9b9d3a6e06d85b93f1d.md) | 118 | `result-track:4306f9b9d3a6e06d85b93f1d90d723c2a1bd9a61ba534af9f0ee1d812ef2260b` |
| 15 | `def` | [homotopy](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/homotopy--af48eb952a8875498a899e92.md) | 126 | `declaration-track:af48eb952a8875498a899e9210241ae27e2e394dbf7a683247b7a61acb8f13f1` |
| 16 | `theorem` | [homotopy_closed](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/homotopy-closed--57e03b8a80aeb92317055ce7.md) | 134 | `result-track:57e03b8a80aeb92317055ce70afa2baa26be69f41cc0ac41cccf414003c4ff05` |
| 17 | `def` | [CellNonzero](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/cellnonzero--c7af2d82f0fc661dbeb38078.md) | 140 | `declaration-track:c7af2d82f0fc661dbeb380782dc90cc6486d62ba065bffb293972a03b9b9ce8e` |
| 18 | `theorem` | [homotopy_nonzero](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/homotopy-nonzero--53f7dbd2425a75eec642a627.md) | 144 | `result-track:53f7dbd2425a75eec642a6273875f537299d4c09b8ed91ad480afa2ad5e36a76` |
| 19 | `def` | [freeHomotopy](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/freehomotopy--bb94b2ce4bf69319a524f05c.md) | 159 | `declaration-track:bb94b2ce4bf69319a524f05cb262600def87365380da93b5299d450bdb61d179` |
| 20 | `abbrev` | [PuncturedPlane](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/puncturedplane--cf1ccf29650b827fb79df22e.md) | 168 | `declaration-track:cf1ccf29650b827fb79df22efe5570ab5ae99c3efae74689b351cb241c302584` |
| 21 | `def` | [sourceLift](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/sourcelift--0a4263b44ac7a90e37cddcab.md) | 170 | `declaration-track:0a4263b44ac7a90e37cddcab1704f1b86af30b2d0525dcd3938bb8d18dba821d` |
| 22 | `def` | [polygonLift](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/polygonlift--64a2a398ccb26cc0fb18ba19.md) | 177 | `declaration-track:64a2a398ccb26cc0fb18ba193a6558ff3e2eaeba8686d6f3e82dd6d308b17bf9` |
| 23 | `def` | [puncturedHomotopy](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/puncturedhomotopy--bc735eeae11cdb76aa6b6bbc.md) | 186 | `declaration-track:bc735eeae11cdb76aa6b6bbc7ffe22a2c74ea4209f1eb764a4f6ae7b3536d6fa` |
| 24 | `theorem` | [moving_basepoint](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/moving-basepoint--a27f2a0143bb67d294ea282b.md) | 198 | `result-track:a27f2a0143bb67d294ea282bc5451a291c37169b05dd177406b7db7627422388` |
| 25 | `theorem` | [constant_polygon](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/declarations/constant-polygon--d6646ec4545fdec18679c08c.md) | 204 | `result-track:d6646ec4545fdec18679c08c99d0ab6581b23473c927e8ee4b8bf1873204740e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
