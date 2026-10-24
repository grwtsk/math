# rnDeriv_add_right_of_mutuallySingular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c50833bfaa6e687c60f20bd9988efbca68ccb762",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8a01d75315bbbc0ead8f74f82e6b37af9afe04d7b111cf6022bf09e5d29d298.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93ff29b2-84e3-b5bc-2e4a-2c8937c4bcf6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:735e47c2-8fdf-8ceb-b5c0-b1723696718a",
  "kind": "lemma",
  "lexical_name": "rnDeriv_add_right_of_mutuallySingular",
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
  "slug": "rnderiv-add-right-of-mutuallysingular--6342f3e6c28a47978f0b5a47",
  "source": {
    "blob": "c50833bfaa6e687c60f20bd9988efbca68ccb762",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 246,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RadonNikodym/Variantc8a01d75315bbbc0ead8f74f82e6b37af9afe04d7b111cf6022bf09e5d29d298.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6342f3e6c28a47978f0b5a477bc1a6a6f3e1afbd6cd2c39faf51545df1a97ccb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RadonNikodym/Variantc8a01d75315bbbc0ead8f74f82e6b37af9afe04d7b111cf6022bf09e5d29d298.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:735e47c2-8fdf-8ceb-b5c0-b1723696718a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rnDeriv_add_right_of_mutuallySingular {ν' : Measure α}
    [SigmaFinite μ] [SigmaFinite ν] [SigmaFinite ν'] (hνν' : ν ⟂ₘ ν') :
    μ.rnDeriv (ν + ν') =ᵐ[ν] μ.rnDeriv ν := by
  have h_ac : ν ≪ ν + ν' := Measure.AbsolutelyContinuous.rfl.add_right _
  rw [haveLebesgueDecomposition_add μ ν']
  have h₁ := rnDeriv_add' (μ.singularPart ν') (ν'.withDensity (μ.rnDeriv ν')) (ν + ν')
  have h₂ := rnDeriv_add' (μ.singularPart ν') (ν'.withDensity (μ.rnDeriv ν')) ν
  refine (Filter.EventuallyEq.trans (h_ac.ae_le h₁) ?_).trans h₂.symm
  have h₃ := rnDeriv_add_right_of_mutuallySingular' (?_ : μ.singularPart ν' ⟂ₘ ν') hνν'
  · have h₄ : (ν'.withDensity (rnDeriv μ ν')).rnDeriv (ν + ν') =ᵐ[ν] 0 := by
      refine rnDeriv_eq_zero_of_mutuallySingular ?_ h_ac
      exact hνν'.symm.withDensity
    have h₅ : (ν'.withDensity (rnDeriv μ ν')).rnDeriv ν =ᵐ[ν] 0 := by
      rw [rnDeriv_eq_zero]
      exact hνν'.symm.withDensity
    filter_upwards [h₃, h₄, h₅] with x hx₃ hx₄ hx₅
    rw [Pi.add_apply, Pi.add_apply, hx₃, hx₄, hx₅]
  exact mutuallySingular_singularPart μ ν'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RadonNikodym/Variantc8a01d75315bbbc0ead8f74f82e6b37af9afe04d7b111cf6022bf09e5d29d298.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RadonNikodym/Variantc8a01d75315bbbc0ead8f74f82e6b37af9afe04d7b111cf6022bf09e5d29d298.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c50833bfaa6e687c60f20bd9988efbca68ccb762` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
