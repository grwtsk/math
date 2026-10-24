# sqLe_add_mixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4036cf56-e44b-3400-def6-485a90106796",
  "kind": "theorem",
  "lexical_name": "sqLe_add_mixed",
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
  "slug": "sqle-add-mixed--2a8c791167f584e9ec65f0bb",
  "source": {
    "blob": "c0a5bdb580d82bb290f3cfc0d4850611845c94cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 442,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant1adf26c84c1025a6de6a9c9f99d95e43ced1f5ce2629b93e55bd0349e25229f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a8c791167f584e9ec65f0bb01cf6659da7b0ad3049585e5433a686c07a05b99",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant1adf26c84c1025a6de6a9c9f99d95e43ced1f5ce2629b93e55bd0349e25229f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4036cf56-e44b-3400-def6-485a90106796`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqLe_add_mixed {c d x y z w : ℕ} (xy : SqLe x c y d) (zw : SqLe z c w d) :
    c * (x * z) ≤ d * (y * w) :=
  Nat.mul_self_le_mul_self_iff.2 <| by
    simpa [mul_comm, mul_left_comm] using mul_le_mul xy zw (Nat.zero_le _) (Nat.zero_le _)
#align zsqrtd.sq_le_add_mixed Zsqrtd.sqLe_add_mixed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant1adf26c84c1025a6de6a9c9f99d95e43ced1f5ce2629b93e55bd0349e25229f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant1adf26c84c1025a6de6a9c9f99d95e43ced1f5ce2629b93e55bd0349e25229f9.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0a5bdb580d82bb290f3cfc0d4850611845c94cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
