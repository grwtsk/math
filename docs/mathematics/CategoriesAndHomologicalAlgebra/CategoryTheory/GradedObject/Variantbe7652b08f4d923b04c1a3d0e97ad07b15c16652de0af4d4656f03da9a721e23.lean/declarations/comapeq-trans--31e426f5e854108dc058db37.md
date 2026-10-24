# comapEq_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6afcf7f3-7bcb-0ac8-4916-70c0ff1976f4",
  "kind": "theorem",
  "lexical_name": "comapEq_trans",
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
  "slug": "comapeq-trans--31e426f5e854108dc058db37",
  "source": {
    "blob": "b4564642b88c2c18e7b10f42c5d425688ac5fac4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31e426f5e854108dc058db37c9b13f68157cd29a044442300ce0c924d51cbc15",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6afcf7f3-7bcb-0ac8-4916-70c0ff1976f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comapEq_trans {β γ : Type w} {f g h : β → γ} (k : f = g) (l : g = h) :
    comapEq C (k.trans l) = comapEq C k ≪≫ comapEq C l := by aesop_cat
#align category_theory.graded_object.comap_eq_trans CategoryTheory.GradedObject.comapEq_trans

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4564642b88c2c18e7b10f42c5d425688ac5fac4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
