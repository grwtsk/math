# forget₂_preservesEpimorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b69fff2877128c42120d74b0bdfa32c1c2ea48d606d9b8dbb0fd006ed219819",
  "kind": "instance",
  "lexical_name": "forget₂_preservesEpimorphisms",
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
  "slug": "forget-preservesepimorphisms--a00aa68b2190ff7a431151a6",
  "source": {
    "blob": "47e38e5bfb0f3a78a44f8284334a3c8257a51e7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 238,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a00aa68b2190ff7a431151a6f96cc786c03262c271fdd84a4f3363cf4a8e0c85",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b69fff2877128c42120d74b0bdfa32c1c2ea48d606d9b8dbb0fd006ed219819`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance forget₂_preservesEpimorphisms (C : Type u) (D : Type u')
    [Category.{v} C] [ConcreteCategory.{w} C] [Category.{v'} D] [ConcreteCategory.{w} D]
    [HasForget₂ C D] [(forget C).PreservesEpimorphisms] :
    (forget₂ C D).PreservesEpimorphisms :=
  have : (forget₂ C D ⋙ forget D).PreservesEpimorphisms := by
    simp only [HasForget₂.forget_comp]
    infer_instance
  Functor.preservesEpimorphisms_of_preserves_of_reflects _ (forget D)
#align category_theory.forget₂_preserves_epimorphisms CategoryTheory.forget₂_preservesEpimorphisms

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47e38e5bfb0f3a78a44f8284334a3c8257a51e7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
