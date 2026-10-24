# enrichedOrdinaryCategorySelf_eHomWhiskerLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14ad60ae77b44d6664837e1d2a5d3315475bfdc7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40a4b03a-5e22-8a77-4f80-5e2e446c37b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:592f0bc7-3c49-9c66-ac45-258ba609e8c0",
  "kind": "lemma",
  "lexical_name": "enrichedOrdinaryCategorySelf_eHomWhiskerLeft",
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
  "slug": "enrichedordinarycategoryself-ehomwhiskerleft--f0b18801e508294f30f10e06",
  "source": {
    "blob": "14ad60ae77b44d6664837e1d2a5d3315475bfdc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0b18801e508294f30f10e0638a96b11a901422bc98ef0183631440095767acf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:592f0bc7-3c49-9c66-ac45-258ba609e8c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma enrichedOrdinaryCategorySelf_eHomWhiskerLeft (X : C) {Y₁ Y₂ : C} (g : Y₁ ⟶ Y₂) :
    eHomWhiskerLeft C X g = (ihom X).map g := by
  change (ρ_ _).inv ≫ _ ◁ curry' g ≫ comp X Y₁ Y₂ = _
  rw [whiskerLeft_curry'_comp, Iso.inv_hom_id_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Varianta16e7ca8b510a4c182099291d026ecfeb94833fa10e30e0408fd02abaeed9078.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14ad60ae77b44d6664837e1d2a5d3315475bfdc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
