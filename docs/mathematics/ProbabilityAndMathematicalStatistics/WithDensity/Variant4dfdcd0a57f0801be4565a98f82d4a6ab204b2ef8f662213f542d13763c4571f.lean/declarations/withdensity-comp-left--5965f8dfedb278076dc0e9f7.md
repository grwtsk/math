# withDensity_comp_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e12c0a6367ad05bb8f456b8dcac1c890730366f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5794e6f-79a1-359a-8eae-f8bc02da25f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f45d3d7c-a0de-ec9b-bd8e-432d8c725b06",
  "kind": "lemma",
  "lexical_name": "withDensity_comp_left",
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
  "slug": "withdensity-comp-left--5965f8dfedb278076dc0e9f7",
  "source": {
    "blob": "e12c0a6367ad05bb8f456b8dcac1c890730366f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 83,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/WithDensity/Variant4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5965f8dfedb278076dc0e9f78ecdfb48fc7b22ab73d2ec6b8844ff2065ea3f9b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/WithDensity/Variant4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f45d3d7c-a0de-ec9b-bd8e-432d8c725b06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma withDensity_comp_left {η : Kernel 𝓨 𝓩} [IsSFiniteKernel η]
    {f : 𝓧 → ℝ≥0∞} (hf : Measurable f) :
    (η ∘ₖ κ).withDensity (fun a _ ↦ f a) = η ∘ₖ (κ.withDensity (fun a _ ↦ f a)) := by
  ext a s hs
  rw [Kernel.withDensity_apply _ (by fun_prop), Kernel.comp_apply, Kernel.comp_apply]
  conv_rhs => rw [Measure.bind_apply hs (by fun_prop)]
  simp only [withDensity_const, Measure.smul_apply, smul_eq_mul]
  rw [lintegral_withDensity _ (by fun_prop) _ (η.measurable_coe hs),
    Measure.bind_apply hs (Kernel.aemeasurable _), lintegral_const_mul _ (η.measurable_coe hs)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/WithDensity/Variant4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/WithDensity/Variant4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e12c0a6367ad05bb8f456b8dcac1c890730366f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
