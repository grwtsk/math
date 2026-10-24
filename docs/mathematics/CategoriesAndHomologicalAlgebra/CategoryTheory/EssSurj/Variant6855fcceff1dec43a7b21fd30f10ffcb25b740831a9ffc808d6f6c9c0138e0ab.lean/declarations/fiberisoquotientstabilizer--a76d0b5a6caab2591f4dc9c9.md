# fiberIsoQuotientStabilizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9726d0f61fd41cc124b8afd9f2b36f50de8059e81ee2a5d03c29250a3a15ea9",
  "kind": "def",
  "lexical_name": "fiberIsoQuotientStabilizer",
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
  "slug": "fiberisoquotientstabilizer--a76d0b5a6caab2591f4dc9c9",
  "source": {
    "blob": "017cc222f3ec68007cfddfcd22d10a4b99e689a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 101,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a76d0b5a6caab2591f4dc9c99b660aadbbf3ad1da79a254086ffe433ded46d4a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9726d0f61fd41cc124b8afd9f2b36f50de8059e81ee2a5d03c29250a3a15ea9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fiberIsoQuotientStabilizer (X : C) [IsConnected X] (x : F.obj X) :
    (functorToAction F).obj X ≅ Aut F ⧸ₐ MulAction.stabilizer (Aut F) x :=
  haveI : IsConnected ((functorToAction F).obj X) := PreservesIsConnected.preserves
  letI : Fintype (Aut F ⧸ MulAction.stabilizer (Aut F) x) := fintypeQuotientStabilizer x
  FintypeCat.isoQuotientStabilizerOfIsConnected ((functorToAction F).obj X) x

section

open Action.FintypeCat

variable (V : OpenSubgroup (Aut F)) {U : OpenSubgroup (Aut F)}
  (h : Subgroup.Normal U.toSubgroup) {A : C} (u : (functorToAction F).obj A ≅ Aut F ⧸ₐ U.toSubgroup)

/-

### Strategy outline

Let `A` be an object of `C` with fiber `Aut F`-isomorphic to `Aut F ⧸ U` for an open normal
subgroup `U`. Then for any open subgroup `V` of `Aut F`, `V ⧸ (U ⊓ V)` acts on `A`. This
induces the diagram `quotientDiag`. Now assume `U ≤ V`. Then we can also postcompose
the diagram `quotientDiag` with `F`. The goal of this section is to compute that the colimit
of this composed diagram is `Aut F ⧸ V`. Finally, we obtain `F.obj (A ⧸ V) ≅ Aut F ⧸ V` as
`Aut F`-sets.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `017cc222f3ec68007cfddfcd22d10a4b99e689a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
