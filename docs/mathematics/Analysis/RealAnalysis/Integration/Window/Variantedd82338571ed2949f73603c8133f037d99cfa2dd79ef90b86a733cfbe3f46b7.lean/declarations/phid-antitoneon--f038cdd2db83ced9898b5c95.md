# phiD_antitoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d087460-4edb-5da7-2ebc-ba0c9046f77b",
  "kind": "theorem",
  "lexical_name": "phiD_antitoneOn",
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
  "slug": "phid-antitoneon--f038cdd2db83ced9898b5c95",
  "source": {
    "blob": "a019f028b82eba44fbc64defaec246667013fd7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 148,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f038cdd2db83ced9898b5c95eebe9a817474a5f844b9c588f480abd215d0c03b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d087460-4edb-5da7-2ebc-ba0c9046f77b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phiD_antitoneOn (hϱ : TaperProfile ϱ) (h0 : 0 < lam) (h1 : lam ≤ 1) (hw : 0 < w)
    (hwL : 2 * w ≤ L) : AntitoneOn (phiD ϱ lam L w) (Set.Ici 0) := by
  have hL : 0 < L := by linarith
  intro x hx y hy hxy
  simp only [Set.mem_Ici] at hx hy
  rcases le_or_gt (L / 2) y with hYL | hYL
  · rw [phiD_eq_zero hϱ hw (by rwa [abs_of_nonneg hy])]
    exact phiD_nonneg hϱ x
  · unfold phiD
    have hcosx : 0 ≤ vStar lam (x / L) := by
      have := cos_factor_ge (u := x) h0 h1 hL (by rw [abs_of_nonneg hx]; linarith)
      linarith
    have hdiv : x / L ≤ y / L := by gcongr
    have hargle : Real.sqrt 2 * lam * (x / L) ≤ Real.sqrt 2 * lam * (y / L) := by
      apply mul_le_mul_of_nonneg_left hdiv (by positivity)
    have hypi : Real.sqrt 2 * lam * (y / L) ≤ π := by
      have hs32 : Real.sqrt 2 ≤ 3 / 2 := by
        nlinarith [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 2), Real.sqrt_nonneg 2]
      have hyd : y / L ≤ 1 / 2 := by
        rw [div_le_iff₀ hL]
        linarith
      calc Real.sqrt 2 * lam * (y / L) ≤ (3 / 2) * 1 * (1 / 2) := by
            apply mul_le_mul (mul_le_mul hs32 h1 h0.le (by norm_num)) hyd (by positivity)
              (by norm_num)
        _ ≤ π := by nlinarith [Real.pi_gt_three]
    refine mul_le_mul ?_ ?_ (Taper.phi_nonneg hϱ y) (Real.sqrt_nonneg _)
    · apply Real.sqrt_le_sqrt
      unfold vStar
      exact Real.cos_le_cos_of_nonneg_of_le_pi (by positivity) hypi hargle
    · unfold Taper.phi
      apply hϱ.monotone
      rw [abs_of_nonneg hx, abs_of_nonneg hy]
      gcongr

/-! ### derivative norms (sentence 1 of §7.1, parenthetical + last clause) -/

/-- generic: an even C¹ function, nonincreasing on [0,∞), with values in [0,1] and support in
[−M, M], has total variation ∫|f'| ≤ 2 (= 2(f(0) − f(M))).  Used for φ_D and φ_D². -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a019f028b82eba44fbc64defaec246667013fd7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
