# isColimitCoconeOfConeLeftOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f72a520495568e2a1aa27b244a338aa315ca3b1d9914fbe1938fd6aeb17eed5",
  "kind": "def",
  "lexical_name": "isColimitCoconeOfConeLeftOp",
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
  "slug": "iscolimitcoconeofconeleftop--6a6c19bb0672ede6687fc2bc",
  "source": {
    "blob": "2ed1be9f26c8c64c20ab02f397a123c7ece3b4a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 117,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant21ba1a578cb0440cbc650e033e8134012d129198acef897d27be24d9307c32e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a6c19bb0672ede6687fc2bcac3820da0198e0d5c703676a4621efeeb4e2fabb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant21ba1a578cb0440cbc650e033e8134012d129198acef897d27be24d9307c32e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f72a520495568e2a1aa27b244a338aa315ca3b1d9914fbe1938fd6aeb17eed5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCoconeOfConeLeftOp (F : J ⥤ Cᵒᵖ) {c : Cone F.leftOp} (hc : IsLimit c) :
    IsColimit (coconeOfConeLeftOp c) where
  desc s := (hc.lift (coneLeftOpOfCocone s)).op
  fac s j :=
    Quiver.Hom.unop_inj <| by
      simp only [coconeOfConeLeftOp_ι_app, unop_comp, Quiver.Hom.unop_op, IsLimit.fac,
        coneLeftOpOfCocone_π_app, unop_op]
  uniq s m w := by
    refine Quiver.Hom.unop_inj (hc.hom_ext fun j => Quiver.Hom.op_inj ?_)
    simpa only [Quiver.Hom.unop_op, IsLimit.fac, coconeOfConeLeftOp_ι_app] using! w (unop j)

/-- Turn a colimit for `F.rightOp : J ⥤ Cᵒᵖ` into a limit for `F : Jᵒᵖ ⥤ C`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant21ba1a578cb0440cbc650e033e8134012d129198acef897d27be24d9307c32e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant21ba1a578cb0440cbc650e033e8134012d129198acef897d27be24d9307c32e6.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ed1be9f26c8c64c20ab02f397a123c7ece3b4a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
