# isColimitLocallyConstantPresheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8c5a1e7da261012ab7669251088b2c22666dc5b4cb751720932c00955222b79",
  "kind": "def",
  "lexical_name": "isColimitLocallyConstantPresheaf",
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
  "slug": "iscolimitlocallyconstantpresheaf--493f16183a5a300dc7c27398",
  "source": {
    "blob": "844ffd497cf6c389ba7cea5cc8a1059dd49aee1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant97eeb564d6ad3336b404dd78e2324bccf5ad38f63fe22ab6a9adbed8e3d6cc0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:493f16183a5a300dc7c273981bf4e918d8f77dcbcf303260a9765899acaccab5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant97eeb564d6ad3336b404dd78e2324bccf5ad38f63fe22ab6a9adbed8e3d6cc0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8c5a1e7da261012ab7669251088b2c22666dc5b4cb751720932c00955222b79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitLocallyConstantPresheaf (hc : IsLimit c) [∀ i, Epi (c.π.app i)] :
    IsColimit <| (locallyConstantPresheaf X).mapCocone c.op := by
  refine Types.FilteredColimit.isColimitOf _ _ ?_ ?_
  · intro (f : LocallyConstant c.pt X)
    obtain ⟨j, h⟩ := Profinite.exists_locallyConstant.{_, u} c hc f
    exact ⟨⟨j⟩, h⟩
  · intro ⟨i⟩ ⟨j⟩ (fi : LocallyConstant _ _) (fj : LocallyConstant _ _)
      (h : fi.comap (c.π.app i).hom.hom = fj.comap (c.π.app j).hom.hom)
    obtain ⟨k, ki, kj, _⟩ := IsCofilteredOrEmpty.cone_objs i j
    refine ⟨⟨k⟩, ki.op, kj.op, ?_⟩
    dsimp
    ext x
    obtain ⟨x, hx⟩ := ((Profinite.epi_iff_surjective (c.π.app k)).mp inferInstance) x
    rw [← hx]
    change fi ((c.π.app k ≫ (F ⋙ toProfinite).map _) x) =
      fj ((c.π.app k ≫ (F ⋙ toProfinite).map _) x)
    have h := LocallyConstant.congr_fun h x
    dsimp [- CompHausLike.coe_comp] -- `coe_comp` prevents rewriting with `c.w`
    rwa [dsimp% c.w, dsimp% c.w]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant97eeb564d6ad3336b404dd78e2324bccf5ad38f63fe22ab6a9adbed8e3d6cc0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant97eeb564d6ad3336b404dd78e2324bccf5ad38f63fe22ab6a9adbed8e3d6cc0c.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `844ffd497cf6c389ba7cea5cc8a1059dd49aee1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
