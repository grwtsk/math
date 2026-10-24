# Sheaf.isLimitConeΓ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47718b31b8b36e2d725898a7e5c6d91aa0ddb537b9086f7f96e4c5cf40920f21",
  "kind": "def",
  "lexical_name": "Sheaf.isLimitConeΓ",
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
  "slug": "sheaf-islimitcone--5673c8073ea91b97e7011183",
  "source": {
    "blob": "1087644bba67d500371bf11e5e2edeb3f39b96a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 149,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5673c8073ea91b97e7011183f692081fecf4cf67e6004460418ed7a000fbadf4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47718b31b8b36e2d725898a7e5c6d91aa0ddb537b9086f7f96e4c5cf40920f21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Sheaf.isLimitConeΓ [HasGlobalSectionsFunctor J A] (F : Sheaf J A) :
    IsLimit F.coneΓ where
  lift c := F.ΓHomEquiv c.π
  fac c j := by
    suffices h : ((Functor.const Cᵒᵖ).map (ΓHomEquiv c.π)) ≫ F.coneΓ.π = c.π from congr_app h j
    simp [coneΓ, ← ΓHomEquiv_naturality_left_symm]
  uniq c f hf := by
    replace hf : ((Functor.const Cᵒᵖ).map f) ≫ F.coneΓ.π = c.π := by ext j; exact hf j
    simpa [coneΓ, ← ΓHomEquiv_naturality_left_symm, Equiv.symm_apply_eq] using hf

/-- The restriction map from global sections of `F` to sections on `U`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1087644bba67d500371bf11e5e2edeb3f39b96a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
