# resEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e10ee1cba430d7ca7ce9cf1a405db431be4a96729f530d082a15fdb1e97fd8a",
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
  "slug": "resequiv--53eb31c1667aab1e9c4455f2",
  "source": {
    "blob": "5b358de1c9bb56c63dcf417cd2873bda983e8de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 345,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53eb31c1667aab1e9c4455f24ea432e5a7757ca04e8e3ab7a25b19316fe3eaa7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e10ee1cba430d7ca7ce9cf1a405db431be4a96729f530d082a15fdb1e97fd8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resEquiv {G H : Type*} [Monoid G] [Monoid H] (f : G ≃* H) :
    Action V H ≌ Action V G where
  functor := Action.res _ f
  inverse := Action.res _ f.symm
  unitIso := Action.resCongr (f := MonoidHom.id H) V (by ext; simp) ≪≫ (Action.resComp _ _ _).symm
  counitIso := Action.resComp _ _ _ ≪≫
    Action.resCongr (f' := MonoidHom.id G) V (by ext; simp)

-- TODO promote `res` to a pseudofunctor from
-- the locally discrete bicategory constructed from `Monᵒᵖ` to `Cat`, sending `G` to `Action V G`.

variable {G H : Type*} [Monoid G] [Monoid H] (f : G →* H)

/-- The functor from `Action V H` to `Action V G` induced by a morphism `f : G → H` is faithful. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ead1d9b06d5e422dbcd1be222d39e7db2df162a7f516ea98f6814742afd64f.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b358de1c9bb56c63dcf417cd2873bda983e8de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
