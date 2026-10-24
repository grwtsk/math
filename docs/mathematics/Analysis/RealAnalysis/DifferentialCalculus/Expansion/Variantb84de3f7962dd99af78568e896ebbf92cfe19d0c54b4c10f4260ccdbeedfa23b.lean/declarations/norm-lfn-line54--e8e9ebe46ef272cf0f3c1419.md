# norm_Lfn_line54

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
      "line": 1068,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9788e212-4274-4868-d723-9931ea5cf438",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4b27ac8-8633-f3ae-ffe4-313747dcd013",
  "kind": "theorem",
  "lexical_name": "norm_Lfn_line54",
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
  "slug": "norm-lfn-line54--e8e9ebe46ef272cf0f3c1419",
  "source": {
    "blob": "73d287e15c2b4042e99aa14e63e405cf8c577743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1111,
    "line": 1068,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8e9ebe46ef272cf0f3c14197f3385c5a6766792bc07d29823e5d834fba4b453",
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

Occurrence: `result:b4b27ac8-8633-f3ae-ffe4-313747dcd013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1068–1111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_Lfn_line54 : ∃ M : ℝ, ∀ t : ℝ, ‖Lfn (((5/4:ℝ):ℂ) + t * I)‖ ≤ M * Real.log (2 + |t|) := by
  -- big positive t
  have hbig : ∀ t : ℝ, 2 ≤ t → ‖Lfn (((5/4:ℝ):ℂ) + t * I)‖ ≤ Real.log t / 2 + 6 := by
    intro t ht
    have ht0 : 0 < t := by linarith
    have h1 := norm_Lfn_sub_Lstar_self_le ht
    have h2 := norm_Lstar_le ht
    have : 8 / t ≤ 4 := by rw [div_le_iff₀ ht0]; linarith
    calc ‖Lfn (((5/4:ℝ):ℂ) + t * I)‖ ≤ ‖Lfn (((5/4:ℝ):ℂ) + t * I) - Lstar t‖ + ‖Lstar t‖ := norm_le_norm_sub_add _ _
      _ ≤ 8 / t + (Real.log t / 2 + 2) := add_le_add h1 h2
      _ ≤ Real.log t / 2 + 6 := by linarith
  -- compact middle
  have hcont : Continuous (fun t : ℝ => Lfn (((5/4:ℝ):ℂ) + t * I)) :=
    continuous_iff_continuousAt.mpr fun t =>
      ((analyticAt_Lfn_of_one_lt (one_lt_re_54 t)).continuousAt).comp_of_eq continuous_line_54.continuousAt rfl
  obtain ⟨M₀, hM₀⟩ := (isCompact_Icc (a := -(2:ℝ)) (b := 2)).exists_bound_of_continuousOn hcont.continuousOn
  have hM₀0 : 0 ≤ M₀ := le_trans (norm_nonneg _) (hM₀ 0 ⟨by norm_num, by norm_num⟩)
  have hlog2 : (1:ℝ) / 2 ≤ Real.log 2 := by linarith [Real.log_two_gt_d9]
  have hlogpos : ∀ t : ℝ, Real.log 2 ≤ Real.log (2 + |t|) := fun t =>
    Real.log_le_log two_pos (by linarith [abs_nonneg t])
  refine ⟨2 * M₀ + 13, fun t => ?_⟩
  have hlt : Real.log |t| ≤ Real.log (2 + |t|) := by
    rcases eq_or_ne t 0 with rfl | ht
    · simp; exact Real.log_nonneg (by norm_num)
    · exact Real.log_le_log (abs_pos.mpr ht) (by linarith)
  have hl0 : 1 / 2 ≤ Real.log (2 + |t|) := hlog2.trans (hlogpos t)
  have key : ∀ u : ℝ, 2 ≤ u → |t| = u → ‖Lfn (((5/4:ℝ):ℂ) + t * I)‖ ≤ Real.log u / 2 + 6 →
      ‖Lfn (((5/4:ℝ):ℂ) + t * I)‖ ≤ (2 * M₀ + 13) * Real.log (2 + |t|) := by
    intro u hu htu hb
    rw [← htu] at hb
    calc ‖Lfn (((5/4:ℝ):ℂ) + t * I)‖ ≤ Real.log |t| / 2 + 6 := hb
      _ ≤ Real.log (2 + |t|) / 2 + 12 * Real.log (2 + |t|) := by linarith
      _ ≤ (2 * M₀ + 13) * Real.log (2 + |t|) := by nlinarith
  rcases le_or_gt 2 t with h | h
  · exact key t h (abs_of_pos (by linarith)) (hbig t h)
  rcases le_or_gt 2 (-t) with h' | h'
  · have hb := hbig (-t) h'
    rw [show (((5/4:ℝ):ℂ) + ((-t:ℝ):ℂ) * I) = conj (((5/4:ℝ):ℂ) + t * I) by rw [conj_s54], Lfn_conj,
      Complex.norm_conj] at hb
    exact key (-t) h' (abs_of_neg (by linarith)) hb
  · have := hM₀ t ⟨by linarith, h.le⟩
    nlinarith

/-- **the archimedean line data for ξ′**: (c, Λ, Λ⋆) = (5/4, L, L⋆). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean#L1068).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d287e15c2b4042e99aa14e63e405cf8c577743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
