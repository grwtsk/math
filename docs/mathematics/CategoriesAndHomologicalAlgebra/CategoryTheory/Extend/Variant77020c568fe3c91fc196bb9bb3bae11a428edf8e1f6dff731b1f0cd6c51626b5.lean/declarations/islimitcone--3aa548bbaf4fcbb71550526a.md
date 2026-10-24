# isLimitCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cfd79dad99f18fdf4d0fd4f00c89b2a61481d54eadffd49645512ddb88b0d0f",
  "kind": "def",
  "lexical_name": "isLimitCone",
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
  "slug": "islimitcone--3aa548bbaf4fcbb71550526a",
  "source": {
    "blob": "5d0d9a9eb10c6ecef6ea19785f9bd2b8ed49eb46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 120,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3aa548bbaf4fcbb71550526aaac7295bf5c9bc0641c8fe97841bd90a260bad1f",
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

Occurrence: `declaration:1cfd79dad99f18fdf4d0fd4f00c89b2a61481d54eadffd49645512ddb88b0d0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitCone (hc : IsLimit c) [∀ i, Epi (c.π.app i)] (hc' : IsLimit <| G.mapCone c) :
    IsLimit (cone G c.pt) := (functor_initial c hc).isLimitWhiskerEquiv _ _ hc'

end Limit

section Colimit

variable {C : Type*} [Category C] (G : LightProfiniteᵒᵖ ⥤ C)

/--
Given a functor `G` from `LightProfiniteᵒᵖ` and `S : LightProfinite`, we obtain a cocone on
`(CostructuredArrow.proj toLightProfinite.op ⟨S⟩ ⋙ toLightProfinite.op ⋙ G)` with cocone point
`G.obj ⟨S⟩`.

Whiskering this cocone with `LightProfinite.Extend.functorOp c` gives `G.mapCocone c.op` as we
check in the example below.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d0d9a9eb10c6ecef6ea19785f9bd2b8ed49eb46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
