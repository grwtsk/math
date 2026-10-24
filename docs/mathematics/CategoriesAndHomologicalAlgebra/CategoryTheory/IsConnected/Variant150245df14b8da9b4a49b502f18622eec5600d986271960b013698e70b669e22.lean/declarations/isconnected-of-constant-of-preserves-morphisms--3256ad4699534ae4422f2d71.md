# IsConnected.of_constant_of_preserves_morphisms

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
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/150245df14b8da9b4a49b502f18622eec5600d986271960b013698e70b669e22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d4b41a0-4d54-3098-1c0d-ed9ae380b1f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:793a3f2a-c0a9-2132-7ac4-2725e86d6595",
  "kind": "theorem",
  "lexical_name": "IsConnected.of_constant_of_preserves_morphisms",
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
  "slug": "isconnected-of-constant-of-preserves-morphisms--3256ad4699534ae4422f2d71",
  "source": {
    "blob": "36a222b3d352896e19a8297d987be96023f4dc24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 188,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant150245df14b8da9b4a49b502f18622eec5600d986271960b013698e70b669e22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3256ad4699534ae4422f2d71ee56ac9629fee0702e134fce0c306dfe89b9f661",
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

Occurrence: `result:793a3f2a-c0a9-2132-7ac4-2725e86d6595`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsConnected.of_constant_of_preserves_morphisms [Nonempty J]
    (h : ∀ {α : Type u₁} (F : J → α),
      (∀ {j₁ j₂ : J} (_ : j₁ ⟶ j₂), F j₁ = F j₂) → ∀ j j' : J, F j = F j') :
    IsConnected J :=
  { IsPreconnected.of_constant_of_preserves_morphisms h with }

/-- An inductive-like property for the objects of a connected category.
If the set `p` is nonempty, and `p` is closed under morphisms of `J`,
then `p` contains all of `J`.

The converse is given in `IsConnected.of_induct`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant150245df14b8da9b4a49b502f18622eec5600d986271960b013698e70b669e22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant150245df14b8da9b4a49b502f18622eec5600d986271960b013698e70b669e22.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36a222b3d352896e19a8297d987be96023f4dc24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
