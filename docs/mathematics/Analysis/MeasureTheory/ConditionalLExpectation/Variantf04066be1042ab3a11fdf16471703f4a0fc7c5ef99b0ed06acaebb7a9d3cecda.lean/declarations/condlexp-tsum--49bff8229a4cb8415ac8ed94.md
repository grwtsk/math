# condLExp_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ee4e8daed564c81a694d3fb206cddf597cda298",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 324,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f04066be1042ab3a11fdf16471703f4a0fc7c5ef99b0ed06acaebb7a9d3cecda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecfe0c50-0c1d-a12c-86d6-1f5ae7467cd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6a7e412-b4e0-fe8c-98b8-9a98d557e560",
  "kind": "theorem",
  "lexical_name": "condLExp_tsum",
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
  "slug": "condlexp-tsum--49bff8229a4cb8415ac8ed94",
  "source": {
    "blob": "3ee4e8daed564c81a694d3fb206cddf597cda298",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 324,
    "path": "GRWTSK/Analysis/MeasureTheory/ConditionalLExpectation/Variantf04066be1042ab3a11fdf16471703f4a0fc7c5ef99b0ed06acaebb7a9d3cecda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49bff8229a4cb8415ac8ed940e7d8bd6fb7e6358e18bc647bf69913c6d764083",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ConditionalLExpectation/Variantf04066be1042ab3a11fdf16471703f4a0fc7c5ef99b0ed06acaebb7a9d3cecda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6a7e412-b4e0-fe8c-98b8-9a98d557e560`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condLExp_tsum [Countable ι] {X : ι → Ω → ℝ≥0∞}
    (hX : ∀ i, AEMeasurable[mΩ₀] (X i) P) :
    P⁻[∑' i, X i|mΩ] =ᵐ[P] ∑' i, P⁻[X i|mΩ] := by
  by_cases hm : mΩ ≤ mΩ₀; swap
  · simp_rw [condLExp_of_not_le hm]; filter_upwards; simp
  by_cases hσ : SigmaFinite (P.trim hm); swap
  · simp_rw [condLExp_of_not_sigmaFinite hm hσ]; filter_upwards; simp
  refine (ae_eq_condLExp _ _ _ (by fun_prop) ?_).symm
  intro s hs
  simp only [ENNReal.tsum_apply]
  repeat rw [lintegral_tsum (by measurability)]
  congr with i
  exact setLIntegral_condLExp hm P (X i) hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ConditionalLExpectation/Variantf04066be1042ab3a11fdf16471703f4a0fc7c5ef99b0ed06acaebb7a9d3cecda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ConditionalLExpectation/Variantf04066be1042ab3a11fdf16471703f4a0fc7c5ef99b0ed06acaebb7a9d3cecda.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ee4e8daed564c81a694d3fb206cddf597cda298` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
