# angularIntegrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7373540d0098635c103139d1dbe8b2da56f168d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4caf0b1b350ad029dbdbfd61e63efda0b493f265b2cd96f3ea70ac668a95382d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2bdab525-6844-dfe7-9d88-3576ba4ebb05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0870988e-874f-897b-f785-ba31ff78188c",
  "kind": "theorem",
  "lexical_name": "angularIntegrand_integrable",
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
  "slug": "angularintegrand-integrable--9503d99c942e300822e6c5b3",
  "source": {
    "blob": "c7373540d0098635c103139d1dbe8b2da56f168d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 179,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant4caf0b1b350ad029dbdbfd61e63efda0b493f265b2cd96f3ea70ac668a95382d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9503d99c942e300822e6c5b3aaab3a108b9e8d25c979744a06effd14aa564c04",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant4caf0b1b350ad029dbdbfd61e63efda0b493f265b2cd96f3ea70ac668a95382d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0870988e-874f-897b-f785-ba31ff78188c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angularIntegrand_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (angularIntegrand A) := by
  have hsmall : IntegrableOn (angularIntegrand A) (Icc (-1) 1) :=
    (angularIntegrand_continuous A hA).integrableOn_Icc
  have hpos : IntegrableOn (angularIntegrand A) (Ioi 1) := by
    simpa using angular_ray_integrable A 1 hA (by norm_num) 1 (by norm_num)
  have hneg : IntegrableOn (angularIntegrand A) (Iio (-1)) := by
    rw [← (Measure.measurePreserving_neg (volume : Measure ℝ)).integrableOn_comp_preimage
      (Homeomorph.neg ℝ).measurableEmbedding]
    simpa only [Function.comp_def, neg_preimage, neg_Iio, neg_neg, neg_one_mul]
      using angular_ray_integrable A 1 hA (by norm_num) (-1) (by norm_num)
  have hcover : (Icc (-1 : ℝ) 1 ∪ Ioi 1) ∪ Iio (-1) = univ := by
    ext t
    simp only [mem_union, mem_Icc, mem_Ioi, mem_Iio, mem_univ, iff_true]
    rcases lt_or_ge t (-1) with ht | ht
    · exact Or.inr ht
    · rcases le_or_gt t 1 with hh | hh
      · exact Or.inl (Or.inl ⟨ht, hh⟩)
      · exact Or.inl (Or.inr hh)
  have hu := (hsmall.union hpos).union hneg
  rw [hcover] at hu
  simpa using hu

/-- The full native angular contour, before the pending arithmetic inversion adapter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant4caf0b1b350ad029dbdbfd61e63efda0b493f265b2cd96f3ea70ac668a95382d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant4caf0b1b350ad029dbdbfd61e63efda0b493f265b2cd96f3ea70ac668a95382d.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7373540d0098635c103139d1dbe8b2da56f168d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
