# harmonic_div_twelve_le_absoluteCutoffCostAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:386a2f87-955c-7721-220a-4582a0ce33c9",
  "kind": "theorem",
  "lexical_name": "harmonic_div_twelve_le_absoluteCutoffCostAt",
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
  "slug": "harmonic-div-twelve-le-absolutecutoffcostat--9bd1fdd423a1b8f39eb930a6",
  "source": {
    "blob": "10e79742ae84eaeae4063a8ab2ce30f5c1e0cc22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 130,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant2c29b609bcbf294dbb3422e2f58643f79033d5a6bd5d1ed95a37a3a0f60c995b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bd1fdd423a1b8f39eb930a6d1c837d7e1ed411c6b6bb636676acd7e3d926ae7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant2c29b609bcbf294dbb3422e2f58643f79033d5a6bd5d1ed95a37a3a0f60c995b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:386a2f87-955c-7721-220a-4582a0ce33c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonic_div_twelve_le_absoluteCutoffCostAt (A : ℝ) (U N : ℕ) (hUN : U ≤ N) :
    (harmonic (U / 12) : ℝ) / 12 ≤ absoluteCutoffCostAt A U N := by
  classical
  let S : Finset ℕ := (Finset.Icc 1 (U / 12)).image (fun k ↦ 12 * k - 1)
  have hsub : S ⊆ Finset.Ico 1 U := by
    intro u hu
    rcases Finset.mem_image.mp hu with ⟨k, hk, rfl⟩
    exact twelfth_event_mem_inventory hk
  have hinj : Set.InjOn (fun k : ℕ ↦ 12 * k - 1) (Finset.Icc 1 (U / 12)) := by
    intro k hk l hl hkl
    have hk1 := (Finset.mem_Icc.mp hk).1
    have hl1 := (Finset.mem_Icc.mp hl).1
    omega
  have himage : (∑ u ∈ S, |jointFlux A u N|) =
      ∑ k ∈ Finset.Icc 1 (U / 12), |jointFlux A (12 * k - 1) N| := by
    dsimp [S]
    exact Finset.sum_image hinj
  have hcost : (∑ u ∈ S, |jointFlux A u N|) ≤ absoluteCutoffCostAt A U N := by
    unfold absoluteCutoffCostAt
    apply Finset.sum_le_sum_of_subset_of_nonneg hsub
    intro u _ _
    exact abs_nonneg _
  have hcell : ∀ k ∈ Finset.Icc 1 (U / 12),
      (12 * (k : ℝ))⁻¹ ≤ |jointFlux A (12 * k - 1) N| := by
    intro k hk
    have hk1 := (Finset.mem_Icc.mp hk).1
    have hu := twelfth_event_mem_inventory hk
    have huN : 12 * k - 1 < N := (Finset.mem_Ico.mp hu).2.trans_le hUN
    have hj : 12 * k - 1 + 1 = 12 * k := by omega
    have hfull := twelfth_event_complete_balance A U N hUN hk
    have hflux : jointFlux A (12 * k - 1) N =
        Real.log (12 * k : ℕ) - Real.log (12 * k - 1 : ℕ) := by
      rw [← jointAt_succ A (12 * k - 1) N huN, hj]
      exact hfull
    rw [hflux]
    exact (twelfth_event_log_lower k hk1).trans (le_abs_self _)
  have hsum := Finset.sum_le_sum hcell
  have hharm : (harmonic (U / 12) : ℝ) / 12 =
      ∑ k ∈ Finset.Icc 1 (U / 12), (12 * (k : ℝ))⁻¹ := by
    simp only [harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast,
      Finset.sum_div]
    apply Finset.sum_congr rfl
    intro k _
    simp only [mul_inv_rev, div_eq_mul_inv]
    ring
  rw [hharm]
  exact hsum.trans (himage ▸ hcost)

/-- The literal actual classification cost has the harmonic lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant2c29b609bcbf294dbb3422e2f58643f79033d5a6bd5d1ed95a37a3a0f60c995b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant2c29b609bcbf294dbb3422e2f58643f79033d5a6bd5d1ed95a37a3a0f60c995b.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10e79742ae84eaeae4063a8ab2ce30f5c1e0cc22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
