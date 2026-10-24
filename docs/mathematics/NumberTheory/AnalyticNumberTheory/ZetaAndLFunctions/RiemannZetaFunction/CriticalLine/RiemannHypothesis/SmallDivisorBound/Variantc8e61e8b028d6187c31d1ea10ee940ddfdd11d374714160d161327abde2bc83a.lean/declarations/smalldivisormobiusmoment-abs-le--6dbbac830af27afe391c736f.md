# smallDivisorMobiusMoment_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00e2caf1-fd6d-64e1-0fe0-331a1e284c0b",
  "kind": "theorem",
  "lexical_name": "smallDivisorMobiusMoment_abs_le",
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
  "slug": "smalldivisormobiusmoment-abs-le--6dbbac830af27afe391c736f",
  "source": {
    "blob": "18becace601b9101db72937bc4b7a39dc8968037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 169,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dbbac830af27afe391c736ffc1d62247fceffc0c4678f843eb4e2a46f0ba283",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00e2caf1-fd6d-64e1-0fe0-331a1e284c0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smallDivisorMobiusMoment_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |smallDivisorMobiusMoment A| ≤ 16 * A + 40 := by
  have hA0 : 0 < A := by linarith
  have hC : 0 ≤ 8 + 20 / A := by positivity
  rw [smallDivisorMobiusMoment_eq_kernel_sum A hA]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 ⌊A ^ 2⌋₊, |realMoebius d * sourceMobiusKernel A d| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 ⌊A ^ 2⌋₊, (8 + 20 / A) * (1 / Real.sqrt d) := by
      apply Finset.sum_le_sum
      intro d hd
      have hd1 : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
      rw [abs_mul]
      calc
        _ ≤ 1 * ((8 + 20 / A) / Real.sqrt d) :=
          mul_le_mul (realMoebius_abs_le_one d) (sourceMobiusKernel_abs_le hA hd1)
            (abs_nonneg _) (by norm_num)
        _ = _ := by ring
    _ = (8 + 20 / A) * ∑ d ∈ Finset.Icc 1 ⌊A ^ 2⌋₊, (1 / Real.sqrt d) :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (8 + 20 / A) * (2 * Real.sqrt ⌊A ^ 2⌋₊) :=
      mul_le_mul_of_nonneg_left (inverse_sqrt_sum_le _) hC
    _ ≤ (8 + 20 / A) * (2 * A) := by
      have hs := Real.sqrt_le_sqrt (Nat.floor_le (sq_nonneg A))
      rw [Real.sqrt_sq hA0.le] at hs
      exact mul_le_mul_of_nonneg_left (by linarith) hC
    _ = _ := by field_simp; ring

/-- The lower Mertens sum retains its zero coefficient at zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18becace601b9101db72937bc4b7a39dc8968037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
