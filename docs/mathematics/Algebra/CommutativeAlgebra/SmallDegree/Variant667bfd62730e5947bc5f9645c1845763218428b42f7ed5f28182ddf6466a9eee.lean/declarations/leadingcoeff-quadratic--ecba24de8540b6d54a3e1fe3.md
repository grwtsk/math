# leadingCoeff_quadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "478c58f0d4a65a69456cfc5be216cdc66a7dcb62",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:195c7539-c9e9-5aba-7959-95a9eb8ef86a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4b92d53-a935-23ea-fd75-9aadab7e908a",
  "kind": "theorem",
  "lexical_name": "leadingCoeff_quadratic",
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
  "slug": "leadingcoeff-quadratic--ecba24de8540b6d54a3e1fe3",
  "source": {
    "blob": "478c58f0d4a65a69456cfc5be216cdc66a7dcb62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 114,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecba24de8540b6d54a3e1fe3d31ef414d9e44ffb5546932c0d206330ff76f8aa",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4b92d53-a935-23ea-fd75-9aadab7e908a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leadingCoeff_quadratic (ha : a ≠ 0) : leadingCoeff (C a * X ^ 2 + C b * X + C c) = a := by
  rw [add_assoc, add_comm, leadingCoeff_add_of_degree_lt <| degree_linear_lt_degree_C_mul_X_sq ha,
    leadingCoeff_C_mul_X_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SmallDegree/Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `478c58f0d4a65a69456cfc5be216cdc66a7dcb62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
