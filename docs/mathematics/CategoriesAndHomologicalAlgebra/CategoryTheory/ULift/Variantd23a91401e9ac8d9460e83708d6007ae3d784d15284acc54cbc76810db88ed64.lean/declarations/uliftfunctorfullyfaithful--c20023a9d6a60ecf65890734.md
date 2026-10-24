# uliftFunctorFullyFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc41a0501013efa67773c7e6436a60f7b4797b56f5479742ece652019460339d",
  "kind": "def",
  "lexical_name": "uliftFunctorFullyFaithful",
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
  "slug": "uliftfunctorfullyfaithful--c20023a9d6a60ecf65890734",
  "source": {
    "blob": "84d4d14c4a8479a95285d5687a27a144efa1fe48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 88,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ulift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c20023a9d6a60ecf65890734dd9a5e093cfed9be3a20956fa59d15b7aced436e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc41a0501013efa67773c7e6436a60f7b4797b56f5479742ece652019460339d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uliftFunctorFullyFaithful : uliftFunctor.{u, v}.FullyFaithful where
  preimage f := Grp.ofHom (MulEquiv.ulift.toMonoidHom.comp
    (f.hom.comp MulEquiv.ulift.symm.toMonoidHom))
  map_preimage _ := rfl
  preimage_map _ := rfl

/-- The universe lift functor for groups is faithful.
-/
@[to_additive
  "The universe lift functor for additive groups is faithful."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ulift/Variantd23a91401e9ac8d9460e83708d6007ae3d784d15284acc54cbc76810db88ed64.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84d4d14c4a8479a95285d5687a27a144efa1fe48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
