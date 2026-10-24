# contMDiffOn_contMDiffCoordChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c5c2dc4-6a71-01b3-5adb-3099af51e4a6",
  "kind": "theorem",
  "lexical_name": "contMDiffOn_contMDiffCoordChange",
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
  "slug": "contmdiffon-contmdiffcoordchange--35ff579b0e55532792a38397",
  "source": {
    "blob": "e3533206111b8a53876ce93ea62a1d30d6f5dc61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 676,
    "line": 665,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35ff579b0e55532792a383973c728c1c0f6b3542cf7007d34397c804cb6e051e",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c5c2dc4-6a71-01b3-5adb-3099af51e4a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 665–676.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiffOn_contMDiffCoordChange (he : e ∈ a.pretrivializationAtlas)
    (he' : e' ∈ a.pretrivializationAtlas) :
    ContMDiffOn IB 𝓘(𝕜, F →L[𝕜] F) n (a.contMDiffCoordChange n IB he he')
      (e.baseSet ∩ e'.baseSet) :=
  (Classical.choose_spec (ha.exists_contMDiffCoordChange e he e' he')).1

@[deprecated (since := "2025-01-09")]
alias contMDiffOn_smoothCoordChange := contMDiffOn_contMDiffCoordChange

@[deprecated (since := "2024-11-21")]
alias smoothOn_smoothCoordChange := contMDiffOn_contMDiffCoordChange

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean#L665).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3533206111b8a53876ce93ea62a1d30d6f5dc61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
