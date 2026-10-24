# isLimitConeUnopOfCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ced1dd48a86d4722b7ba2aae68b99e37b70d4b477acdbb528c926e6d692811aa",
  "kind": "def",
  "lexical_name": "isLimitConeUnopOfCocone",
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
  "slug": "islimitconeunopofcocone--f1dc9dccd9b91cd027e3d290",
  "source": {
    "blob": "e6d310eba69f1e4ea275e1c46ded34303369668f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 84,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant39ce7022e4c9e9e0043b2cd6a0573143a914057416c8b19043093287582888fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1dc9dccd9b91cd027e3d2906789670cde6ed2c7c31d32a16acc561e7b7777b8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant39ce7022e4c9e9e0043b2cd6a0573143a914057416c8b19043093287582888fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ced1dd48a86d4722b7ba2aae68b99e37b70d4b477acdbb528c926e6d692811aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitConeUnopOfCocone (F : Jᵒᵖ ⥤ Cᵒᵖ) {c : Cocone F} (hc : IsColimit c) :
    IsLimit (coneUnopOfCocone c) where
  lift s := (hc.desc (coconeOfConeUnop s)).unop
  fac s j := Quiver.Hom.op_inj (by simp)
  uniq s m w := by
    refine Quiver.Hom.op_inj (hc.hom_ext fun j => Quiver.Hom.unop_inj ?_)
    simpa only [Quiver.Hom.op_unop, IsColimit.fac] using w (unop j)

/-- Turn a limit of `F : Jᵒᵖ ⥤ Cᵒᵖ` into a colimit of `F.unop : J ⥤ C`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant39ce7022e4c9e9e0043b2cd6a0573143a914057416c8b19043093287582888fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant39ce7022e4c9e9e0043b2cd6a0573143a914057416c8b19043093287582888fe.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6d310eba69f1e4ea275e1c46ded34303369668f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
