# isIso_iff_coyoneda_map_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f514153e7de20fee02d247c0509fe713e853d99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 816,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b0215e98155db4ee302e7125dd0637af5a1cb301f3ce5cccca48b32ff39dd92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e802562f-01c5-5191-48fb-6e8c77cd45a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9f1f597-0c8f-af8a-5d07-51a1212644c8",
  "kind": "lemma",
  "lexical_name": "isIso_iff_coyoneda_map_bijective",
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
  "slug": "isiso-iff-coyoneda-map-bijective--814bc7a31a16bfc8a6cd14dc",
  "source": {
    "blob": "7f514153e7de20fee02d247c0509fe713e853d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 823,
    "line": 816,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5b0215e98155db4ee302e7125dd0637af5a1cb301f3ce5cccca48b32ff39dd92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:814bc7a31a16bfc8a6cd14dcbb17b1288a6b18b6e3e7a5561e95f8e1d8448a5a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5b0215e98155db4ee302e7125dd0637af5a1cb301f3ce5cccca48b32ff39dd92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9f1f597-0c8f-af8a-5d07-51a1212644c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 816–823.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_iff_coyoneda_map_bijective {X Y : C} (f : X ⟶ Y) :
    IsIso f ↔ (∀ (T : C), Function.Bijective (fun (x : Y ⟶ T) => f ≫ x)) := by
  refine ⟨fun _ ↦ ?_, fun hf ↦ isIso_of_coyoneda_map_bijective f hf⟩
  have : IsIso (coyoneda.map f.op) := inferInstance
  intro T
  rw [← isIso_iff_bijective]
  exact inferInstanceAs (IsIso ((coyoneda.map f.op).app _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5b0215e98155db4ee302e7125dd0637af5a1cb301f3ce5cccca48b32ff39dd92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5b0215e98155db4ee302e7125dd0637af5a1cb301f3ce5cccca48b32ff39dd92.lean#L816).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f514153e7de20fee02d247c0509fe713e853d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
