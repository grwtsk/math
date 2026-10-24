# withDensity_comp

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
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f108711-192e-a0f0-0b8a-c10d40a66a2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f4c3e04-6655-d6ec-4ae8-afef27f052d4",
  "kind": "lemma",
  "lexical_name": "withDensity_comp",
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
  "slug": "withdensity-comp--7d71c883b23b29b92bf0f433",
  "source": {
    "blob": "e12c0a6367ad05bb8f456b8dcac1c890730366f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 32,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/WithDensity/Variant4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d71c883b23b29b92bf0f43316771641f3d872e88e222d50d03eefce4f57dccd",
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

Occurrence: `result:9f4c3e04-6655-d6ec-4ae8-afef27f052d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma withDensity_comp (hf' : Measurable f') :
    (κ ∘ₘ μ).withDensity f' = (κ.withDensity (fun _ b ↦ f' b)) ∘ₘ μ := by
  refine Measure.ext_of_lintegral _ fun g hg ↦ Eq.symm ?_
  calc ∫⁻ b, g b ∂((κ.withDensity (fun _ b ↦ f' b)) ∘ₘ μ)
      = ∫⁻ a, ∫⁻ b, g b ∂(κ.withDensity (fun _ b ↦ f' b)) a ∂μ :=
        Measure.lintegral_bind (Kernel.measurable _).aemeasurable hg.aemeasurable
    _ = ∫⁻ a, ∫⁻ b, f' b * g b ∂κ a ∂μ := by
        congr with a
        exact Kernel.lintegral_withDensity _ (by fun_prop) _ hg
    _ = ∫⁻ b, f' b * g b ∂(κ ∘ₘ μ) :=
        (Measure.lintegral_bind (Kernel.measurable _).aemeasurable (hf'.mul hg).aemeasurable).symm
    _ = ∫⁻ b, g b ∂((κ ∘ₘ μ).withDensity f') :=
        (lintegral_withDensity_eq_lintegral_mul _ hf' hg).symm

/-- A composition-product of a measure with a kernel defined with `withDensity` is equal to the
`withDensity` of the composition-product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/WithDensity/Variant4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/WithDensity/Variant4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e12c0a6367ad05bb8f456b8dcac1c890730366f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
