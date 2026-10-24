# resolving_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e6f99981182e05f31223856b1f9be05535bb135",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 318,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d23c2366-b0a9-85b1-edcb-b70956813585",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f983194-0ecf-1afd-d75d-85b695ccb5da",
  "kind": "theorem",
  "lexical_name": "resolving_error",
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
  "slug": "resolving-error--8bae18287ec14d6e5a923c1b",
  "source": {
    "blob": "8e6f99981182e05f31223856b1f9be05535bb135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 318,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bae18287ec14d6e5a923c1b403048b79d726f685d08b86223a280e7daf67292",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f983194-0ecf-1afd-d75d-85b695ccb5da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolving_error (C : ℝ) (hC : 0 ≤ C)
    (hM : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C)
    {η A : ℝ} (hη : 0 < η) (hA : 1 ≤ A) :
    |decodedReadout A (decodedTest A (mesh A (resolutionCount C η A))
        (resolutionCount C η A)) - squareRemovedPairedWork A| ≤ η := by
  let n := resolutionCount C η A
  let h := mesh A n
  have hn : 1 ≤ n := resolutionCount_pos C η A
  have hh : 0 < h := mesh_pos hA hn
  have hgrid : (n : ℝ)*h = 2*A := mesh_grid A hn
  have hTmem : ∀ u ∈ Icc 0 (2*A), rightSelector h n u ∈ Icc 0 (2*A) := by
    intro u hu
    rw [← hgrid] at hu ⊢
    obtain ⟨_,_,hlo,hhi⟩ := rightSelector_bounds hh n hu
    exact ⟨hlo,hhi⟩
  have hTdist : ∀ u ∈ Icc 0 (2*A), |rightSelector h n u-u| ≤ h := by
    intro u hu
    rw [← hgrid] at hu
    exact rightSelector_dist hh n hu
  have hi : IntervalIntegrable (fun u => pairedTailTest A (rightSelector h n u))
      volume 0 (2*A) := by
    rw [← decodedTest_eq_comp hA hh n]
    exact (decodedTest_integrable A h n).intervalIntegrable
  have he := mesh_decoder_error C hC hM hA hh.le (rightSelector h n) hTmem hTdist hi
    (resolution_budget hC hη hA)
  rw [← decodedTest_eq_comp hA hh n] at he
  exact he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e6f99981182e05f31223856b1f9be05535bb135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
