# ArchLineData.norm_E_add_dE_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73d287e15c2b4042e99aa14e63e405cf8c577743",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 996,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f2f631e-43a2-2cba-e681-299e91ab8e12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cf277dc-c8f4-6358-e7b5-96d17f27634f",
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
  "slug": "archlinedata-norm-e-add-de-line--aba3e553261bfadde481c41e",
  "source": {
    "blob": "73d287e15c2b4042e99aa14e63e405cf8c577743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1016,
    "line": 996,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aba3e553261bfadde481c41ef12ef21247dfc39d2f580277b62e773936bc7224",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cf277dc-c8f4-6358-e7b5-96d17f27634f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 996–1016.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean#L996).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d287e15c2b4042e99aa14e63e405cf8c577743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
