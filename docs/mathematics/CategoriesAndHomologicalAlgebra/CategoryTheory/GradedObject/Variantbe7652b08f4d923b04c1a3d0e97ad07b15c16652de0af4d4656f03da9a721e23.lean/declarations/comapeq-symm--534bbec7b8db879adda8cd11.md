# comapEq_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abc43901-a62f-ddf2-a3b8-cb8a215b45ef",
  "kind": "theorem",
  "lexical_name": "comapEq_symm",
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
  "slug": "comapeq-symm--534bbec7b8db879adda8cd11",
  "source": {
    "blob": "b4564642b88c2c18e7b10f42c5d425688ac5fac4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 114,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:534bbec7b8db879adda8cd1136f3dcb7bdb8482149186a8f061a0117c26a60f9",
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

Occurrence: `result:abc43901-a62f-ddf2-a3b8-cb8a215b45ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comapEq_symm {β γ : Type w} {f g : β → γ} (h : f = g) :
    comapEq C h.symm = (comapEq C h).symm := by aesop_cat
#align category_theory.graded_object.comap_eq_symm CategoryTheory.GradedObject.comapEq_symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4564642b88c2c18e7b10f42c5d425688ac5fac4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
