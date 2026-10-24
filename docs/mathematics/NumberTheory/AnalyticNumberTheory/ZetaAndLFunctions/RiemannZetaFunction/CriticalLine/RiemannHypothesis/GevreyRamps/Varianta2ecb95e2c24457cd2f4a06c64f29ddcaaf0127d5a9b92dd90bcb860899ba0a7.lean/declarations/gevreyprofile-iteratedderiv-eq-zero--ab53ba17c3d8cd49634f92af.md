# GevreyProfile.iteratedDeriv_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0ca2f5d-63a8-5720-8ef1-6616a4461dd6",
  "kind": "lemma",
  "lexical_name": "GevreyProfile.iteratedDeriv_eq_zero",
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
  "slug": "gevreyprofile-iteratedderiv-eq-zero--ab53ba17c3d8cd49634f92af",
  "source": {
    "blob": "52b7f6d2bfef7d2c4c681ff0d256003749e77ca6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab53ba17c3d8cd49634f92af55505bc868105417bb412dd6083d0465f056c15e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0ca2f5d-63a8-5720-8ef1-6616a4461dd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GevreyProfile.iteratedDeriv_eq_zero (hϱ : GevreyProfile s A B ϱ) {i : ℕ} (hi : 1 ≤ i)
    {x : ℝ} (hx : x ∉ Set.Ioo (0:ℝ) 1) : iteratedDeriv i ϱ x = 0 := by
  have hi0 : i ≠ 0 := by omega
  have hcont : Continuous (iteratedDeriv i ϱ) := hϱ.smooth.continuous_iteratedDeriv i (WithTop.coe_le_coe.mpr le_top)
  have hcl : IsClosed {y : ℝ | iteratedDeriv i ϱ y = 0} := isClosed_eq hcont continuous_const
  -- zero on the open pieces
  have h1 : Set.Iio (0:ℝ) ⊆ {y | iteratedDeriv i ϱ y = 0} := by
    intro y hy
    have hev : ϱ =ᶠ[𝓝 y] (fun _ => (0:ℝ)) :=
      Filter.eventually_of_mem (Iio_mem_nhds hy) (fun z hz => hϱ.taper.eq_zero z (le_of_lt hz))
    show iteratedDeriv i ϱ y = 0
    rw [hev.iteratedDeriv_eq i, iteratedDeriv_const, if_neg hi0]
  have h2 : Set.Ioi (1:ℝ) ⊆ {y | iteratedDeriv i ϱ y = 0} := by
    intro y hy
    have hev : ϱ =ᶠ[𝓝 y] (fun _ => (1:ℝ)) :=
      Filter.eventually_of_mem (Ioi_mem_nhds hy) (fun z hz => hϱ.taper.eq_one z (le_of_lt hz))
    show iteratedDeriv i ϱ y = 0
    rw [hev.iteratedDeriv_eq i, iteratedDeriv_const, if_neg hi0]
  -- hence on their closures
  have h1' : Set.Iic (0:ℝ) ⊆ {y | iteratedDeriv i ϱ y = 0} := by
    rw [← closure_Iio]; exact hcl.closure_subset_iff.mpr h1
  have h2' : Set.Ici (1:ℝ) ⊆ {y | iteratedDeriv i ϱ y = 0} := by
    rw [← closure_Ioi]; exact hcl.closure_subset_iff.mpr h2
  simp only [Set.mem_Ioo, not_and_or, not_lt] at hx
  rcases hx with hx | hx
  · exact h1' hx
  · exact h2' hx

/-- pointwise majorant: `|ϱ^{(k)}(x)| ≤ B A^k k^{sk} · 1_{(0,1)}(x)` for `k ≥ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52b7f6d2bfef7d2c4c681ff0d256003749e77ca6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
