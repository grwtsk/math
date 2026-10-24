# lt_rank_of_lt_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "331a576de2625fc8e20dbb3cc7d2280d970639d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56ccb973-3e68-6b94-1ad1-3d984db1ef8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07fb6b74-90ea-9351-baca-151e34e83a2f",
  "kind": "theorem",
  "lexical_name": "lt_rank_of_lt_finrank",
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
  "slug": "lt-rank-of-lt-finrank--2e4ffde8b1fead5e2a9cae42",
  "source": {
    "blob": "331a576de2625fc8e20dbb3cc7d2280d970639d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e4ffde8b1fead5e2a9cae42e7e832a0e00f520b69441a797154571448b0fdb7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07fb6b74-90ea-9351-baca-151e34e83a2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_rank_of_lt_finrank {n : ℕ} (h : n < finrank R M) : ↑n < Module.rank R M := by
  rwa [← Cardinal.toNat_lt_iff_lt_of_lt_aleph0, toNat_natCast]
  · exact nat_lt_aleph0 n
  · contrapose! h
    rw [finrank, Cardinal.toNat_apply_of_aleph0_le h]
    exact n.zero_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finrank/Variant83af00540f5a141f26781c60bd26368434e427fb5e43cc2f8271122612bd7781.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `331a576de2625fc8e20dbb3cc7d2280d970639d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
