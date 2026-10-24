# tendsto_lintegral_of_dominated_convergence'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ceb8011-1ffd-b7f8-a053-9e53cbf4fbef",
  "kind": "theorem",
  "lexical_name": "tendsto_lintegral_of_dominated_convergence'",
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
  "slug": "tendsto-lintegral-of-dominated-convergence--09c76198346d5564d10d4b04",
  "source": {
    "blob": "5a2b936a3ea5d10ab3f40084b1f37182b408124a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09c76198346d5564d10d4b0484ff1cca957194b8b890ac2a1e0e76e3fc4c3a20",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ceb8011-1ffd-b7f8-a053-9e53cbf4fbef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_lintegral_of_dominated_convergence' {F : ℕ → α → ℝ≥0∞} {f : α → ℝ≥0∞}
    (bound : α → ℝ≥0∞) (hF_meas : ∀ n, AEMeasurable (F n) μ) (h_bound : ∀ n, F n ≤ᵐ[μ] bound)
    (h_fin : ∫⁻ a, bound a ∂μ ≠ ∞) (h_lim : ∀ᵐ a ∂μ, Tendsto (fun n => F n a) atTop (𝓝 (f a))) :
    Tendsto (fun n => ∫⁻ a, F n a ∂μ) atTop (𝓝 (∫⁻ a, f a ∂μ)) := by
  have : ∀ n, ∫⁻ a, F n a ∂μ = ∫⁻ a, (hF_meas n).mk (F n) a ∂μ := fun n =>
    lintegral_congr_ae (hF_meas n).ae_eq_mk
  simp_rw [this]
  apply
    tendsto_lintegral_of_dominated_convergence bound (fun n => (hF_meas n).measurable_mk) _ h_fin
  · have : ∀ n, ∀ᵐ a ∂μ, (hF_meas n).mk (F n) a = F n a := fun n => (hF_meas n).ae_eq_mk.symm
    have : ∀ᵐ a ∂μ, ∀ n, (hF_meas n).mk (F n) a = F n a := ae_all_iff.mpr this
    filter_upwards [this, h_lim] with a H H'
    simp_rw [H]
    exact H'
  · intro n
    filter_upwards [h_bound n, (hF_meas n).ae_eq_mk] with a H H'
    rwa [H'] at H

/-- **Dominated convergence theorem** for filters with a countable basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a2b936a3ea5d10ab3f40084b1f37182b408124a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
