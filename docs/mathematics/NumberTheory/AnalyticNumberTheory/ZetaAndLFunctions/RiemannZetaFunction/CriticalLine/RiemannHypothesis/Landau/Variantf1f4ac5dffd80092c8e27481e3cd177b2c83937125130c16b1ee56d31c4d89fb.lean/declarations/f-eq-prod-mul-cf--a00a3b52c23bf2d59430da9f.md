# f_eq_prod_mul_Cf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b6d356d64a6e7a1bf6bc0e98406d3dfe5a7f4d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97ac6b49-18a5-3f30-e2ab-f6361f61eae1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9f5cbf1-eb72-d293-d4f1-6ce518f2b62b",
  "kind": "lemma",
  "lexical_name": "f_eq_prod_mul_Cf",
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
  "slug": "f-eq-prod-mul-cf--a00a3b52c23bf2d59430da9f",
  "source": {
    "blob": "5b6d356d64a6e7a1bf6bc0e98406d3dfe5a7f4d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a00a3b52c23bf2d59430da9fc8d9c522f2900d6423e81ee4626de517339b17c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9f5cbf1-eb72-d293-d4f1-6ce518f2b62b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma f_eq_prod_mul_Cf {f : ℂ → ℂ} {r : ℝ} (hr1 : r < 1) (hfin : (SetOfZeros 1 f).Finite)
    {z : ℂ} (hz : z ∉ SetOfZeros r f) :
    f z = (∏ ρ ∈ (finiteSetOfZeros_mono hr1 hfin).toFinset, (z - ρ) ^ analyticOrderNatAt f ρ)
      * Cf r f z := by
  have hfinr := finiteSetOfZeros_mono hr1 hfin
  unfold Cf
  rw [dif_pos hfinr, dif_neg hz]
  rw [mul_div_cancel₀]
  refine Finset.prod_ne_zero_iff.mpr fun ρ hρ => ?_
  have hρ' := hfinr.mem_toFinset.mp hρ
  have hne : z ≠ ρ := by
    rintro rfl
    exact hz hρ'
  exact pow_ne_zero _ (sub_ne_zero.mpr hne)

/-- logDeriv of the finite zero product: `logDeriv (Π (·−ρ)^{m_ρ}) z = Σ m_ρ/(z−ρ)`
(Mathlib's `logDeriv_prod` + `logDeriv_fun_pow`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b6d356d64a6e7a1bf6bc0e98406d3dfe5a7f4d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
