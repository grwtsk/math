# esymm_eq_sum_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5af86fead33a24ae77d27522f6afda303c7ee015",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a18e91b0-c5b4-9758-fe14-78ca6b35a7dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3135c681-9a9f-2f6b-55d4-7dd5be3ac30a",
  "kind": "theorem",
  "lexical_name": "esymm_eq_sum_subtype",
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
  "slug": "esymm-eq-sum-subtype--b8e5cd5a7f5b9bbc161071c4",
  "source": {
    "blob": "5af86fead33a24ae77d27522f6afda303c7ee015",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 183,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8e5cd5a7f5b9bbc161071c472f4c1cc4d067a470f2c6e234ca08ae4d433416d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3135c681-9a9f-2f6b-55d4-7dd5be3ac30a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem esymm_eq_sum_subtype (n : ℕ) :
    esymm σ R n = ∑ t : { s : Finset σ // s.card = n }, ∏ i in (t : Finset σ), X i :=
  sum_subtype _ (fun _ => mem_powerset_len_univ_iff) _
#align mv_polynomial.esymm_eq_sum_subtype MvPolynomial.esymm_eq_sum_subtype

/-- We can define `esymm σ R n` as a sum over explicit monomials -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5af86fead33a24ae77d27522f6afda303c7ee015` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
