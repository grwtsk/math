# commShift_iso_hom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0162f9929b9bb912004f088fe06061f882d2e9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6fbaad91-20bc-57fc-d4c4-71504193de86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1315033f-0556-f36c-d16b-881ee3d7a307",
  "kind": "lemma",
  "lexical_name": "commShift_iso_hom_app",
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
  "slug": "commshift-iso-hom-app--3816f5bfd9f632ca8d3cfd09",
  "source": {
    "blob": "b0162f9929b9bb912004f088fe06061f882d2e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 284,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3816f5bfd9f632ca8d3cfd0963e5e67f1081366b6f56db3a035cd86303a9ffd6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1315033f-0556-f36c-d16b-881ee3d7a307`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma commShift_iso_hom_app (m : M) (X : C₁) :
    letI := Φ.commShift M L₁ L₂ G e
    (G.commShiftIso m).hom.app (L₁.obj X) =
      G.map ((L₁.commShiftIso m).inv.app X) ≫ e.inv.app _ ≫
        L₂.map ((Φ.functor.commShiftIso m).hom.app X) ≫
        (L₂.commShiftIso m).hom.app _ ≫ (e.hom.app X)⟦m⟧' := by
  simp [Functor.commShiftOfLocalization_iso_hom_app,
    Functor.commShiftIso_comp_hom_app]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0162f9929b9bb912004f088fe06061f882d2e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
