# HasFactorization.over

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b16b46d39f8cfeb40ea279378387f061aa0b6de1d13241017f3dbab1b504e85c",
  "kind": "instance",
  "lexical_name": "HasFactorization.over",
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
  "slug": "hasfactorization-over--d90617f7a6a5c78674bbe52e",
  "source": {
    "blob": "c45fcfc2279811dbdcf7db3245160397f4c238a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 858,
    "line": 844,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant25401e3c192c3f32fcd18b7fad1b56dcb8871049111d2a1f25956a11970b0a38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d90617f7a6a5c78674bbe52e334c5413b6e6ce672ee7634b66dd69af551b19d3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant25401e3c192c3f32fcd18b7fad1b56dcb8871049111d2a1f25956a11970b0a38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b16b46d39f8cfeb40ea279378387f061aa0b6de1d13241017f3dbab1b504e85c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 844–858.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance HasFactorization.over
    {C : Type*} [Category* C] (W₁ W₂ : MorphismProperty C)
    [W₁.HasFactorization W₂] (S : C) :
    (W₁.over (X := S)).HasFactorization W₂.over where
  nonempty_mapFactorizationData {X Y} f := by
    let hf := W₁.factorizationData W₂ f.left
    exact ⟨{
      Z := .mk (hf.p ≫ Y.hom)
      i := CategoryTheory.Over.homMk hf.i
      p := CategoryTheory.Over.homMk hf.p
      hi := hf.hi
      hp := hf.hp
    }⟩

end CategoryTheory.MorphismProperty
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant25401e3c192c3f32fcd18b7fad1b56dcb8871049111d2a1f25956a11970b0a38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant25401e3c192c3f32fcd18b7fad1b56dcb8871049111d2a1f25956a11970b0a38.lean#L844).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c45fcfc2279811dbdcf7db3245160397f4c238a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
