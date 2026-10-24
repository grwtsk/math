# pair_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "850ea260fef4099d6dcf145b8d40f40088d18075",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/523a001679e295f44997698b1b72431ef3238d387b04464c6e78040d225bc00f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5dcdbc16-4952-8065-39d4-550fcfd61055",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47fe020f-9cc1-b59a-097a-29b76f917900",
  "kind": "theorem",
  "lexical_name": "pair_bound",
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
  "slug": "pair-bound--293c31fb41180ff1b6161cd1",
  "source": {
    "blob": "850ea260fef4099d6dcf145b8d40f40088d18075",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 32,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroEta/Variant523a001679e295f44997698b1b72431ef3238d387b04464c6e78040d225bc00f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:293c31fb41180ff1b6161cd1bc64f5b9e6a69accbdae2894e570c35352f4c804",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroEta/Variant523a001679e295f44997698b1b72431ef3238d387b04464c6e78040d225bc00f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47fe020f-9cc1-b59a-097a-29b76f917900`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pair_bound {z : ℂ} (hz : 0 < z.re) (n : ℕ) :
    ‖pair z n‖ ≤ ‖z‖ * (2 * n + 1 : ℝ) ^ (-z.re - 1) := by
  have hn : 0 < (2 * n + 1 : ℝ) := by positivity
  have hzn : -z ≠ 0 := neg_ne_zero.mpr (ne_zero_of_re_pos hz)
  have h := norm_image_sub_le_of_norm_deriv_le_segment'
    (f := fun x : ℝ ↦ (x : ℂ) ^ (-z))
    (f' := fun x : ℝ ↦ -z * (x : ℂ) ^ (-z - 1))
    (a := (2 * n + 1 : ℝ)) (b := (2 * n + 2 : ℝ))
    (C := ‖z‖ * (2 * n + 1 : ℝ) ^ (-z.re - 1))
    (fun x hx ↦ (hasDerivAt_ofReal_cpow_const (ne_of_gt (hn.trans_le hx.1)) hzn).hasDerivWithinAt)
    (fun x hx ↦ ?_) (2 * n + 2 : ℝ) (by constructor <;> linarith)
  · rw [norm_sub_rev] at h
    simpa only [pair, ofReal_add, ofReal_mul, ofReal_natCast, ofReal_ofNat, ofReal_one,
      show (2 * n + 2 : ℝ) - (2 * n + 1) = 1 by ring, mul_one] using h
  · rw [norm_mul, norm_neg, norm_cpow_eq_rpow_re_of_pos (hn.trans_le hx.1), sub_re,
      neg_re, one_re]
    exact mul_le_mul_of_nonneg_left
      (Real.rpow_le_rpow_of_nonpos hn hx.1 (by linarith)) (norm_nonneg z)

/-- A uniform summable majorant on bounded sets separated from the imaginary axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroEta/Variant523a001679e295f44997698b1b72431ef3238d387b04464c6e78040d225bc00f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroEta/Variant523a001679e295f44997698b1b72431ef3238d387b04464c6e78040d225bc00f.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `850ea260fef4099d6dcf145b8d40f40088d18075` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
