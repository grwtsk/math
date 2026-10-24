# divByDiscriminant_slash_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de21ee2e021a2add699300561411e2a06e7fe230",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf7459b0-cc02-a5e4-737b-619bf19a7c16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e503e69-9153-4368-9342-b09437b8b3d9",
  "kind": "lemma",
  "lexical_name": "divByDiscriminant_slash_eq",
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
  "slug": "divbydiscriminant-slash-eq--33a3da680d7b4b4d420c9ac6",
  "source": {
    "blob": "de21ee2e021a2add699300561411e2a06e7fe230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33a3da680d7b4b4d420c9ac6bc22f46852c29708c9e7d376c0edddadb35c0544",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e503e69-9153-4368-9342-b09437b8b3d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma divByDiscriminant_slash_eq (f : CuspForm 𝒮ℒ k) (γ : SL(2, ℤ)) :
    (fun z ↦ f z / Δ z) ∣[k - 12] γ = fun z ↦ f z / Δ z := by
  have hγ : (γ : GL (Fin 2) ℝ) ∈ 𝒮ℒ := ⟨γ, rfl⟩
  change (⇑f / ⇑CuspForm.discriminant) ∣[k - 12] γ = ⇑f / ⇑CuspForm.discriminant
  simp_rw [div_slash_SL2, SL_slash, slash_action_eqn _ _ hγ]

/-- The linear equivalence between cusp forms of weight `k` and modular forms of weight `k - 12`,
given by division by the discriminant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de21ee2e021a2add699300561411e2a06e7fe230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
