# IsProper.setLIntegral_inter_eq_indicator_mul_setLIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38a02a4cdf3979d79cd03f68c28c9ce726e74d41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:283a2541-943e-45d1-d7dd-f3b7d71ec422",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86c25b3f-a07f-3c73-aa5b-037842a13832",
  "kind": "lemma",
  "lexical_name": "IsProper.setLIntegral_inter_eq_indicator_mul_setLIntegral",
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
  "slug": "isproper-setlintegral-inter-eq-indicator-mul-setlintegral--7542215adc4a794909a745d4",
  "source": {
    "blob": "38a02a4cdf3979d79cd03f68c28c9ce726e74d41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 118,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7542215adc4a794909a745d4083295d71437d49c530437843b478f5b6af9a0fe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86c25b3f-a07f-3c73-aa5b-037842a13832`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsProper.setLIntegral_inter_eq_indicator_mul_setLIntegral (hπ : IsProper π) (h𝓑𝓧 : 𝓑 ≤ 𝓧)
    (hf : Measurable[𝓧] f) (hA : MeasurableSet[𝓧] A) (hB : MeasurableSet[𝓑] B) (x₀ : X) :
    ∫⁻ x in A ∩ B, f x ∂(π x₀) = B.indicator 1 x₀ * ∫⁻ x in A, f x ∂(π x₀) := by
  rw [← lintegral_indicator hA, ← hπ.setLIntegral_eq_indicator_mul_lintegral h𝓑𝓧 _ hB,
    setLIntegral_indicator] <;> measurability

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variant0865bee3d350b0d36b3033cc8cf78a96c33cea9540d37d177f5249f953c1eda2.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38a02a4cdf3979d79cd03f68c28c9ce726e74d41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
