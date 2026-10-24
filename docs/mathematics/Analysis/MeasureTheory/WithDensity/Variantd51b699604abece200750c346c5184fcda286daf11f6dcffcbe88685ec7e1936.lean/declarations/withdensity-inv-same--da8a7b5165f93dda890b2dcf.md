# withDensity_inv_same₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15f2d908441c8eadb070aec9ced73b7137e507a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 516,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d51b699604abece200750c346c5184fcda286daf11f6dcffcbe88685ec7e1936.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f9160e7-b7f9-9128-d093-bd22605b957c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:520b76cd-f8c6-4f5e-f1c6-4459d0612b76",
  "kind": "lemma",
  "lexical_name": "withDensity_inv_same₀",
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
  "slug": "withdensity-inv-same--da8a7b5165f93dda890b2dcf",
  "source": {
    "blob": "15f2d908441c8eadb070aec9ced73b7137e507a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 516,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensity/Variantd51b699604abece200750c346c5184fcda286daf11f6dcffcbe88685ec7e1936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da8a7b5165f93dda890b2dcf5608a4ed5142d4e523abb7612dbcc33234a0273d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensity/Variantd51b699604abece200750c346c5184fcda286daf11f6dcffcbe88685ec7e1936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:520b76cd-f8c6-4f5e-f1c6-4459d0612b76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma withDensity_inv_same₀ {μ : Measure α} {f : α → ℝ≥0∞}
    (hf : AEMeasurable f μ) (hf_ne_zero : ∀ᵐ x ∂μ, f x ≠ 0) (hf_ne_top : ∀ᵐ x ∂μ, f x ≠ ∞) :
    (μ.withDensity f).withDensity (fun x ↦ (f x)⁻¹) = μ := by
  rw [← withDensity_mul₀ hf hf.inv]
  suffices (f * fun x ↦ (f x)⁻¹) =ᵐ[μ] 1 by
    rw [withDensity_congr_ae this, withDensity_one]
  filter_upwards [hf_ne_zero, hf_ne_top] with x hf_ne_zero hf_ne_top
  simp only [Pi.mul_apply]
  rw [ENNReal.mul_inv_cancel hf_ne_zero hf_ne_top, Pi.one_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensity/Variantd51b699604abece200750c346c5184fcda286daf11f6dcffcbe88685ec7e1936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensity/Variantd51b699604abece200750c346c5184fcda286daf11f6dcffcbe88685ec7e1936.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15f2d908441c8eadb070aec9ced73b7137e507a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
