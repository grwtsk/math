# eraseLead_add_of_degree_lt_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9ca512f7ebd7f5f88060fdb89ffef46e7f3c0fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b0ec46b-14ef-b1dd-131e-a67a9946595d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24c05473-fccc-ac2e-d798-54f48f8ca948",
  "kind": "theorem",
  "lexical_name": "eraseLead_add_of_degree_lt_left",
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
  "slug": "eraselead-add-of-degree-lt-left--dfd77632b46d425b92d35831",
  "source": {
    "blob": "f9ca512f7ebd7f5f88060fdb89ffef46e7f3c0fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 156,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfd77632b46d425b92d35831c4fe906c89462702a400664e880718001ab82b59",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24c05473-fccc-ac2e-d798-54f48f8ca948`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eraseLead_add_of_degree_lt_left {p q : R[X]} (pq : q.degree < p.degree) :
    (p + q).eraseLead = p.eraseLead + q := by
  ext n
  by_cases nd : n = p.natDegree
  · rw [nd, eraseLead_coeff, if_pos (natDegree_add_eq_left_of_degree_lt pq).symm]
    simpa using (coeff_eq_zero_of_degree_lt (lt_of_lt_of_le pq degree_le_natDegree)).symm
  · rw [eraseLead_coeff, coeff_add, coeff_add, eraseLead_coeff, if_neg, if_neg nd]
    rintro rfl
    exact nd (natDegree_add_eq_left_of_degree_lt pq)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9ca512f7ebd7f5f88060fdb89ffef46e7f3c0fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
