# isColimitCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e319e7438ae854db3de3d3591baffd25b7151fd2f9b34be9242099bd37d22e2f",
  "kind": "def",
  "lexical_name": "isColimitCocone",
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
  "slug": "iscolimitcocone--b9831eab79c42246561e2854",
  "source": {
    "blob": "5d0d9a9eb10c6ecef6ea19785f9bd2b8ed49eb46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 158,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9831eab79c42246561e28549450f43481176a73b271c890aefd8acc33e045fe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e319e7438ae854db3de3d3591baffd25b7151fd2f9b34be9242099bd37d22e2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCocone (hc : IsLimit c) [∀ i, Epi (c.π.app i)] (hc' : IsColimit <| G.mapCocone c.op) :
    IsColimit (cocone G c.pt) :=
  haveI := functorOp_final c hc
  (Functor.final_comp (opOpEquivalence ℕ).functor (functorOp c)).isColimitWhiskerEquiv _ _ hc'

end Colimit

end Extend

open Extend

section LightProfiniteAsLimit

variable (S : LightProfinite.{u})

/--
A functor `StructuredArrow S toLightProfinite ⥤ FintypeCat` whose limit in `LightProfinite` is
isomorphic to `S`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d0d9a9eb10c6ecef6ea19785f9bd2b8ed49eb46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
