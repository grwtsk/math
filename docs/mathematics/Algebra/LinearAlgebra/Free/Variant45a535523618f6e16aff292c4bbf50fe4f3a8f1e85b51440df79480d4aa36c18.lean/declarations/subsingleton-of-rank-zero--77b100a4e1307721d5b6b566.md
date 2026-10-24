# subsingleton_of_rank_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa42efcc-a1da-19f6-e60d-5fa401dfd3bf",
  "kind": "lemma",
  "lexical_name": "subsingleton_of_rank_zero",
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
  "slug": "subsingleton-of-rank-zero--77b100a4e1307721d5b6b566",
  "source": {
    "blob": "25fbad12676c25da82f083b8bb319fc746a6bfdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 176,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77b100a4e1307721d5b6b5666637e60d72951931427d3929eaf4a38de2a035a1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa42efcc-a1da-19f6-e60d-5fa401dfd3bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subsingleton_of_rank_zero (h : Module.rank R M = 0) : Subsingleton M := by
  rw [← Basis.mk_eq_rank'' (Module.Free.chooseBasis R M), Cardinal.mk_eq_zero_iff] at h
  exact (Module.Free.repr R M).subsingleton

/-- See `rank_lt_aleph0` for the inverse direction without `Module.Free R M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Variant45a535523618f6e16aff292c4bbf50fe4f3a8f1e85b51440df79480d4aa36c18.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25fbad12676c25da82f083b8bb319fc746a6bfdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
