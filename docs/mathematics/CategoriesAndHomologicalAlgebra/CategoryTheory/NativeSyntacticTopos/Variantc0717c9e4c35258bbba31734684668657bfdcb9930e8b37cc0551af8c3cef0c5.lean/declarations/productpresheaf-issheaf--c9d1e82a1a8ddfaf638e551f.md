# productPresheaf_isSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b1ba50ffb78e7492c58eec2fea7836045fb759b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 404,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ff983b9-cdad-dc18-59ef-00c4f2494886",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:660ba684-694d-a144-8fcb-40451bd36d22",
  "kind": "theorem",
  "lexical_name": "productPresheaf_isSheaf",
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
  "slug": "productpresheaf-issheaf--c9d1e82a1a8ddfaf638e551f",
  "source": {
    "blob": "3b1ba50ffb78e7492c58eec2fea7836045fb759b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 404,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9d1e82a1a8ddfaf638e551f264648bf692ca0603b79d9f6025a6fa7c616cd1b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:660ba684-694d-a144-8fcb-40451bd36d22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem productPresheaf_isSheaf {C : SmallCategory.{u, v}}
    {J : GrothendieckTopology C} {F G : Presheaf.{u, v, w} C}
    (hF : IsSheaf J F) (hG : IsSheaf J G) :
    IsSheaf J (productPresheaf F G) := by
  intro X S hS m
  let mF : MatchingFamily F S := {
    sectionAt := fun f hf => (m.sectionAt f hf).1
    compatible := by
      intro Y Z f hf g
      exact congrArg Prod.fst (m.compatible f hf g)
  }
  let mG : MatchingFamily G S := {
    sectionAt := fun f hf => (m.sectionAt f hf).2
    compatible := by
      intro Y Z f hf g
      exact congrArg Prod.snd (m.compatible f hf g)
  }
  rcases hF S hS mF with ⟨aF, haF, uniqF⟩
  rcases hG S hS mG with ⟨aG, haG, uniqG⟩
  refine ⟨(aF, aG), ?_, ?_⟩
  · intro Y f hf
    exact Prod.ext (haF f hf) (haG f hf)
  · intro b hb
    apply Prod.ext
    · exact uniqF b.1 (by
        intro Y f hf
        exact congrArg Prod.fst (hb f hf))
    · exact uniqG b.2 (by
        intro Y f hf
        exact congrArg Prod.snd (hb f hf))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b1ba50ffb78e7492c58eec2fea7836045fb759b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
