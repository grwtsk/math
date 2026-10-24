# Verification target: GRWTSK.Analysis.Complex.RationalRectangleMesh

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eeae8dbd327f9be4c6af9a290e7188ce25790a92",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalRectangleMesh.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eeae8dbd327f9be4c6af9a290e7188ce25790a92`.

Source path: `GRWTSK/Analysis/Complex/RationalRectangleMesh.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalRectangleMesh.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RectanglePerimeterMesh`](../../../../mathematics/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure`](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Data.List.GetD` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mark](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/mark--cda96167bc4a1d7b8aeeb72a.md) | 28 | `declaration-track:cda96167bc4a1d7b8aeeb72ad79a194dfcd544aaec7113c39a9c37f01cb77ed2` |
| 2 | `def` | [Valid](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/valid--7b53cedad50ad7ec0979a617.md) | 30 | `declaration-track:7b53cedad50ad7ec0979a61719b3dfaaa0645bfb5eea0789878787bea7961ea3` |
| 3 | `instance` | [validDecidable](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/validdecidable--087a0d2cd9e3240db487cb72.md) | 35 | `declaration-track:087a0d2cd9e3240db487cb7205e887930ed12c54556edfb085e5420053130031` |
| 4 | `def` | [check](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/check--49180310121ed1c84db8d772.md) | 39 | `declaration-track:49180310121ed1c84db8d772803d201083b118388527b7d613a1cd5a92f60a30` |
| 5 | `theorem` | [check_iff_valid](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/check-iff-valid--9ed5313c3c019ddcadda61c7.md) | 41 | `result-track:9ed5313c3c019ddcadda61c7ad0514ce04de25c442871814d308380355ee75cc` |
| 6 | `def` | [ramp](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/ramp--11f77ccf6e622168d1f4c7c6.md) | 44 | `declaration-track:11f77ccf6e622168d1f4c7c6e374e3a51f3ddbb14a912207537e9aa4e546738d` |
| 7 | `def` | [point](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/point--55b31f8552d66013b3712a1f.md) | 46 | `declaration-track:55b31f8552d66013b3712a1fca0e5767d45dde37a9d053ed52e1e0533906573f` |
| 8 | `def` | [vertices](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/vertices--18b385da54077bfa6901ec8d.md) | 50 | `declaration-track:18b385da54077bfa6901ec8da08a1c55724e19f8f004c0efbdb8825825c0baab` |
| 9 | `theorem` | [vertices_length](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/vertices-length--ab61597b5e9fc6fd52399510.md) | 53 | `result-track:ab61597b5e9fc6fd523995105f0592033107ed8aa228fe8733c60d584914bd21` |
| 10 | `theorem` | [point_zero](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/point-zero--1a5005789ea1964440303955.md) | 56 | `result-track:1a5005789ea19644403039553878cb5445e64326cc651c9bde09bcee36ed7841` |
| 11 | `theorem` | [point_four](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/point-four--291430491cce401e1a95fa63.md) | 59 | `result-track:291430491cce401e1a95fa63e87f632f405461b14276013a2dd9b2295beb5bb4` |
| 12 | `theorem` | [vertex_at](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/vertex-at--aca90b74fdc4ad95702faf80.md) | 63 | `result-track:aca90b74fdc4ad95702faf80f9cfcc3763de96826961ce2af805497e9a888ccd` |
| 13 | `def` | [marks](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/marks--8e0d7ad67169e9939163b993.md) | 70 | `declaration-track:8e0d7ad67169e9939163b993c487e3147407c86c645f4c4c8d6ea6309b9b54df` |
| 14 | `def` | [rectangle](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/rectangle--79fd151f637638e3d30189ad.md) | 72 | `declaration-track:79fd151f637638e3d30189adfdb975acdf3c8b6e6429a740fdcc127a0a8a6e9c` |
| 15 | `theorem` | [cast_ramp](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/cast-ramp--9cc6f4a8c014b74aa26b88f9.md) | 75 | `result-track:9cc6f4a8c014b74aa26b88f9f14b255dc167f50a3377dbc18d88a486ab9bec41` |
| 16 | `theorem` | [point_cast](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/point-cast--1e67381b796cbbfbdefc4370.md) | 78 | `result-track:1e67381b796cbbfbdefc4370f65a714f70a47d640c63132d398215e8a19f8c4d` |
| 17 | `theorem` | [admissible](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/admissible--a9293643303f1e80f5e8dd36.md) | 83 | `result-track:a9293643303f1e80f5e8dd36957fc5bf2f1030f619525c620b5589d6a03adbe8` |
| 18 | `def` | [points](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/points--31d36f5a17bfefa491e72a0f.md) | 98 | `declaration-track:31d36f5a17bfefa491e72a0f3c3ee600448fa7807ad3b97e09611aab7e0c7ff0` |
| 19 | `theorem` | [curve_eq](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/curve-eq--6447760dd44aeb175b7c17ee.md) | 102 | `result-track:6447760dd44aeb175b7c17ee03b055c7d00785c6c9eb988ec7b4d24bd4fe126c` |
| 20 | `theorem` | [range_eq_boundary](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/range-eq-boundary--832c8eb59d486231d5ddf0d3.md) | 115 | `result-track:832c8eb59d486231d5ddf0d3c6ee0d0156e32d5398417ba0ecc0dfa8fbd55240` |
| 21 | `theorem` | [closed](../../../../mathematics/Analysis/ComplexAnalysis/RationalRectangleMesh.lean/declarations/closed--fb8f56155c312b7ce3eba8be.md) | 122 | `result-track:fb8f56155c312b7ce3eba8beadf274e433fe984a98e33eb708e73d8c6f6a33f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
