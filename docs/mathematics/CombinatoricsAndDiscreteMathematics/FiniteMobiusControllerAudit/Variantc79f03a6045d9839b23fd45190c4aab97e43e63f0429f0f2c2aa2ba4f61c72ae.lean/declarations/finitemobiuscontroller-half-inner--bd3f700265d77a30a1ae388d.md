# finiteMobiusController_half_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a302a79a-c1e6-92cd-3d86-9238e236bd80",
  "kind": "theorem",
  "lexical_name": "finiteMobiusController_half_inner",
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
  "slug": "finitemobiuscontroller-half-inner--bd3f700265d77a30a1ae388d",
  "source": {
    "blob": "63f480838012021523e05b765cc48c32151f0a0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd3f700265d77a30a1ae388d5ebbfc37f0efcdab621913ee1f60ebd9fcc6f546",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a302a79a-c1e6-92cd-3d86-9238e236bd80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteMobiusController_half_inner (X : ℕ) (hX : 2 ≤ X) (p : H) :
    inner ℂ (exponentialVector (1 / 2) (by norm_num)) (finiteMobiusController X p) = 0 := by
  let e := exponentialVector (1 / 2) (by norm_num)
  have hsum :
      inner ℂ e (∑ n ∈ Finset.Icc 1 X,
        ((ArithmeticFunction.moebius n : ℂ) / (Real.sqrt (n : ℝ) : ℂ)) •
          causalShift (Real.log (n : ℝ)) p) =
        (mobiusReciprocalSum X : ℂ) * inner ℂ e p := by
    rw [inner_sum]
    unfold mobiusReciprocalSum
    push_cast
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n hn
    have hn1 := (Finset.mem_Icc.mp hn).1
    rw [inner_smul_right]
    change _ * inner ℂ (exponentialVector (1 / 2) _) (causalShift _ p) = _
    rw [causalShift_half_inner n hn1 p, ← mul_assoc]
    have hs : (Real.sqrt (n : ℝ) : ℂ) * (Real.sqrt (n : ℝ) : ℂ) = (n : ℂ) := by
      exact_mod_cast Real.mul_self_sqrt (Nat.cast_nonneg n)
    rw [← one_div (Real.sqrt (n : ℝ) : ℂ), div_mul_div_comm, mul_one, hs]
  have hsX : (Real.sqrt (X : ℝ) : ℂ) ≠ 0 := by
    exact_mod_cast (Real.sqrt_pos.mpr (show 0 < (X : ℝ) by exact_mod_cast (show 0 < X by omega))).ne'
  change inner ℂ e (_ - _) = 0
  rw [inner_sub_right, hsum, inner_smul_right]
  change _ - _ * inner ℂ (exponentialVector (1 / 2) _) (causalShift _ p) = 0
  rw [causalShift_half_inner X (by omega) p]
  push_cast
  have hcancel : (Real.sqrt (X : ℝ) : ℂ) * (mobiusReciprocalSum X : ℂ) *
      ((Real.sqrt (X : ℝ) : ℂ)⁻¹ * inner ℂ e p) =
        (mobiusReciprocalSum X : ℂ) * inner ℂ e p := by
    calc
      _ = ((Real.sqrt (X : ℝ) : ℂ) * (Real.sqrt (X : ℝ) : ℂ)⁻¹) *
          ((mobiusReciprocalSum X : ℂ) * inner ℂ e p) := by ring
      _ = _ := by rw [mul_inv_cancel₀ hsX, one_mul]
  exact sub_eq_zero.mpr hcancel.symm

/-- The complete actual output of this family retains the nonzero residual floor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63f480838012021523e05b765cc48c32151f0a0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
