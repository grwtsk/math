# ae_nonneg_of_forall_set_integral_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab3b390a490889e5774dd39e424e93e44e54c2f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eddf37a9-0ee4-9657-0422-82458cb2efb1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4770d0ac-aad7-0f91-1eae-33227421fcc3",
  "kind": "theorem",
  "lexical_name": "ae_nonneg_of_forall_set_integral_nonneg",
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
  "slug": "ae-nonneg-of-forall-set-integral-nonneg--2580b8bd3d49292a80e8e565",
  "source": {
    "blob": "ab3b390a490889e5774dd39e424e93e44e54c2f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 281,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2580b8bd3d49292a80e8e5658a04e3b50e35ac24af745dcc13ad44d423a62fa3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4770d0ac-aad7-0f91-1eae-33227421fcc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_nonneg_of_forall_set_integral_nonneg (hf : Integrable f μ)
    (hf_zero : ∀ s, MeasurableSet s → μ s < ∞ → 0 ≤ ∫ x in s, f x ∂μ) : 0 ≤ᵐ[μ] f := by
  rcases hf.1 with ⟨f', hf'_meas, hf_ae⟩
  have hf'_integrable : Integrable f' μ := Integrable.congr hf hf_ae
  have hf'_zero : ∀ s, MeasurableSet s → μ s < ∞ → 0 ≤ ∫ x in s, f' x ∂μ := by
    intro s hs h's
    rw [set_integral_congr_ae hs (hf_ae.mono fun x hx _ => hx.symm)]
    exact hf_zero s hs h's
  exact
    (ae_nonneg_of_forall_set_integral_nonneg_of_stronglyMeasurable hf'_meas hf'_integrable
          hf'_zero).trans
      hf_ae.symm.le
#align measure_theory.ae_nonneg_of_forall_set_integral_nonneg MeasureTheory.ae_nonneg_of_forall_set_integral_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab3b390a490889e5774dd39e424e93e44e54c2f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
