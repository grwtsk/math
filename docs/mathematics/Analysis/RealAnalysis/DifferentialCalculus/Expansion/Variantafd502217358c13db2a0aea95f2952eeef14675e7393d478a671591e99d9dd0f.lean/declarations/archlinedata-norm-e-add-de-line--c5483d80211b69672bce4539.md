# ArchLineData.norm_E_add_dE_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6aa67c71-f163-f4ca-bd73-cd221ed649f6",
  "kind": "theorem",
  "lexical_name": "ArchLineData.norm_E_add_dE_line",
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
  "slug": "archlinedata-norm-e-add-de-line--c5483d80211b69672bce4539",
  "source": {
    "blob": "3e3b9bfcde9101b8f3c28b140c8bb809278cf521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1024,
    "line": 1004,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5483d80211b69672bce45391298046bfe2e7408ed9ab1fa66503e5cf22b689d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6aa67c71-f163-f4ca-bd73-cd221ed649f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1004–1024.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ArchLineData.norm_E_add_dE_line (h : ArchLineData c Λf Lpar)
    (hE : ∀ t : ℝ, EofL Λf ((c:ℂ) + t * I) ≠ 0) :
    ∃ M : ℝ, ∀ t : ℝ, ‖EofL Λf ((c:ℂ) + t * I) + deriv (EofL Λf) ((c:ℂ) + t * I) / EofL Λf ((c:ℂ) + t * I)‖
      ≤ M * Real.log (2 + |t|) := by
  obtain ⟨M, hM⟩ := h.norm_E_line
  obtain ⟨CE, hCE0, hCE⟩ := h.derivE_div_E_uniform hE
  have hlog2 : (1:ℝ) / 2 ≤ Real.log 2 := by linarith [Real.log_two_gt_d9]
  have hlogpos : ∀ t : ℝ, Real.log 2 ≤ Real.log (2 + |t|) := fun t =>
    Real.log_le_log two_pos (by linarith [abs_nonneg t])
  refine ⟨M + 2 * CE, fun t => ?_⟩
  calc _ ≤ ‖EofL Λf ((c:ℂ) + t * I)‖ + ‖deriv (EofL Λf) ((c:ℂ) + t * I) / EofL Λf ((c:ℂ) + t * I)‖ :=
        norm_add_le _ _
    _ ≤ M * Real.log (2 + |t|) + CE := add_le_add (hM t) (hCE t)
    _ ≤ (M + 2 * CE) * Real.log (2 + |t|) := by nlinarith [hlogpos t]

end generic

/-! ## 7. The ξ′ instance: (c, Λ, Λ⋆) = (5/4, L, L⋆); the uniform bound for E′/E under (F2) and the freezing estimate -/

section uniform

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean#L1004).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3b9bfcde9101b8f3c28b140c8bb809278cf521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
