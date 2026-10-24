# lsum_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88ea665c3d1888d240ef7c2990991809bc44f9fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a15b08b6-98e8-55d4-2d8c-86195e04bc27",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aad0ad6d-35b4-51b6-4842-53915bfca110",
  "kind": "theorem",
  "lexical_name": "lsum_single",
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
  "slug": "lsum-single--59cb1a05f75896497ff253ea",
  "source": {
    "blob": "88ea665c3d1888d240ef7c2990991809bc44f9fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 377,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59cb1a05f75896497ff253ea8e01fca2206de304f9d6d6522ef34d2de8970b19",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variant3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aad0ad6d-35b4-51b6-4842-53915bfca110`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lsum_single (f : α → M →ₗ[R] N) (i : α) (m : M) :
    Finsupp.lsum S f (Finsupp.single i m) = f i m :=
  Finsupp.sum_single_index (f i).map_zero
#align finsupp.lsum_single Finsupp.lsum_single

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variant3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88ea665c3d1888d240ef7c2990991809bc44f9fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
