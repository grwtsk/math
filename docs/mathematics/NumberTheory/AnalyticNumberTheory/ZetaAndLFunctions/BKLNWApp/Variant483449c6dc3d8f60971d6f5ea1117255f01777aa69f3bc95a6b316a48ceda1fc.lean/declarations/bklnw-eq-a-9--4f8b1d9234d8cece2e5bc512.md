# bklnw_eq_A_9

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10a30f41-6e69-77d3-61f8-34178dbfcb4a",
  "kind": "theorem",
  "lexical_name": "bklnw_eq_A_9",
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
  "slug": "bklnw-eq-a-9--4f8b1d9234d8cece2e5bc512",
  "source": {
    "blob": "8540b9c42bd040f88ceaa130fd3ccba5e0ae6db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 103,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f8b1d9234d8cece2e5bc5124fe1f7ecd189b580f89b897db5cf1a78c5ab1dce",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10a30f41-6e69-77d3-61f8-34178dbfcb4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bklnw_eq_A_9 (x T δ : ℝ) (hδ1 : 0 ≤ δ) (hδ2 : δ ≤ 1) :
    riemannZeta.zeroes_sum (Set.Icc 0 1)
      (Set.Ioo (-T) T) (fun ρ ↦ x ^ (ρ - 1) / ρ) =
    Sigma₁ x T δ + Sigma₂ x T δ := by
  set I₁ : Set ℝ := Set.Ico 0 (1 - δ)
  set I₂ : Set ℝ := Set.Icc (1 - δ) 1
  set J  : Set ℝ := Set.Ioo (-T) T
  set g  : ℂ → ℂ := fun ρ ↦ (x ^ (ρ - 1) / ρ) * (riemannZeta.order ρ)
  change ∑' ρ : riemannZeta.zeroes_rect (Set.Icc 0 1) J, g ρ = _
  have hI : Set.Icc 0 1 = I₁ ∪ I₂ := (Set.Ico_union_Icc_eq_Icc
    (sub_nonneg_of_le hδ2) (sub_le_self 1 hδ1)).symm
  have hdisj : Disjoint (riemannZeta.zeroes_rect I₁ J) (riemannZeta.zeroes_rect I₂ J) :=
    riemannZeta.zeroes_rect_disjoint₁ I₁ I₂ J
      (Set.disjoint_left.2 fun _ hx1 hx2 ↦ not_le.2 hx1.2 hx2.1)
  have hfin : (riemannZeta.zeroes_rect (Set.Icc 0 1) J).Finite := by
    rw [riemannZeta.zeroes_rect_eq]
    refine (riemannZeta.zeroes_on_Compact_finite' ?_).subset
      (Set.inter_subset_inter (Set.inter_subset_inter_right _
        (Set.preimage_mono Set.Ioo_subset_Icc_self)) le_rfl)
    exact Complex.equivRealProdCLM.toHomeomorph.isClosedEmbedding.isCompact_preimage
      (isCompact_Icc.prod isCompact_Icc)
  rw [hI, ← riemannZeta.zeroes_rect_union] at hfin ⊢
  refine Summable.tsum_union_disjoint hdisj ?_ ?_
  · exact (hfin.subset Set.subset_union_left).summable g
  · exact (hfin.subset Set.subset_union_right).summable g

@[blueprint
  "bklnw-eq_A_10"
  (title := "Equation (A.10)")
  (statement := /-- We have
  $$ |\Sigma_1| \leq x^{-\delta}
  \left(\frac{1}{2\pi}(\log(T/2\pi))^2
  + 1.8642\right). $$ -/)
  (proof := /-- See \cite[Lemma 2.10]{STD2015}. -/)
  (latexEnv := "sublemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8540b9c42bd040f88ceaa130fd3ccba5e0ae6db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
