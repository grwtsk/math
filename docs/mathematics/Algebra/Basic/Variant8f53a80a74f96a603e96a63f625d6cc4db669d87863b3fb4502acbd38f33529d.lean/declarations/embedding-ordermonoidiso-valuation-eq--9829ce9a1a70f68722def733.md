# embedding_orderMonoidIso_valuation_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4039b8556d8511892728b54bb257ff71e8b823b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0482524-a0ac-83ee-086d-c77e8d20c3c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f067c34-2989-144e-480d-ab86577c0446",
  "kind": "lemma",
  "lexical_name": "embedding_orderMonoidIso_valuation_eq",
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
  "slug": "embedding-ordermonoidiso-valuation-eq--9829ce9a1a70f68722def733",
  "source": {
    "blob": "a4039b8556d8511892728b54bb257ff71e8b823b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1194,
    "line": 1190,
    "path": "GRWTSK/Algebra/Basic/Variant8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9829ce9a1a70f68722def7335567ace9fa8c547007876e756e00801ced6394b1",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f067c34-2989-144e-480d-ab86577c0446`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1190–1194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma embedding_orderMonoidIso_valuation_eq (γ : ValueGroupWithZero R) :
    embedding (orderMonoidIso (valuation R) γ) = γ :=
  embedding_embed_valuation_eq γ

/-- The map `orderMonoidIso v` is strictly monotone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant8f53a80a74f96a603e96a63f625d6cc4db669d87863b3fb4502acbd38f33529d.lean#L1190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4039b8556d8511892728b54bb257ff71e8b823b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
