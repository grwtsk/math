# equivalenceRestrictCodomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fec50848253b56fa111121113d7f0b90de0e939cf01c7c9f63bbad39ff65d8c4",
  "kind": "def",
  "lexical_name": "equivalenceRestrictCodomain",
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
  "slug": "equivalencerestrictcodomain--7dd9b5c42346f6d7900ffaa8",
  "source": {
    "blob": "15f9739f3367e18d17a39bde0c5c8998c1ed860f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variant2c85040e7715bee88a1bcc5e9585ebad81d7b87b6fc56847a75d96937d2db68b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7dd9b5c42346f6d7900ffaa896c27c2c65424de252e265bec2105a53ec93c686",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variant2c85040e7715bee88a1bcc5e9585ebad81d7b87b6fc56847a75d96937d2db68b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fec50848253b56fa111121113d7f0b90de0e939cf01c7c9f63bbad39ff65d8c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivalenceRestrictCodomain
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D)
    (P : D.Obj → Prop)
    (hObj : ∀ X : C.Obj, P (F.obj X))
    (hFull : Full F)
    (hFaithful : Faithful F)
    (hEss : ∀ Y : D.Obj, P Y → EssentialImage F Y) :
    EquivalenceWitness (restrictCodomain F P hObj) where
  full := fullRestrictCodomain F P hObj hFull
  faithful := faithfulRestrictCodomain F P hObj hFaithful
  essentiallySurjective :=
    essentiallySurjectiveRestrictCodomain F P hObj hEss

/-- Identity functor for the core-only category structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variant2c85040e7715bee88a1bcc5e9585ebad81d7b87b6fc56847a75d96937d2db68b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variant2c85040e7715bee88a1bcc5e9585ebad81d7b87b6fc56847a75d96937d2db68b.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15f9739f3367e18d17a39bde0c5c8998c1ed860f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
