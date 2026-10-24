# deterministic_comp_posterior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb06af37671787e12ced8d5b79b78bdc0544812c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef1cd8a7e70d23b499d4072c4c43f93474b615c880f1c76e33ea0922da3f789c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbd6b902-7603-63bf-d3d5-40e32160ed55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:035431d4-34b2-87f5-00e0-254efe505a83",
  "kind": "lemma",
  "lexical_name": "deterministic_comp_posterior",
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
  "slug": "deterministic-comp-posterior--bd452a3685b5cd8c180a2608",
  "source": {
    "blob": "eb06af37671787e12ced8d5b79b78bdc0544812c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 138,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantef1cd8a7e70d23b499d4072c4c43f93474b615c880f1c76e33ea0922da3f789c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd452a3685b5cd8c180a2608c9b7bb05f59815a31ae8733b7a4712f0abebae58",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantef1cd8a7e70d23b499d4072c4c43f93474b615c880f1c76e33ea0922da3f789c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:035431d4-34b2-87f5-00e0-254efe505a83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma deterministic_comp_posterior [MeasurableSpace.CountablyGenerated 𝓧]
    {f : Ω → 𝓧} (hf : Measurable f) :
    Kernel.deterministic f hf ∘ₖ (Kernel.deterministic f hf)†μ =ᵐ[μ.map f] Kernel.id := by
  refine Kernel.ae_eq_of_compProd_eq ?_
  calc μ.map f ⊗ₘ (Kernel.deterministic f hf ∘ₖ (Kernel.deterministic f hf)†μ)
  _ = (Kernel.deterministic f hf ∘ₘ μ)
      ⊗ₘ (Kernel.deterministic f hf ∘ₖ (Kernel.deterministic f hf)†μ) := by
    rw [Measure.deterministic_comp_eq_map]
  _ = (Kernel.id ∥ₖ Kernel.deterministic f hf) ∘ₘ (Kernel.id ∥ₖ (Kernel.deterministic f hf)†μ) ∘ₘ
      Kernel.copy 𝓧 ∘ₘ Kernel.deterministic f hf ∘ₘ μ := by
    rw [Measure.compProd_eq_parallelComp_comp_copy_comp,
      ← Kernel.parallelComp_id_left_comp_parallelComp, ← Measure.comp_assoc]
  _ = (Kernel.id ∥ₖ Kernel.deterministic f hf) ∘ₘ (Kernel.deterministic f hf ∥ₖ Kernel.id) ∘ₘ
      Kernel.copy Ω ∘ₘ μ := by rw [parallelProd_posterior_comp_copy_comp]
  _ = (Kernel.deterministic f hf ∥ₖ Kernel.deterministic f hf) ∘ₘ Kernel.copy Ω ∘ₘ μ := by
    rw [Measure.comp_assoc, Kernel.parallelComp_comp_parallelComp, Kernel.id_comp, Kernel.comp_id]
  _ = (Kernel.copy 𝓧 ∘ₖ Kernel.deterministic f hf) ∘ₘ μ := by -- `deterministic` is used here
    rw [Measure.comp_assoc, Kernel.parallelComp_self_comp_copy]
  _ = μ.map f ⊗ₘ Kernel.id := by
    rw [Measure.compProd_id_eq_copy_comp, ← Measure.comp_assoc,
      Measure.deterministic_comp_eq_map]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantef1cd8a7e70d23b499d4072c4c43f93474b615c880f1c76e33ea0922da3f789c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantef1cd8a7e70d23b499d4072c4c43f93474b615c880f1c76e33ea0922da3f789c.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb06af37671787e12ced8d5b79b78bdc0544812c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
