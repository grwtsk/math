# filtered_core_norm_sq_gram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebf8ec0c-a002-544f-f845-f9e38ab72a5a",
  "kind": "theorem",
  "lexical_name": "filtered_core_norm_sq_gram",
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
  "slug": "filtered-core-norm-sq-gram--4d0c26bcbac2271534b98950",
  "source": {
    "blob": "d2b8bdcc8817dfe5e06da7b3e3084db05245eff9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramFullAudit/Variantcb1489e56ef2ade1eb7f9e2d38793f346ae5aa174708e9e5c89a23147db1214d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d0c26bcbac2271534b989506c752ec9aa49b59c50ce67f4fd14b6ce22675bce",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramFullAudit/Variantcb1489e56ef2ade1eb7f9e2d38793f346ae5aa174708e9e5c89a23147db1214d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebf8ec0c-a002-544f-f845-f9e38ab72a5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filtered_core_norm_sq_gram (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ ^ 2 =
      (∑ i ∈ insert 0 (Finset.Icc 1 X), ∑ j ∈ insert 0 (Finset.Icc 1 X),
        star (if i = 0 then (1 : ℂ) else (dampedCoefficient X ε i : ℂ)) *
          (if j = 0 then (1 : ℂ) else (dampedCoefficient X ε j : ℂ)) *
          inner ℂ (sourceMultiplier ε h hε hsmall hh (coreBasisVector Y i))
            (sourceMultiplier ε h hε hsmall hh (coreBasisVector Y j))).re := by
  rw [norm_sq_eq_re_inner (𝕜 := ℂ), coreResidualVector_eq_basis_sum X ε hX Y]
  change (inner ℂ _ _).re = _
  simp only [map_sum, map_smul, sum_inner, inner_sum, inner_smul_left, inner_smul_right,
    Finset.mul_sum, mul_assoc]
  rw [Finset.sum_comm]
  congr 1
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  simp only [starRingEnd_apply]
  ring

end
end FilteredCoreGramScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @FilteredCoreGramScratch.coreBasisFunction
#print FilteredCoreGramScratch.coreBasisFunction
#print axioms FilteredCoreGramScratch.coreBasisFunction
#check @FilteredCoreGramScratch.coreBasisFunction_memLp
#print FilteredCoreGramScratch.coreBasisFunction_memLp
#print axioms FilteredCoreGramScratch.coreBasisFunction_memLp
#check @FilteredCoreGramScratch.coreBasisVector
#print FilteredCoreGramScratch.coreBasisVector
#print axioms FilteredCoreGramScratch.coreBasisVector
#check @FilteredCoreGramScratch.coreBasisVector_ae
#print FilteredCoreGramScratch.coreBasisVector_ae
#print axioms FilteredCoreGramScratch.coreBasisVector_ae
#check @FilteredCoreGramScratch.coreResidualVector_eq_basis_sum
#print FilteredCoreGramScratch.coreResidualVector_eq_basis_sum
#print axioms FilteredCoreGramScratch.coreResidualVector_eq_basis_sum
#check @FilteredCoreGramScratch.filtered_core_norm_sq_gram
#print FilteredCoreGramScratch.filtered_core_norm_sq_gram
#print axioms FilteredCoreGramScratch.filtered_core_norm_sq_gram
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramFullAudit/Variantcb1489e56ef2ade1eb7f9e2d38793f346ae5aa174708e9e5c89a23147db1214d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramFullAudit/Variantcb1489e56ef2ade1eb7f9e2d38793f346ae5aa174708e9e5c89a23147db1214d.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2b8bdcc8817dfe5e06da7b3e3084db05245eff9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
