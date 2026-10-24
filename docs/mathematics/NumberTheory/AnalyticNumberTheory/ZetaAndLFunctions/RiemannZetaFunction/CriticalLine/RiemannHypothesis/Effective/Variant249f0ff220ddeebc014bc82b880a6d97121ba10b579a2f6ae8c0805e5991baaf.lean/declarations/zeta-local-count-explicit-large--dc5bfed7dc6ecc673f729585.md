# zeta_local_count_explicit_large

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "401f1318bdac29d95211200b7315ce03b0c8f64d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 437,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:858b2c8c-ba83-a8e5-3690-f6fc3e018fbe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8354ad60-fc9f-8328-7b43-b0ec7dbccf0a",
  "kind": "theorem",
  "lexical_name": "zeta_local_count_explicit_large",
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
  "slug": "zeta-local-count-explicit-large--dc5bfed7dc6ecc673f729585",
  "source": {
    "blob": "401f1318bdac29d95211200b7315ce03b0c8f64d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 437,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc5bfed7dc6ecc673f729585264e67c37dc11974bec9818bbffad394aa5b125f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8354ad60-fc9f-8328-7b43-b0ec7dbccf0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_local_count_explicit_large (t : ℝ) (hc : 6 ≤ |t + 1/2|) :
    (Zeta23.Ncount t (t + 1) : ℝ) ≤ 540000000 * Real.log (|t| + 3) := by
  obtain ⟨Z, hZset, hZcount, -⟩ := zeta_logDeriv_partial_fraction_explicit (t + 1/2) hc
  have hhalf := Zeta23.zetaZeroConfig.N_le_two_mul_half (T₁ := t) (T₂ := t + 1)
  set S : Set ℂ := Zeta23.zetaZeroConfig.window t (t + 1) ∩ {ρ | 1/2 ≤ ρ.re} with hSdef
  have hsubset : S ⊆ (Z : Set ℂ) := by
    rintro ρ ⟨⟨hcar, him1, him2⟩, hre⟩
    rw [hZset]
    have hnz : Zeta23.IsNontrivialZero ρ := hcar
    refine ⟨?_, hnz.1⟩
    rw [Metric.mem_closedBall, Complex.dist_eq]
    have hre2 : ρ.re < 1 := hnz.2.2
    have hremem : (1/2 : ℝ) ≤ ρ.re := hre
    have h1 : |ρ.re - 2| ≤ 3/2 := by
      rw [abs_le]
      constructor
      · linarith
      · linarith
    have h2 : |ρ.im - (t + 1/2)| ≤ 1/2 := by
      rw [abs_le]
      constructor
      · linarith
      · linarith
    have hnormsq : ‖ρ - (2 + (t + 1/2 : ℝ) * Complex.I)‖ ^ 2
        = (ρ.re - 2) ^ 2 + (ρ.im - (t + 1/2)) ^ 2 := by
      rw [← Complex.normSq_eq_norm_sq, Complex.normSq_apply]
      have hre' : (ρ - (2 + (t + 1/2 : ℝ) * Complex.I)).re = ρ.re - 2 := by simp
      have him' : (ρ - (2 + (t + 1/2 : ℝ) * Complex.I)).im = ρ.im - (t + 1/2) := by simp
      rw [hre', him']
      ring
    have hsq : ‖ρ - (2 + (t + 1/2 : ℝ) * Complex.I)‖ ^ 2 ≤ 5/2 := by
      rw [hnormsq]
      have ha := abs_le.mp h1
      have hb := abs_le.mp h2
      nlinarith [ha.1, ha.2, hb.1, hb.2]
    nlinarith [norm_nonneg (ρ - (2 + (t + 1/2 : ℝ) * Complex.I)), hsq]
  have hSfin : S.Finite := Z.finite_toSet.subset hsubset
  have hsum : (∑ᶠ ρ ∈ S, (Zeta23.zetaZeroConfig.mult ρ : ℝ))
      ≤ ∑ ρ ∈ Z, (analyticOrderNatAt riemannZeta ρ : ℝ) := by
    rw [finsum_mem_eq_finite_toFinset_sum _ hSfin]
    have hsub2 : hSfin.toFinset ⊆ Z := by
      intro ρ hρ
      rw [Set.Finite.mem_toFinset] at hρ
      exact Finset.mem_coe.mp (hsubset hρ)
    exact Finset.sum_le_sum_of_subset_of_nonneg hsub2 (fun ρ _ _ => by positivity)
  have hlogfold : Real.log (|t + 1/2| + 3) ≤ 2 * Real.log (|t| + 3) := by
    have h1 : |t + 1/2| + 3 ≤ (|t| + 3) ^ 2 := by
      have := abs_add_le t (1/2 : ℝ)
      nlinarith [abs_nonneg t]
    calc Real.log (|t + 1/2| + 3) ≤ Real.log ((|t| + 3) ^ 2) :=
          Real.log_le_log (by positivity) h1
      _ = 2 * Real.log (|t| + 3) := by
          rw [Real.log_pow]
          push_cast
          ring
  have hNle : (Zeta23.Ncount t (t + 1) : ℝ) = (Zeta23.zetaZeroConfig.N t (t + 1) : ℝ) := by
    rw [Zeta23.zetaZeroConfig_N]
  rw [hNle]
  have hlognn : (0:ℝ) ≤ Real.log (|t| + 3) := Real.log_nonneg (by linarith [abs_nonneg t])
  calc (Zeta23.zetaZeroConfig.N t (t + 1) : ℝ)
      ≤ 2 * ∑ᶠ ρ ∈ S, (Zeta23.zetaZeroConfig.mult ρ : ℝ) := hhalf
    _ ≤ 2 * ∑ ρ ∈ Z, (analyticOrderNatAt riemannZeta ρ : ℝ) := by linarith [hsum]
    _ ≤ 2 * (135000000 * Real.log (|t + 1/2| + 3)) := by linarith [hZcount]
    _ ≤ 2 * (135000000 * (2 * Real.log (|t| + 3))) := by nlinarith [hlogfold]
    _ = 540000000 * Real.log (|t| + 3) := by ring

/-! ## E2(iii) brick 1: the Gamma-norm bound -/

/-- |Γ(z)| ≤ Γ(Re z) for Re z > 0 (integral representation + pointwise norm). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401f1318bdac29d95211200b7315ce03b0c8f64d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
