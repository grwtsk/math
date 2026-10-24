# withDensityᵥ_eq_withDensity_pos_part_sub_withDensity_neg_part

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
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:008cb803-12c5-589a-f827-cc2acc84757d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:463ac998-fa72-4796-c331-eac80eb42860",
  "kind": "theorem",
  "lexical_name": "withDensityᵥ_eq_withDensity_pos_part_sub_withDensity_neg_part",
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
  "slug": "withdensity-eq-withdensity-pos-part-sub-withdensity-neg-part--3dbd974c0ede6cf6d102b8a5",
  "source": {
    "blob": "72f0ca3782527d19dd5efdd2a82b0fe0ed943cfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 188,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dbd974c0ede6cf6d102b8a5faca0b683187b2cb9aa0560ee25c1480ef1620aa",
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

Occurrence: `result:463ac998-fa72-4796-c331-eac80eb42860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withDensityᵥ_eq_withDensity_pos_part_sub_withDensity_neg_part {f : α → ℝ}
    (hfi : Integrable f μ) :
    μ.withDensityᵥ f =
      @toSignedMeasure α _ (μ.withDensity fun x => ENNReal.ofReal <| f x)
          (isFiniteMeasure_withDensity_ofReal hfi.2) -
        @toSignedMeasure α _ (μ.withDensity fun x => ENNReal.ofReal <| -f x)
          (isFiniteMeasure_withDensity_ofReal hfi.neg.2) := by
  have := isFiniteMeasure_withDensity_ofReal hfi.2
  have := isFiniteMeasure_withDensity_ofReal hfi.neg.2
  ext i hi
  rw [withDensityᵥ_apply hfi hi,
    integral_eq_lintegral_pos_part_sub_lintegral_neg_part hfi.integrableOn,
    _root_.sub_apply, toSignedMeasure_apply_measurable hi,
    toSignedMeasure_apply_measurable hi, measureReal_def, measureReal_def,
    withDensity_apply _ hi, withDensity_apply _ hi]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72f0ca3782527d19dd5efdd2a82b0fe0ed943cfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
