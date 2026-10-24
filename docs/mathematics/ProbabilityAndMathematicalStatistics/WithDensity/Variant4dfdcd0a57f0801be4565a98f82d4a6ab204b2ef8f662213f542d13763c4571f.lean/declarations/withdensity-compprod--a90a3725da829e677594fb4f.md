# withDensity_compProd

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
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8fd9f90-f9ec-402e-0b00-cf2f965b0f04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0427a65-17c7-37ad-bc39-63a159bafc6a",
  "kind": "lemma",
  "lexical_name": "withDensity_compProd",
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
  "slug": "withdensity-compprod--a90a3725da829e677594fb4f",
  "source": {
    "blob": "e12c0a6367ad05bb8f456b8dcac1c890730366f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 58,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/WithDensity/Variant4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a90a3725da829e677594fb4ff6100dacbb8580e8febaf3055d5a4795c7aa8ca9",
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

Occurrence: `result:d0427a65-17c7-37ad-bc39-63a159bafc6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma withDensity_compProd [SFinite μ] (hf : Measurable f) :
    (μ.withDensity f) ⊗ₘ κ = (μ ⊗ₘ κ).withDensity (fun ab ↦ f ab.1) := by
  refine ext_of_lintegral _ fun g hg ↦ ?_
  calc ∫⁻ ab, g ab ∂((μ.withDensity f) ⊗ₘ κ)
  _ = ∫⁻ a, ∫⁻ b, g (a, b) ∂κ a ∂(μ.withDensity f) := lintegral_compProd hg
  _ = ∫⁻ a, f a * ∫⁻ b, g (a, b) ∂κ a ∂μ :=
      lintegral_withDensity_eq_lintegral_mul _ hf hg.lintegral_kernel_prod_right'
  _ = ∫⁻ a, ∫⁻ b, f a * g (a, b) ∂κ a ∂μ :=
      lintegral_congr fun a ↦ (lintegral_const_mul _ (by fun_prop)).symm
  _ = ∫⁻ ab, (fun ab ↦ f ab.1) ab * g ab ∂(μ ⊗ₘ κ) :=
      (lintegral_compProd ((hf.comp measurable_fst).mul hg)).symm
  _ = ∫⁻ ab, g ab ∂((μ ⊗ₘ κ).withDensity (fun ab ↦ f ab.1)) :=
      (lintegral_withDensity_eq_lintegral_mul _ (hf.comp measurable_fst) hg).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/WithDensity/Variant4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/WithDensity/Variant4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e12c0a6367ad05bb8f456b8dcac1c890730366f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
