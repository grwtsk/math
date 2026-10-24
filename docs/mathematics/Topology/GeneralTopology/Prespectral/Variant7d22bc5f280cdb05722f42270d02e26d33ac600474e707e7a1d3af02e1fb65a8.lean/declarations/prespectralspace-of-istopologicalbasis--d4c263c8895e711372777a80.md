# PrespectralSpace.of_isTopologicalBasis'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04303b7a4c29be625dff10e9501a4978381bdbee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f129bdd7-c3d8-184f-a838-a462cd41380a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c16fd96d-5f07-4fe9-92ef-f022155c263d",
  "kind": "lemma",
  "lexical_name": "PrespectralSpace.of_isTopologicalBasis'",
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
  "slug": "prespectralspace-of-istopologicalbasis--d4c263c8895e711372777a80",
  "source": {
    "blob": "04303b7a4c29be625dff10e9501a4978381bdbee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 37,
    "path": "GRWTSK/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4c263c8895e711372777a807d060bc79c63592de4ba4f7776ccde79d31d3b8e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c16fd96d-5f07-4fe9-92ef-f022155c263d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PrespectralSpace.of_isTopologicalBasis' {ι : Type*} {b : ι → Set X}
    (basis : IsTopologicalBasis (Set.range b)) (isCompact_basis : ∀ i, IsCompact (b i)) :
    PrespectralSpace X :=
  .of_isTopologicalBasis basis (by aesop)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04303b7a4c29be625dff10e9501a4978381bdbee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
