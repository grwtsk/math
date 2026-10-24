# resEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:791a9a2df7cda06590c0ae1c430fe42a63e1606130442421d8c99b817d302c8f",
  "kind": "def",
  "lexical_name": "resEquiv",
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
  "slug": "resequiv--bd843340e1e66515fae044ee",
  "source": {
    "blob": "a6618b5b82294948546457c165c56a64d4eda154",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd843340e1e66515fae044eed6c0de2fc229d40941af9800974dd7cb5d4feb93",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:791a9a2df7cda06590c0ae1c430fe42a63e1606130442421d8c99b817d302c8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resEquiv (f : G ≃ₜ* H) : ContAction V H ≌ ContAction V G where
  functor := res _ f
  inverse := res _ f.symm
  unitIso := resCongr V (ContinuousMonoidHom.id H) _ (by ext; simp) ≪≫
    ContAction.resComp _ _ _
  counitIso := (ContAction.resComp _ _ _).symm ≪≫
    ContAction.resCongr V _ (ContinuousMonoidHom.id G) (by ext; simp)
  functor_unitIso_comp X := (Action.resEquiv V f.toMulEquiv).functor_unitIso_comp X.obj

end ContAction

open ContAction

/-- The subcategory of `ContAction V G` where the topology is discrete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant41fd3bf6c93e5a0fdfc4f7dad8937ea9b219ea829bc7e61d1e0b3663ffd05c0c.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6618b5b82294948546457c165c56a64d4eda154` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
