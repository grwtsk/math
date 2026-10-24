# StructuralOfExpr_bicategoricalComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27a4c5fa5e9f3e15f308524f213089bdda458131",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a966951b03ff7ca246ae94078818f151596001abb401eab5e34a5b4d2a6edcab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbce98d7-3708-3960-f862-320f0286838c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4fef026-4e4c-ab0d-6012-2ce676fc97c3",
  "kind": "theorem",
  "lexical_name": "StructuralOfExpr_bicategoricalComp",
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
  "slug": "structuralofexpr-bicategoricalcomp--1fb02e742a653a976a37ba9a",
  "source": {
    "blob": "27a4c5fa5e9f3e15f308524f213089bdda458131",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Varianta966951b03ff7ca246ae94078818f151596001abb401eab5e34a5b4d2a6edcab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fb02e742a653a976a37ba9a9ce4c3c1615afdbbb1c841764fa27f5af1a62587",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Varianta966951b03ff7ca246ae94078818f151596001abb401eab5e34a5b4d2a6edcab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4fef026-4e4c-ab0d-6012-2ce676fc97c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StructuralOfExpr_bicategoricalComp {f g h i : a ⟶ b} [BicategoricalCoherence g h]
    (η : f ⟶ g) (η' : f ≅ g) (ih_η : η'.hom = η) (θ : h ⟶ i) (θ' : h ≅ i) (ih_θ : θ'.hom = θ) :
    (bicategoricalIsoComp η' θ').hom = η ⊗≫ θ := by
  simp [ih_η, ih_θ, bicategoricalIsoComp, bicategoricalComp]

end

open MonadMor₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Varianta966951b03ff7ca246ae94078818f151596001abb401eab5e34a5b4d2a6edcab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Varianta966951b03ff7ca246ae94078818f151596001abb401eab5e34a5b4d2a6edcab.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a4c5fa5e9f3e15f308524f213089bdda458131` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
