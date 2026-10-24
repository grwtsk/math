# quasiIso_of_retract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a83271823fd118a62dce15664f11de4eb72e696",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/902daf1227bf9b8a79c821fc51f67c5fb33ff7f852ed8a138126aa6f0f70efe5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df5b87fc-c0cd-b7ba-82ca-1d02da54a730",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6023e11-bc20-4d37-0d73-b1b78877f717",
  "kind": "lemma",
  "lexical_name": "quasiIso_of_retract",
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
  "slug": "quasiiso-of-retract--13e170bacd5d930e9cf04946",
  "source": {
    "blob": "6a83271823fd118a62dce15664f11de4eb72e696",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 26,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant902daf1227bf9b8a79c821fc51f67c5fb33ff7f852ed8a138126aa6f0f70efe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13e170bacd5d930e9cf04946bfd2de049d06ccf91a38749118fed0610f0d08ee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant902daf1227bf9b8a79c821fc51f67c5fb33ff7f852ed8a138126aa6f0f70efe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6023e11-bc20-4d37-0d73-b1b78877f717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasiIso_of_retract (h : RetractArrow f₁ f₂) [hf₂ : QuasiIso f₂] :
    QuasiIso f₁ := by
  rw [quasiIso_iff] at hf₂ ⊢
  have h : RetractArrow (homologyMap f₁) (homologyMap f₂) :=
    { i := Arrow.homMk (u := homologyMap (show S₁ ⟶ S₂ from h.i.left))
        (v := homologyMap (show T₁ ⟶ T₂ from h.i.right)) (by simp [← homologyMap_comp])
      r := Arrow.homMk (u := homologyMap (show S₂ ⟶ S₁ from h.r.left))
        (v := homologyMap (show T₂ ⟶ T₁ from h.r.right)) (by simp [← homologyMap_comp])
      retract := by ext <;> simp [← homologyMap_comp] }
  exact (MorphismProperty.isomorphisms C).of_retract h hf₂

end ShortComplex

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant902daf1227bf9b8a79c821fc51f67c5fb33ff7f852ed8a138126aa6f0f70efe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant902daf1227bf9b8a79c821fc51f67c5fb33ff7f852ed8a138126aa6f0f70efe5.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a83271823fd118a62dce15664f11de4eb72e696` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
