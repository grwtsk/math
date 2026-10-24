# integral_inv_add_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21a325dbb2d6adf4ffe058ef03674bd9c1b03cc5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75e8c910-1085-a2ba-41c8-e6ce7112bdd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ccc496ea-07b5-7d79-5f5a-8a421047c6ac",
  "kind": "theorem",
  "lexical_name": "integral_inv_add_eq",
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
  "slug": "integral-inv-add-eq--3bef12189037a6e97dd80bd8",
  "source": {
    "blob": "21a325dbb2d6adf4ffe058ef03674bd9c1b03cc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bef12189037a6e97dd80bd815e5c89a19f4a6f706d4062c40eaf94aecb6ccd8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccc496ea-07b5-7d79-5f5a-8a421047c6ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_inv_add_eq {w : ℂ} (hw : 0 < w.re) {m : ℝ} (hm : 0 ≤ m) :
    ∫ x in m..(m + 1), ((x : ℂ) + w)⁻¹
      = ((m : ℂ) + w)⁻¹ - (1 / 2 : ℂ) / ((m : ℂ) + w) ^ 2 + eps w m := by
  have hmw := add_ne_zero hw hm
  have hcongr : ∫ x in m..(m + 1), ((x : ℂ) + w)⁻¹ = ∫ x in m..(m + 1),
      (((m : ℂ) + w)⁻¹ - ((x - m : ℝ) : ℂ) / ((m : ℂ) + w) ^ 2
        + ((x - m : ℝ) : ℂ) ^ 2 / (((m : ℂ) + w) ^ 2 * ((x : ℂ) + w))) := by
    apply integral_congr
    intro x hx
    rw [uIcc_of_le (by linarith)] at hx
    exact inv_add_expand (add_ne_zero hw (by linarith [hx.1])) hmw
  rw [hcongr]
  have hI : ∀ {f : ℝ → ℂ}, Continuous f → IntervalIntegrable f volume m (m + 1) :=
    fun hf => hf.intervalIntegrable _ _
  have hR : IntervalIntegrable (fun x : ℝ =>
      ((x - m : ℝ) : ℂ) ^ 2 / (((m : ℂ) + w) ^ 2 * ((x : ℂ) + w))) volume m (m + 1) := by
    apply ContinuousOn.intervalIntegrable
    apply ContinuousOn.div (by fun_prop) (by fun_prop)
    intro x hx
    rw [uIcc_of_le (by linarith)] at hx
    exact mul_ne_zero (pow_ne_zero _ hmw) (add_ne_zero hw (by linarith [hx.1]))
  have hmid : ∫ x in m..(m + 1), ((x - m : ℝ) : ℂ) / ((m : ℂ) + w) ^ 2
      = ((1 / 2 : ℝ) : ℂ) * ((((m : ℂ) + w) ^ 2)⁻¹) := by
    have e : (fun x : ℝ => ((x - m : ℝ) : ℂ) / ((m : ℂ) + w) ^ 2)
        = fun x : ℝ => ((x - m : ℝ) : ℂ) * ((((m : ℂ) + w) ^ 2)⁻¹) := by
      funext x; rw [div_eq_mul_inv]
    rw [e, intervalIntegral_mul_const_C, intervalIntegral.integral_ofReal,
      intervalIntegral.integral_comp_sub_right (fun u : ℝ => u) m]
    simp only [sub_self, add_sub_cancel_left, integral_id]
    norm_num
  rw [integral_add ((hI (by fun_prop)).sub (hI (by fun_prop))) hR,
    integral_sub (hI (by fun_prop)) (hI (by fun_prop)), intervalIntegral.integral_const, hmid,
    show m + 1 - m = (1 : ℝ) by ring, one_smul]
  unfold eps
  push_cast
  ring

/-- bound: `‖ε_m‖ ≤ 1/(3 ‖m+w‖² |im w|)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21a325dbb2d6adf4ffe058ef03674bd9c1b03cc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
