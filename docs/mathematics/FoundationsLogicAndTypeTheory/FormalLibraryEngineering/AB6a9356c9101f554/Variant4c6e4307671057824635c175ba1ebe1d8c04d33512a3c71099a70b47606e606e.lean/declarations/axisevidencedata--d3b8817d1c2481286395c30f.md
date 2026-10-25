# AxisEvidenceData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0cd1095d2f0be599aec7d1a2911f6e865800589b8f70511983b88f8e2328bba0",
  "kind": "structure",
  "lexical_name": "AxisEvidenceData",
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
  "slug": "axisevidencedata--d3b8817d1c2481286395c30f",
  "source": {
    "blob": "de6fe236ea0cd2dd30cde076122598382d80a96d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AB6a9356c9101f554/Variant4c6e4307671057824635c175ba1ebe1d8c04d33512a3c71099a70b47606e606e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3b8817d1c2481286395c30fc25ada6d0b5c15fad264d91cf183643f7567fde6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AB6a9356c9101f554/Variant4c6e4307671057824635c175ba1ebe1d8c04d33512a3c71099a70b47606e606e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0cd1095d2f0be599aec7d1a2911f6e865800589b8f70511983b88f8e2328bba0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AxisEvidenceData
    (conceptId : ConceptId) (Axis : Type) (axis : Axis) where
  evidenceId : EvidenceId
  sourceDigest : Digest

namespace Cell

end Cell

end Mathematics.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AB6a9356c9101f554/Variant4c6e4307671057824635c175ba1ebe1d8c04d33512a3c71099a70b47606e606e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AB6a9356c9101f554/Variant4c6e4307671057824635c175ba1ebe1d8c04d33512a3c71099a70b47606e606e.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6fe236ea0cd2dd30cde076122598382d80a96d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
