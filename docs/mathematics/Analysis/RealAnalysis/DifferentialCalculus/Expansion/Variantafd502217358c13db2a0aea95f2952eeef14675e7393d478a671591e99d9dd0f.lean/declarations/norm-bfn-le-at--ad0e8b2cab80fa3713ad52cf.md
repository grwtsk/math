# norm_Bfn_le_at

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3eaf95fe-9159-49ef-a229-cb0cc4e3a6e8",
  "kind": "theorem",
  "lexical_name": "norm_Bfn_le_at",
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
  "slug": "norm-bfn-le-at--ad0e8b2cab80fa3713ad52cf",
  "source": {
    "blob": "3e3b9bfcde9101b8f3c28b140c8bb809278cf521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 736,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad0e8b2cab80fa3713ad52cf3f1d549152a4247771209483bca94f80cbcd5154",
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

Occurrence: `result:3eaf95fe-9159-49ef-a229-cb0cc4e3a6e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 736–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_Bfn_le_at (hc : 1 < c) : ∃ B₀ : ℝ, 0 ≤ B₀ ∧ ∀ t : ℝ, ‖Bfn ((c:ℂ) + t * I)‖ ≤ B₀ := by
  have hsum : Summable (fun n : ℕ => ‖LSeries.term (fun n => ((Λ n * Real.log n : ℝ) : ℂ)) (c:ℂ) n‖) :=
    summable_norm_iff.mpr (summable_Bfn (s := (c:ℂ)) (by simpa using hc))
  refine ⟨∑' n : ℕ, ‖LSeries.term (fun n => ((Λ n * Real.log n : ℝ) : ℂ)) (c:ℂ) n‖,
    tsum_nonneg fun _ => norm_nonneg _, fun t => ?_⟩
  have hnorm : ∀ n : ℕ, ‖LSeries.term (fun n => ((Λ n * Real.log n : ℝ) : ℂ)) ((c:ℂ) + t * I) n‖
      = ‖LSeries.term (fun n => ((Λ n * Real.log n : ℝ) : ℂ)) (c:ℂ) n‖ := by
    intro n
    rw [LSeries.norm_term_eq, LSeries.norm_term_eq, re_lineC, Complex.ofReal_re]
  unfold Bfn LSeries
  calc ‖∑' n, LSeries.term (fun n => ((Λ n * Real.log n : ℝ) : ℂ)) ((c:ℂ) + t * I) n‖
      ≤ ∑' n, ‖LSeries.term (fun n => ((Λ n * Real.log n : ℝ) : ℂ)) ((c:ℂ) + t * I) n‖ :=
        norm_tsum_le_tsum_norm (by simp_rw [hnorm]; exact hsum)
    _ = _ := by simp_rw [hnorm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean#L736).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3b9bfcde9101b8f3c28b140c8bb809278cf521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
