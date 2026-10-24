# squareMinusDecayPairedWork_uniformly_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13f55b8b-f551-4338-20ca-9c964ea5479e",
  "kind": "theorem",
  "lexical_name": "squareMinusDecayPairedWork_uniformly_bounded",
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
  "slug": "squareminusdecaypairedwork-uniformly-bounded--fac2c2b021f7da8286d0c475",
  "source": {
    "blob": "83c1d8b7cfed567a39f63c5f3a8fe899ad7cc45f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 161,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant7158239c92c62936e271bfc7e11dfd64b97a72668aec7d8489fd4f9346b7276d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fac2c2b021f7da8286d0c475d521e6d1536a92dcaf7c0cf32663eae03be11b50",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant7158239c92c62936e271bfc7e11dfd64b97a72668aec7d8489fd4f9346b7276d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13f55b8b-f551-4338-20ca-9c964ea5479e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareMinusDecayPairedWork_uniformly_bounded :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ A : ℝ, 1 ≤ A → |squareMinusDecayPairedWork A| ≤ K := by
  obtain ⟨C, hC0, _, hC⟩ := primeSquareMoment_uniform_main_term_error
  have hB := squarePrefixBaseline_nonneg
  refine ⟨11*C+squarePrefixBaseline+1, by positivity, ?_⟩
  intro A hA
  have hh := criticalDecayNegativeMean_mem_Icc hA
  have hq0 := squareTailNegativeMean_nonneg hA
  have hqB := squareTailNegativeMean_le_baseline hA
  have he : |(1-squarePrefixBaseline)+
      (squareTailNegativeMean A-criticalDecayNegativeMean A)| ≤ squarePrefixBaseline+1 :=
    abs_le.mpr ⟨by linarith, by linarith⟩
  rw [squareMinusDecayPairedWork_eq hA]
  calc
    _ = |(primeSquareMoment A-diagonalMainCoefficient A*A)+
        ((1-squarePrefixBaseline)+
          (squareTailNegativeMean A-criticalDecayNegativeMean A))| := by congr 1; ring
    _ ≤ _ := abs_add_le _ _
    _ ≤ 11*C+(squarePrefixBaseline+1) := add_le_add (hC A hA) he
    _ = _ := by ring

end FormalResearch.RiemannHypothesis.SourceCriticalDecayWork
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant7158239c92c62936e271bfc7e11dfd64b97a72668aec7d8489fd4f9346b7276d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant7158239c92c62936e271bfc7e11dfd64b97a72668aec7d8489fd4f9346b7276d.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83c1d8b7cfed567a39f63c5f3a8fe899ad7cc45f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
