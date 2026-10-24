# IsProper.lintegral_indicator_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23cac378738440e51cbc58f42ea4227f587d467e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f11e46a-4537-f553-9dbf-cae262ca82bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f370d0a2-431a-3e95-2497-b9210011b4bc",
  "kind": "lemma",
  "lexical_name": "IsProper.lintegral_indicator_mul",
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
  "slug": "isproper-lintegral-indicator-mul--99e47cbcefb930ba33db4e22",
  "source": {
    "blob": "23cac378738440e51cbc58f42ea4227f587d467e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99e47cbcefb930ba33db4e223ef2cc9f808f520e8b5756654c770ae0fa75f85d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f370d0a2-431a-3e95-2497-b9210011b4bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma IsProper.lintegral_indicator_mul (hπ : IsProper π) (h𝓑𝓧 : 𝓑 ≤ 𝓧)
    (hf : Measurable[𝓧] f) (hB : MeasurableSet[𝓑] B) :
    ∫⁻ x, B.indicator 1 x * f x ∂(π x₀) = B.indicator 1 x₀ * ∫⁻ x, f x ∂(π x₀) := by
  refine hf.ennreal_induction ?_ ?_ ?_
  · rintro c A hA
    simp_rw [← smul_indicator_one_apply, mul_smul_comm, smul_eq_mul]
    rw [lintegral_const_mul, lintegral_const_mul, hπ.lintegral_indicator_mul_indicator h𝓑𝓧 hA hB,
      mul_left_comm] <;> measurability
  · rintro f₁ f₂ - _ _ hf₁ hf₂
    simp only [Pi.add_apply, mul_add]
    rw [lintegral_add_right, lintegral_add_right, hf₁, hf₂, mul_add] <;> measurability
  · rintro f' hf'_meas hf'_mono hf'
    simp_rw [ENNReal.mul_iSup]
    rw [lintegral_iSup (by measurability), lintegral_iSup hf'_meas hf'_mono, ENNReal.mul_iSup]
    · simp_rw [hf']
    · exact hf'_mono.const_mul zero_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23cac378738440e51cbc58f42ea4227f587d467e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
