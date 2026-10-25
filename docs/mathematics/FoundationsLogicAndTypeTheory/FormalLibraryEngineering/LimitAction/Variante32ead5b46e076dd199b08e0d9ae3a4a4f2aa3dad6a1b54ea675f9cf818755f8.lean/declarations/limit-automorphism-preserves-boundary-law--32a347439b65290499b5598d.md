# limit_automorphism_preserves_boundary_law

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eabd3281af9e0e9365a4c0b423c4008777ca031d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e32ead5b46e076dd199b08e0d9ae3a4a4f2aa3dad6a1b54ea675f9cf818755f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cceb470c-7d71-e836-1509-ee5f6ddc3d0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9985d2f4-3d20-016e-70f8-665dca1a2c35",
  "kind": "theorem",
  "lexical_name": "limit_automorphism_preserves_boundary_law",
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
  "slug": "limit-automorphism-preserves-boundary-law--32a347439b65290499b5598d",
  "source": {
    "blob": "eabd3281af9e0e9365a4c0b423c4008777ca031d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitAction/Variante32ead5b46e076dd199b08e0d9ae3a4a4f2aa3dad6a1b54ea675f9cf818755f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32a347439b65290499b5598d87743bd7811feddbbf18a1ba4d450ae6c7d40480",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitAction/Variante32ead5b46e076dd199b08e0d9ae3a4a4f2aa3dad6a1b54ea675f9cf818755f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9985d2f4-3d20-016e-70f8-665dca1a2c35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limit_automorphism_preserves_boundary_law
    {GroupElement State BoundaryLaw : Type u}
    (certificate :
      LimitAutomorphismBoundaryLaw
        GroupElement State BoundaryLaw)
    (groupElement : GroupElement) :
    certificate.transformedBoundaryLaw
        groupElement certificate.boundaryLaw =
      certificate.boundaryLaw :=
  certificate.preserves groupElement

end Mathematics.StratifiedBoundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitAction/Variante32ead5b46e076dd199b08e0d9ae3a4a4f2aa3dad6a1b54ea675f9cf818755f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitAction/Variante32ead5b46e076dd199b08e0d9ae3a4a4f2aa3dad6a1b54ea675f9cf818755f8.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eabd3281af9e0e9365a4c0b423c4008777ca031d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
