# nonempty_hom_of_preconnected_groupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36a222b3d352896e19a8297d987be96023f4dc24",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 492,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/150245df14b8da9b4a49b502f18622eec5600d986271960b013698e70b669e22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b943b945-da78-ad88-8051-593cc9ddec6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c4cd6d2-4b29-d89d-e9e5-8d75b46c0d46",
  "kind": "theorem",
  "lexical_name": "nonempty_hom_of_preconnected_groupoid",
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
  "slug": "nonempty-hom-of-preconnected-groupoid--227494118905dee00bea47ab",
  "source": {
    "blob": "36a222b3d352896e19a8297d987be96023f4dc24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 492,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant150245df14b8da9b4a49b502f18622eec5600d986271960b013698e70b669e22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:227494118905dee00bea47abe9b19536a9c7d4a21ca137657ba72a736433e76c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant150245df14b8da9b4a49b502f18622eec5600d986271960b013698e70b669e22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c4cd6d2-4b29-d89d-e9e5-8d75b46c0d46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_hom_of_preconnected_groupoid {G} [Groupoid G] [IsPreconnected G] :
    ∀ x y : G, Nonempty (x ⟶ y) := by
  refine equiv_relation _ ?_ fun {j₁ j₂} => Nonempty.intro
  exact
    ⟨fun j => ⟨𝟙 _⟩,
     fun {j₁ j₂} => Nonempty.map fun f => inv f,
     fun {_ _ _} => Nonempty.map2 (· ≫ ·)⟩

attribute [instance] nonempty_hom_of_preconnected_groupoid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant150245df14b8da9b4a49b502f18622eec5600d986271960b013698e70b669e22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant150245df14b8da9b4a49b502f18622eec5600d986271960b013698e70b669e22.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36a222b3d352896e19a8297d987be96023f4dc24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
