# sup_factors_of_factors_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b76e9db851fcb3fa332f44a2a9a755a4419ad5c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 530,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9a53302a5f5993d3af70a5c12ddc51e2edade9abdfd59d5ae601a880e72ea8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15019ba6-b9aa-21a6-31ea-66a30dae4fc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13499f1a-a3b8-adf8-4c51-76dae4ad88e5",
  "kind": "theorem",
  "lexical_name": "sup_factors_of_factors_right",
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
  "slug": "sup-factors-of-factors-right--378a4d66b040a6a5985f9668",
  "source": {
    "blob": "b76e9db851fcb3fa332f44a2a9a755a4419ad5c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 536,
    "line": 530,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb9a53302a5f5993d3af70a5c12ddc51e2edade9abdfd59d5ae601a880e72ea8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:378a4d66b040a6a5985f966854b18d0f678a1a64a2977d15bc0152e853f07de0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb9a53302a5f5993d3af70a5c12ddc51e2edade9abdfd59d5ae601a880e72ea8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13499f1a-a3b8-adf8-4c51-76dae4ad88e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 530–536.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_factors_of_factors_right {A B : C} {X Y : Subobject B} {f : A ⟶ B} (P : Y.Factors f) :
    (X ⊔ Y).Factors f :=
  factors_of_le f le_sup_right P
#align category_theory.subobject.sup_factors_of_factors_right CategoryTheory.Subobject.sup_factors_of_factors_right

variable [HasInitial C] [InitialMonoClass C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb9a53302a5f5993d3af70a5c12ddc51e2edade9abdfd59d5ae601a880e72ea8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb9a53302a5f5993d3af70a5c12ddc51e2edade9abdfd59d5ae601a880e72ea8e.lean#L530).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b76e9db851fcb3fa332f44a2a9a755a4419ad5c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
