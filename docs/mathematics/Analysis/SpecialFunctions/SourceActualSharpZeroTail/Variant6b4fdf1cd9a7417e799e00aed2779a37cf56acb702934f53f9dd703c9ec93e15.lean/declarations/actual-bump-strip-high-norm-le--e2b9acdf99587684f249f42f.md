# actual_bump_strip_high_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a02e397d-f818-5e51-803c-16e0d5fad003",
  "kind": "theorem",
  "lexical_name": "actual_bump_strip_high_norm_le",
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
  "slug": "actual-bump-strip-high-norm-le--e2b9acdf99587684f249f42f",
  "source": {
    "blob": "36ccdbea6b7e9095956a28e2a195b536b378f9cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 138,
    "path": "GRWTSK/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant6b4fdf1cd9a7417e799e00aed2779a37cf56acb702934f53f9dd703c9ec93e15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2b9acdf99587684f249f42f6207b4c580a9c3d5e348528b1ba34fd5e6cc0911",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant6b4fdf1cd9a7417e799e00aed2779a37cf56acb702934f53f9dd703c9ec93e15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a02e397d-f818-5e51-803c-16e0d5fad003`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_bump_strip_high_norm_le (A : ℝ) (s : ℂ) (hA : 91 ≤ A)
    (hs : 0 ≤ s.re ∧ s.re ≤ 1) (ht : 4 ≤ |s.im|) :
    ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ≤
      395 * (Real.exp (A / 2) + Real.exp (-A / 2)) / (A ^ 5 * |s.im| ^ 5) := by
  let z : ℂ := (A : ℂ) * (s - 1 / 2)
  have hzr : z.re = A * (s.re - 1 / 2) := by simp [z, Complex.mul_re]
  have hzi : z.im = A * s.im := by simp [z, Complex.mul_im]
  have hl : A * |s.im| ≤ ‖z‖ := by
    simpa only [hzi, abs_mul, abs_of_nonneg (show 0 ≤ A by linarith)] using
      Complex.abs_im_le_norm z
  have hn : 364 ≤ ‖z‖ := by nlinarith
  have hr : |z.re| ≤ A / 2 := by
    rw [hzr]
    apply abs_le.mpr
    constructor <;> nlinarith [hs.1, hs.2]
  have hb := actual_bump_endpoint_scale_norm_le z (by norm_num : (0 : ℝ) < 364) hn
  have hp := exp_pair_le_of_abs_le (by linarith : 0 ≤ A / 2) hr
  have hp' : Real.exp z.re + Real.exp (-z.re) ≤ Real.exp (A / 2) + Real.exp (-A / 2) := by
    simpa only [neg_div] using hp
  have hscl := endpointScale_three_sixty_four_lt.le
  have hf : (Real.exp z.re + Real.exp (-z.re)) * endpointScale 364 ≤
      395 * (Real.exp (A / 2) + Real.exp (-A / 2)) := by
    have h := mul_le_mul hp' hscl (endpointScale_pos (by norm_num)).le (by positivity)
    nlinarith only [h]
  have hpow : A ^ 5 * |s.im| ^ 5 ≤ ‖z‖ ^ 5 := by
    simpa only [mul_pow] using pow_le_pow_left₀ (by positivity) hl 5
  exact hb.trans (div_le_div₀ (by positivity) hf (by positivity) hpow)

/-- A real exponential lower term gives a small explicit uniform endpoint correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant6b4fdf1cd9a7417e799e00aed2779a37cf56acb702934f53f9dd703c9ec93e15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant6b4fdf1cd9a7417e799e00aed2779a37cf56acb702934f53f9dd703c9ec93e15.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36ccdbea6b7e9095956a28e2a195b536b378f9cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
