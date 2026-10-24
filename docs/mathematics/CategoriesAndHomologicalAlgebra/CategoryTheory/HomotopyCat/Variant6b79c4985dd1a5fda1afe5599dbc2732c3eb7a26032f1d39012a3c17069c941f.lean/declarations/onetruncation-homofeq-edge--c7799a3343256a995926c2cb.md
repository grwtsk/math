# OneTruncation₂.homOfEq_edge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44298425-a2c9-1f20-95f4-9d86009b2ee0",
  "kind": "lemma",
  "lexical_name": "OneTruncation₂.homOfEq_edge",
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
  "slug": "onetruncation-homofeq-edge--c7799a3343256a995926c2cb",
  "source": {
    "blob": "5735b26e11096397d31d1caffd34f764a611a43d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 130,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7799a3343256a995926c2cbe08ab5b93c688c41ebadf003de86dd89696ef592",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44298425-a2c9-1f20-95f4-9d86009b2ee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma OneTruncation₂.homOfEq_edge
    {X : SSet.Truncated.{u} 2} {x₁ y₁ x₂ y₂ : OneTruncation₂ X}
    (f : x₁ ⟶ y₁) (hx : x₁ = x₂) (hy : y₁ = y₂) :
    (Quiver.homOfEq f hx hy).edge = f.edge := by
  subst hx hy
  rfl

section
variable {C : Type u} [Category.{v} C]

/-- An equivalence between the type of objects underlying a category and the type of 0-simplices in
the 2-truncated nerve. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variant6b79c4985dd1a5fda1afe5599dbc2732c3eb7a26032f1d39012a3c17069c941f.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5735b26e11096397d31d1caffd34f764a611a43d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
