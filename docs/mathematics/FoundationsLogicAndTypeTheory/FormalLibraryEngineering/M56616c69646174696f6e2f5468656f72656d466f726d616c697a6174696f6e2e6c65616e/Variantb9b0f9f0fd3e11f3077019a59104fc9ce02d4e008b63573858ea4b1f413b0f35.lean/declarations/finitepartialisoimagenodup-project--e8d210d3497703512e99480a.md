# finitePartialIsoImageNodup_project

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3557649ffefe00c26d0f4e5c89f99633d3cf426",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9b0f9f0fd3e11f3077019a59104fc9ce02d4e008b63573858ea4b1f413b0f35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3064046e-3679-4f97-ac6c-44f70bf927a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97c15945-a22d-c704-50f0-9f0f1330a108",
  "kind": "theorem",
  "lexical_name": "finitePartialIsoImageNodup_project",
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
  "slug": "finitepartialisoimagenodup-project--e8d210d3497703512e99480a",
  "source": {
    "blob": "a3557649ffefe00c26d0f4e5c89f99633d3cf426",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 249,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f5468656f72656d466f726d616c697a6174696f6e2e6c65616e/Variantb9b0f9f0fd3e11f3077019a59104fc9ce02d4e008b63573858ea4b1f413b0f35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8d210d3497703512e99480a2806aabb33d78ceeb4f401922d7bd36894bc57d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f5468656f72656d466f726d616c697a6174696f6e2e6c65616e/Variantb9b0f9f0fd3e11f3077019a59104fc9ce02d4e008b63573858ea4b1f413b0f35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97c15945-a22d-c704-50f0-9f0f1330a108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finitePartialIsoImageNodup_project
    (P : Think.Pipeline.Center.RadoFinitePartialIso.FinitePartialIsoData) :
    P.image.Nodup := by
  exact
    Think.Pipeline.Center.RadoFinitePartialIso.finitePartialIso_image_nodup
      P

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f5468656f72656d466f726d616c697a6174696f6e2e6c65616e/Variantb9b0f9f0fd3e11f3077019a59104fc9ce02d4e008b63573858ea4b1f413b0f35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f5468656f72656d466f726d616c697a6174696f6e2e6c65616e/Variantb9b0f9f0fd3e11f3077019a59104fc9ce02d4e008b63573858ea4b1f413b0f35.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3557649ffefe00c26d0f4e5c89f99633d3cf426` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
