# integralNormalization_eval₂_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f688ddb-35da-e5d7-a629-281c85bc43b5",
  "kind": "theorem",
  "lexical_name": "integralNormalization_eval₂_eq_zero",
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
  "slug": "integralnormalization-eval-eq-zero--7c280bf6dfc5c3ebc1e00beb",
  "source": {
    "blob": "51de2348bfab70a9b271c437a0836ede18dd5f8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 121,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c280bf6dfc5c3ebc1e00beb2ae2a017f3c37a1b7b6edb068760be234e92f2ab",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f688ddb-35da-e5d7-a629-281c85bc43b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralNormalization_eval₂_eq_zero {p : R[X]} (f : R →+* S) {z : S} (hz : eval₂ f z p = 0)
    (inj : ∀ x : R, f x = 0 → x = 0) :
    eval₂ f (z * f p.leadingCoeff) (integralNormalization p) = 0 :=
  calc
    eval₂ f (z * f p.leadingCoeff) (integralNormalization p) =
        p.support.attach.sum fun i =>
          f (coeff (integralNormalization p) i.1 * p.leadingCoeff ^ i.1) * z ^ i.1 := by
      rw [eval₂_eq_sum, sum_def, support_integralNormalization]
      simp only [mul_comm z, mul_pow, mul_assoc, RingHom.map_pow, RingHom.map_mul]
      exact Finset.sum_attach.symm
    _ =
        p.support.attach.sum fun i =>
          f (coeff p i.1 * p.leadingCoeff ^ (natDegree p - 1)) * z ^ i.1 := by
      by_cases hp : p = 0; · simp [hp]
      have one_le_deg : 1 ≤ natDegree p :=
        Nat.succ_le_of_lt (natDegree_pos_of_eval₂_root hp f hz inj)
      congr with i
      congr 2
      by_cases hi : i.1 = natDegree p
      · rw [hi, integralNormalization_coeff_degree, one_mul, leadingCoeff, ← pow_succ,
          tsub_add_cancel_of_le one_le_deg]
        exact degree_eq_natDegree hp
      · have : i.1 ≤ p.natDegree - 1 :=
          Nat.le_pred_of_lt (lt_of_le_of_ne (le_natDegree_of_ne_zero (mem_support_iff.mp i.2)) hi)
        rw [integralNormalization_coeff_ne_natDegree hi, mul_assoc, ← pow_add,
          tsub_add_cancel_of_le this]
    _ = f p.leadingCoeff ^ (natDegree p - 1) * eval₂ f z p := by
      simp_rw [eval₂_eq_sum, sum_def, fun i => mul_comm (coeff p i), RingHom.map_mul,
               RingHom.map_pow, mul_assoc, ← Finset.mul_sum]
      congr 1
      exact @Finset.sum_attach _ _ p.support _ fun i => f (p.coeff i) * z ^ i
    _ = 0 := by rw [hz, mul_zero]
#align polynomial.integral_normalization_eval₂_eq_zero Polynomial.integralNormalization_eval₂_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51de2348bfab70a9b271c437a0836ede18dd5f8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
