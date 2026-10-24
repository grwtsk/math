# map_compatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82f48f0932e52b11636563a6762ce19dac610edf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 674,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:097ff0d9-5ecf-010f-8c61-43f65414c098",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0904900c-03df-28f0-55ba-21d27b511819",
  "kind": "lemma",
  "lexical_name": "map_compatibility",
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
  "slug": "map-compatibility--faaad84734125420fcb8879e",
  "source": {
    "blob": "82f48f0932e52b11636563a6762ce19dac610edf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 686,
    "line": 674,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faaad84734125420fcb8879ede72e14ca35b0c1a016722106959cbc5ff6bf0ef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0904900c-03df-28f0-55ba-21d27b511819`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 674–686.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_compatibility {W} {X Y : C}
    (φ : W.LeftFraction X Y) {E : Type*} [Category E]
    (L₁ : C ⥤ D) (L₂ : C ⥤ E) [L₁.IsLocalization W] [L₂.IsLocalization W] :
    (Localization.uniq L₁ L₂ W).functor.map (φ.map L₁ (Localization.inverts L₁ W)) =
      (Localization.compUniqFunctor L₁ L₂ W).hom.app X ≫
        φ.map L₂ (Localization.inverts L₂ W) ≫
        (Localization.compUniqFunctor L₁ L₂ W).inv.app Y := by
  let e := Localization.compUniqFunctor L₁ L₂ W
  have := Localization.inverts L₂ W φ.s φ.hs
  rw [← cancel_mono (e.hom.app Y), assoc, assoc, e.inv_hom_id_app, comp_id,
    ← cancel_mono (L₂.map φ.s), assoc, assoc, map_comp_map_s, ← e.hom.naturality]
  simpa [← Functor.map_comp_assoc, map_comp_map_s] using e.hom.naturality φ.f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean#L674).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82f48f0932e52b11636563a6762ce19dac610edf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
