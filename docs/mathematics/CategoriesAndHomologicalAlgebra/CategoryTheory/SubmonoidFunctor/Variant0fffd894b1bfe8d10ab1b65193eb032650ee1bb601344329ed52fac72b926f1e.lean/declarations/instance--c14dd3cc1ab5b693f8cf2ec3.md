# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b05b487386236e7a65ddb0b38aa6ac598b4161ab884422c2b76d07e209d085e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c14dd3cc1ab5b693f8cf2ec3",
  "source": {
    "blob": "644326b2a4d55a9a93133d07cb67f24761c9ee2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c14dd3cc1ab5b693f8cf2ec3d552e5a3a87e855b6966f8788b48f62ae2c27942",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b05b487386236e7a65ddb0b38aa6ac598b4161ab884422c2b76d07e209d085e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CompleteLattice (SubmonoidFunctor M) where
  sup F G :=
    { obj _ := F.obj _ ⊔ G.obj _
      map i := by grw [F.map i, G.map i, (Submonoid.monotone_comap).le_map_sup] }
  le_sup_left _ _ _ := by simp
  le_sup_right _ _ _ := by simp
  sup_le F G H h₁ h₂ U := by simp [h₁ U, h₂ U]
  inf S T :=
    { obj _ := S.obj _ ⊓ T.obj _
      map _ _ h := ⟨S.map _ h.1, T.map _ h.2⟩ }
  inf_le_left _ _ _ _ h := h.1
  inf_le_right _ _ _ _ h := h.2
  le_inf _ _ _ h₁ h₂ _ _ h := ⟨h₁ _ h, h₂ _ h⟩
  sSup S :=
    { obj _ := ⨆ F ∈ S, F.obj _
      map {U V} f := by
        grw [← Submonoid.monotone_comap.le_map_iSup₂]
        exact iSup₂_mono fun F _ ↦ F.map f }
  isLUB_sSup _ := ⟨fun a ha U ↦ le_iSup₂_of_le a ha le_rfl, fun _ _ _ ↦ by aesop⟩
  sInf S :=
    { obj _ := ⨅ F ∈ S, F.obj _
      map f := by
        rw [(Submonoid.gc_map_comap (M.map f).hom).u_iInf₂]
        exact iInf₂_mono fun F _ ↦ F.map f }
  isGLB_sInf _ := ⟨fun _ _ _ _ ↦ by aesop, fun _ _ _ ↦ by aesop⟩
  bot := { obj _ := ⊥ }
  bot_le _ _ := bot_le
  top := { obj _ := ⊤ }
  le_top _ _ := le_top

/-- The inclusion of a submonoid functor `S` to the original functor of monoids `M`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `644326b2a4d55a9a93133d07cb67f24761c9ee2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
