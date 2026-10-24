# mk_denom_ne_zero_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cfe75c22ec9c6f6ac810b97a48a74d1c4d1a932",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55d8147aae66cf29f38e84ec71d0303f5abb37228310f9704870a17efd997819.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5355075a-513a-348b-ffb6-636c0b6d63c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce9c6936-c8e5-a468-84a5-6d94caceae04",
  "kind": "theorem",
  "lexical_name": "mk_denom_ne_zero_of_ne_zero",
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
  "slug": "mk-denom-ne-zero-of-ne-zero--e535e5612774940a062eb629",
  "source": {
    "blob": "6cfe75c22ec9c6f6ac810b97a48a74d1c4d1a932",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 377,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant55d8147aae66cf29f38e84ec71d0303f5abb37228310f9704870a17efd997819.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e535e5612774940a062eb629077bc24bc8701e7df42b8cdcbcd60687c3174da2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant55d8147aae66cf29f38e84ec71d0303f5abb37228310f9704870a17efd997819.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce9c6936-c8e5-a468-84a5-6d94caceae04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_denom_ne_zero_of_ne_zero {q : ℚ} {n d : ℤ} (hq : q ≠ 0) (hqnd : q = n /. d) : d ≠ 0 :=
  fun this => hq <| by simpa [this] using hqnd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant55d8147aae66cf29f38e84ec71d0303f5abb37228310f9704870a17efd997819.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant55d8147aae66cf29f38e84ec71d0303f5abb37228310f9704870a17efd997819.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cfe75c22ec9c6f6ac810b97a48a74d1c4d1a932` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
