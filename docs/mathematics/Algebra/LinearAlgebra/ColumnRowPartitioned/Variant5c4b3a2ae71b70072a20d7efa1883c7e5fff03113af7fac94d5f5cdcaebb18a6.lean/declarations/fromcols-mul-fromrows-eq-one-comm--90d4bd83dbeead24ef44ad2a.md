# fromCols_mul_fromRows_eq_one_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b51e268-a72b-8a49-ed49-7ac0cc950e8d",
  "kind": "lemma",
  "lexical_name": "fromCols_mul_fromRows_eq_one_comm",
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
  "slug": "fromcols-mul-fromrows-eq-one-comm--90d4bd83dbeead24ef44ad2a",
  "source": {
    "blob": "e8601dabf9bb81f1f5c31e26c512971f3372652b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 313,
    "path": "GRWTSK/Algebra/LinearAlgebra/ColumnRowPartitioned/Variant5c4b3a2ae71b70072a20d7efa1883c7e5fff03113af7fac94d5f5cdcaebb18a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90d4bd83dbeead24ef44ad2ad4967331b2974cd0489821cf4385c71e3012bde9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ColumnRowPartitioned/Variant5c4b3a2ae71b70072a20d7efa1883c7e5fff03113af7fac94d5f5cdcaebb18a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b51e268-a72b-8a49-ed49-7ac0cc950e8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fromCols_mul_fromRows_eq_one_comm
    [Fintype n₁] [Fintype n₂] [Fintype n] [DecidableEq n] [DecidableEq n₁] [DecidableEq n₂]
    (e : n ≃ n₁ ⊕ n₂)
    (A₁ : Matrix n n₁ R) (A₂ : Matrix n n₂ R) (B₁ : Matrix n₁ n R) (B₂ : Matrix n₂ n R) :
    fromCols A₁ A₂ * fromRows B₁ B₂ = 1 ↔ fromRows B₁ B₂ * fromCols A₁ A₂ = 1 :=
  mul_eq_one_comm_of_equiv e

@[deprecated (since := "2024-12-11")]
alias fromColumns_mul_fromRows_eq_one_comm := fromCols_mul_fromRows_eq_one_comm

/-- The lemma `fromCols_mul_fromRows_eq_one_comm` specialized to the case where the index sets
`n₁` and `n₂`, are the result of subtyping by a predicate and its complement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ColumnRowPartitioned/Variant5c4b3a2ae71b70072a20d7efa1883c7e5fff03113af7fac94d5f5cdcaebb18a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ColumnRowPartitioned/Variant5c4b3a2ae71b70072a20d7efa1883c7e5fff03113af7fac94d5f5cdcaebb18a6.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8601dabf9bb81f1f5c31e26c512971f3372652b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
