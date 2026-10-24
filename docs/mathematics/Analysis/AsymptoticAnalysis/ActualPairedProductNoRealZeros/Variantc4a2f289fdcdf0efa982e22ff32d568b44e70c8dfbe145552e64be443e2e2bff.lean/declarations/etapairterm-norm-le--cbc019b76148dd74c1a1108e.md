# etaPairTerm_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20524e95786b7a57d28806272d7dfa253f85ec3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ac5757a-488d-6a31-baae-f0288721beb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d15a3273-2d2f-35f3-aefb-287f0db50b5a",
  "kind": "theorem",
  "lexical_name": "etaPairTerm_norm_le",
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
  "slug": "etapairterm-norm-le--cbc019b76148dd74c1a1108e",
  "source": {
    "blob": "20524e95786b7a57d28806272d7dfa253f85ec3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 50,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbc019b76148dd74c1a1108e8715d3ca0cec047d6053580871fe4a58c376cbf4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d15a3273-2d2f-35f3-aefb-287f0db50b5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem etaPairTerm_norm_le {δ R : ℝ} (hδ : 0 < δ)
    {s : ℂ} (hsre : δ ≤ s.re) (hsnorm : ‖s‖ ≤ R) (n : ℕ) :
    ‖etaPairTerm n s‖ ≤
      R * ((2 * n + 1 : ℕ) : ℝ) ^ (-δ - 1) := by
  let a : ℝ := (2 * n + 1 : ℕ)
  let b : ℝ := (2 * n + 2 : ℕ)
  have ha : 1 ≤ a := by simp [a]
  have hab : a ≤ b := by simp [a, b]
  have hs0 : -s ≠ 0 :=
    neg_ne_zero.mpr (ne_zero_of_re_pos (hδ.trans_le hsre))
  have hderiv (x : ℝ) (hx : x ∈ Icc a b) :
      HasDerivWithinAt (fun y : ℝ => (y : ℂ) ^ (-s))
        ((-s) * (x : ℂ) ^ (-s - 1)) (Icc a b) x :=
    (hasDerivAt_ofReal_cpow_const
      (lt_of_lt_of_le zero_lt_one (ha.trans hx.1)).ne' hs0).hasDerivWithinAt
  have hbound (x : ℝ) (hx : x ∈ Icc a b) :
      ‖(-s) * (x : ℂ) ^ (-s - 1)‖ ≤
        R * a ^ (-δ - 1) := by
    have hxpos : 0 < x := lt_of_lt_of_le zero_lt_one (ha.trans hx.1)
    have hexp_nonpos : (-s.re - 1 : ℝ) ≤ 0 := by linarith
    have hbase : x ^ (-s.re - 1) ≤ a ^ (-s.re - 1) :=
      Real.rpow_le_rpow_of_nonpos
        (lt_of_lt_of_le zero_lt_one ha) hx.1 hexp_nonpos
    have hexp : a ^ (-s.re - 1) ≤ a ^ (-δ - 1) :=
      Real.rpow_le_rpow_of_exponent_le ha (by linarith)
    rw [norm_mul, norm_neg, Complex.norm_cpow_eq_rpow_re_of_pos hxpos]
    simp only [sub_re, neg_re, one_re]
    exact mul_le_mul hsnorm (hbase.trans hexp)
      (Real.rpow_nonneg hxpos.le _) ((norm_nonneg s).trans hsnorm)
  have hmv := Convex.norm_image_sub_le_of_norm_hasDerivWithin_le
    (s := Icc a b) (x := a) (y := b)
    (f := fun x : ℝ => (x : ℂ) ^ (-s))
    (f' := fun x : ℝ => (-s) * (x : ℂ) ^ (-s - 1))
    hderiv hbound (convex_Icc a b)
    (left_mem_Icc.mpr hab) (right_mem_Icc.mpr hab)
  have hba : b - a = 1 := by norm_num [a, b]
  rw [Real.norm_eq_abs, abs_of_nonneg (sub_nonneg.mpr hab), hba, mul_one] at hmv
  have hmv' :
      ‖(a : ℂ) ^ (-s) - (b : ℂ) ^ (-s)‖ ≤
        R * a ^ (-δ - 1) := by
    rw [← norm_neg]
    simpa [a, b] using hmv
  simpa [etaPairTerm, a, b] using hmv'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20524e95786b7a57d28806272d7dfa253f85ec3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
