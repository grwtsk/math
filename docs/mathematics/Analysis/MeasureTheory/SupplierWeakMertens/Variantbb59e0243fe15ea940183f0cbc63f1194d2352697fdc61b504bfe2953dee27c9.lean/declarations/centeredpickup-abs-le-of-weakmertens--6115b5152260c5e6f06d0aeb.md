# centeredPickup_abs_le_of_weakMertens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8f4b2b9-de96-057c-3984-e143d5bd3b12",
  "kind": "theorem",
  "lexical_name": "centeredPickup_abs_le_of_weakMertens",
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
  "slug": "centeredpickup-abs-le-of-weakmertens--6115b5152260c5e6f06d0aeb",
  "source": {
    "blob": "0f2181af98b4b4d12847e2e6f33ba5d764a007b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 153,
    "path": "GRWTSK/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6115b5152260c5e6f06d0aeb5f04cb3cc90259772a0b3329788664aec38330bc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8f4b2b9-de96-057c-3984-e143d5bd3b12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredPickup_abs_le_of_weakMertens {C A t : ℝ}
    (hC : 0 ≤ C) (hM : WeakMertensBound C) (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) :
    |centeredPickup A t| ≤ 2 * Real.sqrt C * A := by
  have ha : 0 ≤ 2 * Real.log A := mul_nonneg (by norm_num) (Real.log_nonneg hA)
  have ht0 : 0 ≤ t := ha.trans ht.1
  have hApos : 0 < A := by linarith
  have hAsq : 1 ≤ A ^ 2 := by nlinarith
  have hxe : A ^ 2 ≤ Real.exp t := by
    have he : Real.exp (2 * Real.log A) = A ^ 2 := by
      calc
        _ = Real.exp (Real.log A + Real.log A) := by congr 1; ring
        _ = A * A := by rw [Real.exp_add, Real.exp_log hApos]
        _ = _ := by ring
    rw [← he]
    exact Real.exp_le_exp.mpr ht.1
  have hmono : (∫ x in A ^ 2..Real.exp t, recordingEnergy x) ≤
      ∫ x in (1 : ℝ)..Real.exp t, recordingEnergy x :=
    intervalIntegral.integral_mono_interval hAsq hxe le_rfl
      (ae_of_all _ recordingEnergy_nonneg)
      (recordingEnergy_intervalIntegrable (by norm_num) (Real.exp_pos t))
  have henergy : (∫ x in A ^ 2..Real.exp t, recordingEnergy x) ≤ C * t := by
    have hi := hM (Real.exp t) (Real.one_le_exp_iff.mpr ht0)
    rw [Real.log_exp] at hi
    exact hmono.trans hi
  have hsq := (centeredPickup_sq_le_energy hA ht).trans
    (mul_le_mul_of_nonneg_left henergy (sub_nonneg.mpr ht.1))
  have hct : 0 ≤ C * t := mul_nonneg hC ht0
  have hlen : t - 2 * Real.log A ≤ t := by linarith
  have hsq' : |centeredPickup A t| ^ 2 ≤ C * t ^ 2 := by
    exact hsq.trans (by nlinarith [mul_le_mul_of_nonneg_right hlen hct])
  have htA : C * t ^ 2 ≤ 4 * C * A ^ 2 := by
    have hp := mul_le_mul_of_nonneg_left
      (pow_le_pow_left₀ ht0 ht.2 2) hC
    nlinarith
  have hc : Real.sqrt C ^ 2 = C := Real.sq_sqrt hC
  have hbound : 0 ≤ 2 * Real.sqrt C * A := by positivity
  nlinarith [hsq'.trans htA]

/-- The exact original signed meter has the stated uniform linear allowance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f2181af98b4b4d12847e2e6f33ba5d764a007b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
