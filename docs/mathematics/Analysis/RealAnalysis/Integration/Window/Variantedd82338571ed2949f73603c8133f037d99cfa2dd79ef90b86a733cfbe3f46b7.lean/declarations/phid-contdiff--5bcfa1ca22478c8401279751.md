# phiD_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1bcef77-eb2b-a659-214f-f1a19c2a25bd",
  "kind": "theorem",
  "lexical_name": "phiD_contDiff",
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
  "slug": "phid-contdiff--5bcfa1ca22478c8401279751",
  "source": {
    "blob": "a019f028b82eba44fbc64defaec246667013fd7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bcfa1ca22478c84012797514978a1e1cd32182372a579c7c2602f2a175107a2",
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

Occurrence: `result:c1bcef77-eb2b-a659-214f-f1a19c2a25bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phiD_contDiff (hϱ : TaperProfile ϱ) (h0 : 0 < lam) (h1 : lam ≤ 1) (hw : 0 < w)
    (hwL : 2 * w ≤ L) : ContDiff ℝ 2 (phiD ϱ lam L w) := by
  have hL : 0 < L := by linarith
  rw [contDiff_iff_contDiffAt]
  intro u
  rcases lt_or_ge |u| (2 * L / 3) with hu | hu
  · -- near the support: √(cos) is smooth since cos ≥ some positive bound on a neighbourhood
    unfold phiD
    apply ContDiffAt.mul ?_
      (((Taper.phi_contDiff hϱ hw hwL).of_le (by norm_num)).contDiffAt)
    apply ContDiffAt.sqrt ?_ ?_
    · exact ((Real.contDiff_cos.comp (by fun_prop : ContDiff ℝ 2
        (fun u : ℝ => Real.sqrt 2 * lam * (u / L)))).contDiffAt)
    · -- cos(√2 λ u/L) ≠ 0 for |u| < 2L/3: the argument is < √2·(2/3) < π/2
      have hs32 : Real.sqrt 2 ≤ 3 / 2 := by
        nlinarith [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 2), Real.sqrt_nonneg 2]
      have harg : |Real.sqrt 2 * lam * (u / L)| < π / 2 := by
        rw [abs_mul, abs_div, abs_of_nonneg (by positivity : (0:ℝ) ≤ Real.sqrt 2 * lam),
          abs_of_pos hL]
        have h1' : Real.sqrt 2 * lam ≤ 3 / 2 := by
          calc Real.sqrt 2 * lam ≤ (3/2) * 1 := by
                apply mul_le_mul hs32 h1 h0.le (by norm_num)
            _ = 3 / 2 := mul_one _
        have h2' : |u| / L < 2 / 3 := by
          rw [div_lt_iff₀ hL]
          linarith
        calc Real.sqrt 2 * lam * (|u| / L) ≤ (3/2) * (|u| / L) := by
              apply mul_le_mul_of_nonneg_right h1' (by positivity)
          _ < (3/2) * (2/3) := by
              apply mul_lt_mul_of_pos_left h2' (by norm_num)
          _ = 1 := by norm_num
          _ < π / 2 := by nlinarith [Real.pi_gt_three]
      apply ne_of_gt
      unfold vStar
      apply Real.cos_pos_of_mem_Ioo
      constructor
      · linarith [neg_abs_le (Real.sqrt 2 * lam * (u / L)), harg]
      · linarith [le_abs_self (Real.sqrt 2 * lam * (u / L))]
  · -- |u| ≥ 2L/3 > L/2: φ_D vanishes on a neighbourhood of u
    have hopen : IsOpen {v : ℝ | L / 2 < |v|} := by
      have : {v : ℝ | L / 2 < |v|} = (fun v : ℝ => |v|) ⁻¹' Set.Ioi (L / 2) := rfl
      rw [this]
      exact (continuous_abs).isOpen_preimage _ isOpen_Ioi
    have hmem : u ∈ {v : ℝ | L / 2 < |v|} := by
      simp only [Set.mem_setOf_eq]
      calc L / 2 < 2 * L / 3 := by linarith
        _ ≤ |u| := hu
    apply ContDiffAt.congr_of_eventuallyEq (contDiffAt_const (c := 0))
    filter_upwards [hopen.mem_nhds hmem] with v hv
    exact phiD_eq_zero hϱ hw (le_of_lt hv)

/-- φ_D is nonincreasing in |u|: antitone on [0, ∞). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a019f028b82eba44fbc64defaec246667013fd7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
