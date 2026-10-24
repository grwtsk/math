# hasSum_coe_mul_geometric_of_norm_lt_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6a0509ea311c6da87d9732908c1153ca772dccc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 342,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f330ad8d-0aed-0b93-f71b-c800e6f4c619",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:712fdb78-43b3-f9e1-35bc-7e17dda0760a",
  "kind": "theorem",
  "lexical_name": "hasSum_coe_mul_geometric_of_norm_lt_1",
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
  "slug": "hassum-coe-mul-geometric-of-norm-lt-1--10c534a029e2fc862da576dc",
  "source": {
    "blob": "f6a0509ea311c6da87d9732908c1153ca772dccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 342,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10c534a029e2fc862da576dcb4d6363dc461dbec40bac3d398d9cfd4da85d9e6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:712fdb78-43b3-f9e1-35bc-7e17dda0760a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_coe_mul_geometric_of_norm_lt_1 {𝕜 : Type*} [NormedField 𝕜] [CompleteSpace 𝕜] {r : 𝕜}
    (hr : ‖r‖ < 1) : HasSum (fun n ↦ n * r ^ n : ℕ → 𝕜) (r / (1 - r) ^ 2) := by
  have A : Summable (fun n ↦ (n : 𝕜) * r ^ n : ℕ → 𝕜) := by
    simpa only [pow_one] using summable_pow_mul_geometric_of_norm_lt_1 1 hr
  have B : HasSum (r ^ · : ℕ → 𝕜) (1 - r)⁻¹ := hasSum_geometric_of_norm_lt_1 hr
  refine' A.hasSum_iff.2 _
  have hr' : r ≠ 1 := by
    rintro rfl
    simp [lt_irrefl] at hr
  set s : 𝕜 := ∑' n : ℕ, n * r ^ n
  calc
    s = (1 - r) * s / (1 - r) := (mul_div_cancel_left _ (sub_ne_zero.2 hr'.symm)).symm
    _ = (s - r * s) / (1 - r) := by rw [_root_.sub_mul, one_mul]
    _ = (((0 : ℕ) * r ^ 0 + ∑' n : ℕ, (n + 1 : ℕ) * r ^ (n + 1)) - r * s) / (1 - r) := by
      rw [← tsum_eq_zero_add A]
    _ = ((r * ∑' n : ℕ, (n + 1) * r ^ n) - r * s) / (1 - r) := by
      simp [_root_.pow_succ, mul_left_comm _ r, _root_.tsum_mul_left]
    _ = r / (1 - r) ^ 2 := by
      simp [add_mul, tsum_add A B.summable, mul_add, B.tsum_eq, ← div_eq_mul_inv, sq, div_div]
#align has_sum_coe_mul_geometric_of_norm_lt_1 hasSum_coe_mul_geometric_of_norm_lt_1

/-- If `‖r‖ < 1`, then `∑' n : ℕ, n * r ^ n = r / (1 - r) ^ 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a0509ea311c6da87d9732908c1153ca772dccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
