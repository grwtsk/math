# whiskeringLeftEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73e5aae6519ba16297ad21744452f58b67d92d2003d6d09ef2dbdd93af992ab5",
  "kind": "def",
  "lexical_name": "whiskeringLeftEquivalence",
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
  "slug": "whiskeringleftequivalence--4fe656ca03df2487b69c6ef9",
  "source": {
    "blob": "1f7e0457b1021ece29c7bdd2b8108157820d4e3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 353,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fe656ca03df2487b69c6ef920a1c852ab0f078d6ac1ea1af2668ab67eae8b30",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73e5aae6519ba16297ad21744452f58b67d92d2003d6d09ef2dbdd93af992ab5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def whiskeringLeftEquivalence : W.Localization ⥤ D ≌ W.FunctorsInverting D where
  functor := WhiskeringLeftEquivalence.functor W D
  inverse := WhiskeringLeftEquivalence.inverse W D
  unitIso := WhiskeringLeftEquivalence.unitIso W D
  counitIso := WhiskeringLeftEquivalence.counitIso W D
  functor_unitIso_comp F := by
    ext
    simp only [WhiskeringLeftEquivalence.unitIso_hom, eqToHom_app, eqToHom_refl,
      WhiskeringLeftEquivalence.counitIso_hom, eqToHom_map, eqToHom_trans]
    rfl

end Construction

end Localization

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f7e0457b1021ece29c7bdd2b8108157820d4e3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
