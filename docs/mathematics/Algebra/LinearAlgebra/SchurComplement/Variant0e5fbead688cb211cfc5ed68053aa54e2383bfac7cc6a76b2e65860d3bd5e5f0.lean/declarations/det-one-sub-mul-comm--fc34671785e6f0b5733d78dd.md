# det_one_sub_mul_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a95ba0b-ddf0-b381-74f9-2eb4ab19ed85",
  "kind": "theorem",
  "lexical_name": "det_one_sub_mul_comm",
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
  "slug": "det-one-sub-mul-comm--fc34671785e6f0b5733d78dd",
  "source": {
    "blob": "e59d6048d6cb307cdee7c9aa697c59463c0b30b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 450,
    "path": "GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc34671785e6f0b5733d78dd75db225d0fea5843b9bcb1dab11feec266b4fe6e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a95ba0b-ddf0-b381-74f9-2eb4ab19ed85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_one_sub_mul_comm (A : Matrix m n α) (B : Matrix n m α) :
    det (1 - A * B) = det (1 - B * A) := by
  rw [sub_eq_add_neg, ← Matrix.neg_mul, det_one_add_mul_comm, Matrix.mul_neg, ← sub_eq_add_neg]
#align matrix.det_one_sub_mul_comm Matrix.det_one_sub_mul_comm

/-- A special case of the **Matrix determinant lemma** for when `A = I`.

TODO: show this more generally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e59d6048d6cb307cdee7c9aa697c59463c0b30b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
