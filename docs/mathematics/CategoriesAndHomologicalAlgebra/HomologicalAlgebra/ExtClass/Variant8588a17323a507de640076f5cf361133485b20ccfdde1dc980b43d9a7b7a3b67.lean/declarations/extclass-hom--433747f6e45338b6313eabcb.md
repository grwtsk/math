# extClass_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:caf80b2a-94a0-5cb9-9334-63cf3fd4e6a8",
  "kind": "lemma",
  "lexical_name": "extClass_hom",
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
  "slug": "extclass-hom--433747f6e45338b6313eabcb",
  "source": {
    "blob": "008ec8e922f28fbf8adf5f6c0c92d17b2fbe2ff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant8588a17323a507de640076f5cf361133485b20ccfdde1dc980b43d9a7b7a3b67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:433747f6e45338b6313eabcb3e2708ff2799e302f687895d924d8db4750e021e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant8588a17323a507de640076f5cf361133485b20ccfdde1dc980b43d9a7b7a3b67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caf80b2a-94a0-5cb9-9334-63cf3fd4e6a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extClass_hom [HasDerivedCategory.{w'} C] : hS.extClass.hom = hS.singleδ := by
  change SmallShiftedHom.equiv W Q hS.extClass = _
  dsimp [extClass, SmallShiftedHom.equiv]
  erw [SmallHom.equiv_comp, Iso.homToEquiv_apply]
  rw [SmallHom.equiv_mkInv, SmallHom.equiv_mk]
  dsimp [singleδ, triangleOfSESδ]
  rw [Category.assoc, Category.assoc, Category.assoc,
    singleFunctorsPostcompQIso_hom_hom, singleFunctorsPostcompQIso_inv_hom]
  erw [Category.id_comp, Functor.map_id, Category.comp_id]
  rfl

end

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant8588a17323a507de640076f5cf361133485b20ccfdde1dc980b43d9a7b7a3b67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant8588a17323a507de640076f5cf361133485b20ccfdde1dc980b43d9a7b7a3b67.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `008ec8e922f28fbf8adf5f6c0c92d17b2fbe2ff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
