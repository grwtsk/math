# det_bordered_expand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fe0ff29-0d52-27b1-bbb0-6217a562ba1b",
  "kind": "theorem",
  "lexical_name": "det_bordered_expand",
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
  "slug": "det-bordered-expand--5865102b6cb4b720d14f1e06",
  "source": {
    "blob": "369e038c276f1f9c93b827fb10e121845c466086",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 115,
    "path": "GRWTSK/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5865102b6cb4b720d14f1e068663416c22b15df83bfb0402525fd5e66ddb9a48",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fe0ff29-0d52-27b1-bbb0-6217a562ba1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_bordered_expand (α : Fin (p + 1) → Fin n) (i j : Fin n) :
    bminor A i j α =
      pminor A α * A i j - ∑ s : Fin (p + 1), bminor A i (α s) (s.removeNth α) * A (α s) j := calc
  _ = A i j * pminor A α +
        ∑ s : Fin (p + 1), (-1 : R) ^ (s.val + 1) * A (α s) j *
          (A.submatrix (Fin.cons i (s.removeNth α)) α).det := by
      rw [bminor, Matrix.det_succ_column_zero, Fin.sum_univ_succ]; simp
  _ = pminor A α * A i j +
        ∑ s : Fin (p + 1),
          ((-1 : R) ^ (s.val + 1) *
            (A.submatrix (Fin.cons i (s.removeNth α)) α).det) * A (α s) j := by
    simp only [mul_comm (A i j), mul_right_comm]
  _ = pminor A α * A i j +
      ∑ s : Fin (p + 1), -(bminor A i (α s) (s.removeNth α) * A (α s) j) := by
    simp only [det_submatrix_removeNth_eq_sign_mul_bminor, ← mul_assoc, ← pow_add]; aesop
  _ = pminor A α * A i j -
      ∑ s : Fin (p + 1), bminor A i (α s) (s.removeNth α) * A (α s) j := by
    simp only [Finset.sum_neg_distrib, sub_eq_add_neg]

/-- A bordered minor is zero when its border column already occurs in the word. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `369e038c276f1f9c93b827fb10e121845c466086` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
