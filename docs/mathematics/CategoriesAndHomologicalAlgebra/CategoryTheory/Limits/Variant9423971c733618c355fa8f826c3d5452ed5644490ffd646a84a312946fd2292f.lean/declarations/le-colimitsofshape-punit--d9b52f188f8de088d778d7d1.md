# le_colimitsOfShape_punit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8e4d40af86544e766a8b110c273d57db4936d35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 669,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/9423971c733618c355fa8f826c3d5452ed5644490ffd646a84a312946fd2292f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69120ab3-3cda-5246-8ce3-5cb5c56f3003",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4592b4b9-f128-fcc8-e0d0-4a2e3da41d46",
  "kind": "lemma",
  "lexical_name": "le_colimitsOfShape_punit",
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
  "slug": "le-colimitsofshape-punit--d9b52f188f8de088d778d7d1",
  "source": {
    "blob": "d8e4d40af86544e766a8b110c273d57db4936d35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 683,
    "line": 669,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9423971c733618c355fa8f826c3d5452ed5644490ffd646a84a312946fd2292f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9b52f188f8de088d778d7d1d55fdbd621b83ca79023701b044b77be742899a2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9423971c733618c355fa8f826c3d5452ed5644490ffd646a84a312946fd2292f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4592b4b9-f128-fcc8-e0d0-4a2e3da41d46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–683.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_colimitsOfShape_punit : W ≤ W.colimitsOfShape (Discrete PUnit.{w + 1}) := by
  intro X₁ X₂ f hf
  have h := initialIsInitial (C := Discrete (PUnit.{w + 1}))
  let c₁ := coconeOfDiagramInitial (F := Discrete.functor (fun _ ↦ X₁)) h
  let c₂ := coconeOfDiagramInitial (F := Discrete.functor (fun _ ↦ X₂)) h
  have hc₁ : IsColimit c₁ := colimitOfDiagramInitial h _
  have hc₂ : IsColimit c₂ := colimitOfDiagramInitial h _
  have : hc₁.desc (Cocone.mk _ (Discrete.natTrans (fun _ ↦ by exact f) ≫ c₂.ι)) = f :=
    hc₁.hom_ext (fun x ↦ by
      obtain rfl : x = ⊥_ _ := by ext
      rw [IsColimit.fac]
      simp [c₁, c₂])
  rw [← this]
  exact ⟨_, _, _, _, _, hc₂, _, fun _ ↦ hf⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9423971c733618c355fa8f826c3d5452ed5644490ffd646a84a312946fd2292f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9423971c733618c355fa8f826c3d5452ed5644490ffd646a84a312946fd2292f.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8e4d40af86544e766a8b110c273d57db4936d35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
