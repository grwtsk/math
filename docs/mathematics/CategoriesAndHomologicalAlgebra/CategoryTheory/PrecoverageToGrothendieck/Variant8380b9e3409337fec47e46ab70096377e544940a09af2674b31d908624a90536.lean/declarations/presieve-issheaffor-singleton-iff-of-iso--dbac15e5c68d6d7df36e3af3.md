# Presieve.isSheafFor_singleton_iff_of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "801321f4438ed7a239b08c9286537093c33a35fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3beaff2c-a798-f52f-2910-da93f65866c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:832de20f-529c-9ed9-1906-04aa76864046",
  "kind": "lemma",
  "lexical_name": "Presieve.isSheafFor_singleton_iff_of_iso",
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
  "slug": "presieve-issheaffor-singleton-iff-of-iso--dbac15e5c68d6d7df36e3af3",
  "source": {
    "blob": "801321f4438ed7a239b08c9286537093c33a35fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 231,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbac15e5c68d6d7df36e3af391671a352cec45b02d3df4408916e347afe4b14b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:832de20f-529c-9ed9-1906-04aa76864046`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Presieve.isSheafFor_singleton_iff_of_iso {F : Cᵒᵖ ⥤ Type*} {S X Y : C} (f : X ⟶ S)
    (g : Y ⟶ S) (e : X ≅ Y) (he : e.hom ≫ g = f) :
    (singleton f).IsSheafFor F ↔ (singleton g).IsSheafFor F := by
  subst he
  rw [← Presieve.ofArrows_pUnit.{0}, ← Presieve.ofArrows_pUnit,
    Presieve.isSheafFor_ofArrows_comp_iff]

open Limits

variable {D : Type*} [Category* D]

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `801321f4438ed7a239b08c9286537093c33a35fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
