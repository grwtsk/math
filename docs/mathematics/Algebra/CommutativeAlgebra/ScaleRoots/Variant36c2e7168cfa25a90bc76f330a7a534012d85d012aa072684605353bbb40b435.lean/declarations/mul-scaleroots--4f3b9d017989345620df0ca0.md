# mul_scaleRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f007bba-5179-14af-9db0-62ecfe534c50",
  "kind": "lemma",
  "lexical_name": "mul_scaleRoots",
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
  "slug": "mul-scaleroots--4f3b9d017989345620df0ca0",
  "source": {
    "blob": "39eea03aa4745efc5bd2f3e803d1c9455d3325da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 201,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f3b9d017989345620df0ca04fb5f9e6f3fc4b5e383a97f932cde0514b0ead56",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f007bba-5179-14af-9db0-62ecfe534c50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_scaleRoots (p q : R[X]) (r : R) :
    r ^ (natDegree p + natDegree q - natDegree (p * q)) • (p * q).scaleRoots r =
      p.scaleRoots r * q.scaleRoots r := by
  ext n; simp only [coeff_scaleRoots, coeff_smul, smul_eq_mul]
  trans (∑ x ∈ Finset.antidiagonal n, coeff p x.1 * coeff q x.2) *
    r ^ (natDegree p + natDegree q - n)
  · rw [← coeff_mul]
    cases lt_or_ge (natDegree (p * q)) n with
    | inl h => simp only [coeff_eq_zero_of_natDegree_lt h, zero_mul, mul_zero]
    | inr h =>
      rw [mul_comm, mul_assoc, ← pow_add, add_comm, tsub_add_tsub_cancel natDegree_mul_le h]
  · rw [coeff_mul, Finset.sum_mul]
    apply Finset.sum_congr rfl
    simp only [Finset.mem_antidiagonal, coeff_scaleRoots, Prod.forall]
    intro a b e
    cases lt_or_ge (natDegree p) a with
    | inl h => simp only [coeff_eq_zero_of_natDegree_lt h, zero_mul]
    | inr ha =>
      cases lt_or_ge (natDegree q) b with
      | inl h => simp only [coeff_eq_zero_of_natDegree_lt h, zero_mul, mul_zero]
      | inr hb =>
        simp only [← e, mul_assoc, mul_comm (r ^ (_ - a)), ← pow_add]
        rw [add_comm (_ - _), tsub_add_tsub_comm ha hb]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39eea03aa4745efc5bd2f3e803d1c9455d3325da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
