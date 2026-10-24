# endMulEquivSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10a4ee0e10cbbd98a40e0821c4c2a3bde2d91dc4840e86a019a6e7d0384721e5",
  "kind": "def",
  "lexical_name": "endMulEquivSubgroup",
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
  "slug": "endmulequivsubgroup--dd08ebcd2123b742585290e8",
  "source": {
    "blob": "829d3779f3746fb103f76ed86f5f3ae30ca8381c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 157,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant73228b4afbb267b79001ac50b4d50e5e7fc9f6d9f771e36a97de567085aa0188.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd08ebcd2123b742585290e8c5217c8b5a5c831122590851f53f7485ce02b25e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant73228b4afbb267b79001ac50b4d50e5e7fc9f6d9f771e36a97de567085aa0188.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10a4ee0e10cbbd98a40e0821c4c2a3bde2d91dc4840e86a019a6e7d0384721e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def endMulEquivSubgroup (H : Subgroup G) : End (objEquiv G (G ⧸ H) ↑(1 : G)) ≃* H :=
  MulEquiv.trans (stabilizerIsoEnd G ((1 : G) : G ⧸ H)).symm
    (MulEquiv.subgroupCongr <| stabilizer_quotient H)
#align category_theory.action_category.End_mul_equiv_subgroup CategoryTheory.ActionCategory.endMulEquivSubgroup

/-- A target vertex `t` and a scalar `g` determine a morphism in the action groupoid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant73228b4afbb267b79001ac50b4d50e5e7fc9f6d9f771e36a97de567085aa0188.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant73228b4afbb267b79001ac50b4d50e5e7fc9f6d9f771e36a97de567085aa0188.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `829d3779f3746fb103f76ed86f5f3ae30ca8381c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
