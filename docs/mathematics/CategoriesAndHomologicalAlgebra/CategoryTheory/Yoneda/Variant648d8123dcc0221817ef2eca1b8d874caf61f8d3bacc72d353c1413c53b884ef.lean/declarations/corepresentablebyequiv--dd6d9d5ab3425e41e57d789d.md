# corepresentableByEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c802fd781c51662be94d6c2e57b2bd7a525454383c7095f75579dc109a02936",
  "kind": "def",
  "lexical_name": "corepresentableByEquiv",
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
  "slug": "corepresentablebyequiv--dd6d9d5ab3425e41e57d789d",
  "source": {
    "blob": "a38e1c67dc5468febd2358339fcc57926cef6914",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 405,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant648d8123dcc0221817ef2eca1b8d874caf61f8d3bacc72d353c1413c53b884ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd6d9d5ab3425e41e57d789dae2df31dd4450f733dc0c47cfb611a64a78c94a5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant648d8123dcc0221817ef2eca1b8d874caf61f8d3bacc72d353c1413c53b884ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c802fd781c51662be94d6c2e57b2bd7a525454383c7095f75579dc109a02936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def corepresentableByEquiv {F : C ⥤ Type v₁} {X : C} :
    F.CorepresentableBy X ≃ (coyoneda.obj (op X) ≅ F) where
  toFun r := NatIso.ofComponents (fun _ ↦ r.homEquiv.toIso) (fun {X X'} f ↦ by
    ext g
    dsimp
    apply r.homEquiv_comp)
  invFun e :=
    { homEquiv := (e.app _).toEquiv
      homEquiv_comp := fun {X X'} f g ↦ by apply e.hom.naturality_apply }

/-- `coyoneda.obj X` is represented by `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant648d8123dcc0221817ef2eca1b8d874caf61f8d3bacc72d353c1413c53b884ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant648d8123dcc0221817ef2eca1b8d874caf61f8d3bacc72d353c1413c53b884ef.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a38e1c67dc5468febd2358339fcc57926cef6914` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
