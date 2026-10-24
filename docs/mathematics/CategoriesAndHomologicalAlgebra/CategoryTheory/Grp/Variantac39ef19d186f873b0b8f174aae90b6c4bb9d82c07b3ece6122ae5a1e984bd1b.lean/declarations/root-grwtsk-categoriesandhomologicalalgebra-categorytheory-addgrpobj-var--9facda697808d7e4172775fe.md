# _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AddGrpObj.Variant3d789a7817624111c521b1196d9518be9cebc11fe128ef369ff2663362d13f6e.CategoryTheory.AddGrpObj.ofIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fbd7e6c62d0f87e5e60e518498c992b278b45da6d62210ff5203a505ce96e8d5",
  "kind": "abbrev",
  "lexical_name": "_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AddGrpObj.Variant3d789a7817624111c521b1196d9518be9cebc11fe128ef369ff2663362d13f6e.CategoryTheory.AddGrpObj.ofIso",
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
  "slug": "root-grwtsk-categoriesandhomologicalalgebra-categorytheory-addgrpobj-var--9facda697808d7e4172775fe",
  "source": {
    "blob": "00bbc634fcf92a5fc1487ea07a456cc1a1be9827",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 231,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variantac39ef19d186f873b0b8f174aae90b6c4bb9d82c07b3ece6122ae5a1e984bd1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9facda697808d7e4172775fe6c08f492c5e552146b8e9380252315defd2509d0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variantac39ef19d186f873b0b8f174aae90b6c4bb9d82c07b3ece6122ae5a1e984bd1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fbd7e6c62d0f87e5e60e518498c992b278b45da6d62210ff5203a505ce96e8d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AddGrpObj.Variant3d789a7817624111c521b1196d9518be9cebc11fe128ef369ff2663362d13f6e.CategoryTheory.AddGrpObj.ofIso {G' X : C} [AddGrpObj G'] (e : G' ≅ X) :
    AddGrpObj X where
  toAddMonObj := AddMonObj.ofIso e
  neg := e.inv ≫ AddGrpObj.neg ≫ e.hom
  left_neg := by simp +instances [AddMonObj.ofIso]
  right_neg := by simp +instances [AddMonObj.ofIso]

/-- Transfer `GrpObj` along an isomorphism. -/
-- Note: The simps lemmas are not tagged simp because their `#discr_tree_simp_key` are too generic.
@[simps! -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variantac39ef19d186f873b0b8f174aae90b6c4bb9d82c07b3ece6122ae5a1e984bd1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variantac39ef19d186f873b0b8f174aae90b6c4bb9d82c07b3ece6122ae5a1e984bd1b.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00bbc634fcf92a5fc1487ea07a456cc1a1be9827` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
