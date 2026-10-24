# Integrable.withDensityᵥ_trim_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72f0ca3782527d19dd5efdd2a82b0fe0ed943cfd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:741592ce-f4e7-b2c1-8e70-1a51227ba1fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79db4e08-95aa-7caf-d8f2-64716db140e4",
  "kind": "theorem",
  "lexical_name": "Integrable.withDensityᵥ_trim_absolutelyContinuous",
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
  "slug": "integrable-withdensity-trim-absolutelycontinuous--b48e8ed91e63719dd417146f",
  "source": {
    "blob": "72f0ca3782527d19dd5efdd2a82b0fe0ed943cfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 209,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b48e8ed91e63719dd417146f46c716b3b27d36f87d8f100f3f0d546364388120",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79db4e08-95aa-7caf-d8f2-64716db140e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.withDensityᵥ_trim_absolutelyContinuous {m m0 : MeasurableSpace α} {μ : Measure α}
    (hm : m ≤ m0) (hfi : Integrable f μ) :
    (μ.withDensityᵥ f).trim hm ≪ᵥ (μ.trim hm).toENNRealVectorMeasure := by
  refine VectorMeasure.AbsolutelyContinuous.mk fun j hj₁ hj₂ => ?_
  rw [Measure.toENNRealVectorMeasure_apply_measurable hj₁, trim_measurableSet_eq hm hj₁] at hj₂
  rw [VectorMeasure.trim_measurableSet_eq hm hj₁, withDensityᵥ_apply hfi (hm _ hj₁)]
  simp only [Measure.restrict_eq_zero.mpr hj₂, integral_zero_measure]

end SignedMeasure

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72f0ca3782527d19dd5efdd2a82b0fe0ed943cfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
