# norm_Bfn_le

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
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:405ce42d-aa11-2d76-7a9a-c65617899211",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5885da35-a6d3-59df-e448-3fac64186dea",
  "kind": "theorem",
  "lexical_name": "norm_Bfn_le",
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
  "slug": "norm-bfn-le--4ae7c7879041526b67be92fc",
  "source": {
    "blob": "73d287e15c2b4042e99aa14e63e405cf8c577743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 219,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ae7c7879041526b67be92fc83f58b20611dc61a526d9f4fcf7cd0f39ccb2bfd",
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

Occurrence: `result:5885da35-a6d3-59df-e448-3fac64186dea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_Bfn_le : ∃ B₀ : ℝ, 0 ≤ B₀ ∧ ∀ t : ℝ, ‖Bfn (((5/4 : ℝ) : ℂ) + t * I)‖ ≤ B₀ := by
  have hsum : Summable (fun n : ℕ =>
      ‖LSeries.term (fun n => ((Λ n * Real.log n : ℝ) : ℂ)) (((5/4:ℝ):ℂ)) n‖) :=
    summable_norm_iff.mpr (summable_Bfn (s := ((5/4:ℝ):ℂ)) (by simp; norm_num))
  refine ⟨∑' n : ℕ, ‖LSeries.term (fun n => ((Λ n * Real.log n : ℝ) : ℂ)) (((5/4:ℝ):ℂ)) n‖,
    tsum_nonneg fun _ => norm_nonneg _, fun t => ?_⟩
  have hnorm : ∀ n : ℕ, ‖LSeries.term (fun n => ((Λ n * Real.log n : ℝ) : ℂ)) (((5/4:ℝ):ℂ) + t * I) n‖
      = ‖LSeries.term (fun n => ((Λ n * Real.log n : ℝ) : ℂ)) (((5/4:ℝ):ℂ)) n‖ := by
    intro n
    rw [LSeries.norm_term_eq, LSeries.norm_term_eq, re_54, Complex.ofReal_re]
  unfold Bfn LSeries
  calc ‖∑' n, LSeries.term (fun n => ((Λ n * Real.log n : ℝ) : ℂ)) (((5/4:ℝ):ℂ) + t * I) n‖
      ≤ ∑' n, ‖LSeries.term (fun n => ((Λ n * Real.log n : ℝ) : ℂ)) (((5/4:ℝ):ℂ) + t * I) n‖ :=
        norm_tsum_le_tsum_norm (by simp_rw [hnorm]; exact hsum)
    _ = _ := by simp_rw [hnorm]

/-! ## 4. L on the line Re s = 5/4 (Stirling via Zeta23.GammaFacts) -/

section line
open Real in
/-- the complex logarithm near the positive imaginary axis:
‖log(5/8 + i t/2) − (log(t/2) + iπ/2)‖ ≤ 4/t for t ≥ 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d287e15c2b4042e99aa14e63e405cf8c577743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
