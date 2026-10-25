# TypeIIBilinearSurgeryState.packetMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36d2eebfa3955602ea963be1957d39b42588c757df1156f7915710f012d7a161",
  "kind": "def",
  "lexical_name": "TypeIIBilinearSurgeryState.packetMatrix",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "typeiibilinearsurgerystate-packetmatrix--a166a973b43b095ed585848e",
  "source": {
    "blob": "70d38d5a5a05a7a4f6b70780311f8dee18429224",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 216,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant0b23f7567e6412f395028239be09714325caf22516d1d227cad12b3681dfc7e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a166a973b43b095ed585848ec17a2505b306074c04675d6035f7f1bb94a8bf00",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant0b23f7567e6412f395028239be09714325caf22516d1d227cad12b3681dfc7e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36d2eebfa3955602ea963be1957d39b42588c757df1156f7915710f012d7a161`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TypeIIBilinearSurgeryState.packetMatrix {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    (state : TypeIIBilinearSurgeryState scale) (x : ℕ) :
    Matrix scale.packetData.Left scale.packetData.Right ℂ :=
  fun left right ↦
    inner ℂ (state.leftSynthesis (EuclideanSpace.single left 1))
      (state.incidence x
        (state.rightSynthesis (EuclideanSpace.single right 1)))

/-- Expanding the coordinate sums recovers the intrinsic Hilbert pairing.
This holds for every state, not only the canonical initial state. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant0b23f7567e6412f395028239be09714325caf22516d1d227cad12b3681dfc7e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant0b23f7567e6412f395028239be09714325caf22516d1d227cad12b3681dfc7e6.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70d38d5a5a05a7a4f6b70780311f8dee18429224` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
