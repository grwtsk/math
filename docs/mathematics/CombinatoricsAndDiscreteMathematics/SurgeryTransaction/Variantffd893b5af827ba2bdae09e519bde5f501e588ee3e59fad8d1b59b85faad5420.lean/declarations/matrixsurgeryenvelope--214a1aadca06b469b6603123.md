# MatrixSurgeryEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ba0acdf6f674cbbc5460f986fb37bcf717684b2c54e0f13c6ce60a7659c42f3",
  "kind": "structure",
  "lexical_name": "MatrixSurgeryEnvelope",
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
  "slug": "matrixsurgeryenvelope--214a1aadca06b469b6603123",
  "source": {
    "blob": "13316f1594f85fa83a003da860789405ffd28e44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 27,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Variantffd893b5af827ba2bdae09e519bde5f501e588ee3e59fad8d1b59b85faad5420.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:214a1aadca06b469b6603123e3ccd81056b521343f671f89e28643ceb7e8a92a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Variantffd893b5af827ba2bdae09e519bde5f501e588ee3e59fad8d1b59b85faad5420.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ba0acdf6f674cbbc5460f986fb37bcf717684b2c54e0f13c6ce60a7659c42f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MatrixSurgeryEnvelope
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State) where
  rows : Nat
  columns : Nat
  before : BitMatrix rows columns
  matrixLocus : MatrixLocus rows columns
  surgery : SubmatrixSurgery before matrixLocus
  globalLocus : DAF.Terrain.GlobalSurgeryLocus G
  matrixLocusMapsToGlobal : Prop
  matrixLocusMapsToGlobal_proof : matrixLocusMapsToGlobal

/-- A mesh patch with all dependent before/after meshes retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Variantffd893b5af827ba2bdae09e519bde5f501e588ee3e59fad8d1b59b85faad5420.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Variantffd893b5af827ba2bdae09e519bde5f501e588ee3e59fad8d1b59b85faad5420.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13316f1594f85fa83a003da860789405ffd28e44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
