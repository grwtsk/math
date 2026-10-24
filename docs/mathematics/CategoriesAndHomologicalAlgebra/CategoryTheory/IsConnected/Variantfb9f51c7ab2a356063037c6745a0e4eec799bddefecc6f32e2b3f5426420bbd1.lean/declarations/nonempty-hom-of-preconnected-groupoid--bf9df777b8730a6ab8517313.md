# nonempty_hom_of_preconnected_groupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c50b16f5-95dd-55a7-dbad-bd5abd84ff2b",
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
  "slug": "nonempty-hom-of-preconnected-groupoid--bf9df777b8730a6ab8517313",
  "source": {
    "blob": "1d0b6356e13ba451d6dcffde5372eb24266f587d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 458,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantfb9f51c7ab2a356063037c6745a0e4eec799bddefecc6f32e2b3f5426420bbd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf9df777b8730a6ab85173138cb4caeb87cb86882add1b5d5aa2a5925f397535",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantfb9f51c7ab2a356063037c6745a0e4eec799bddefecc6f32e2b3f5426420bbd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c50b16f5-95dd-55a7-dbad-bd5abd84ff2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–467.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantfb9f51c7ab2a356063037c6745a0e4eec799bddefecc6f32e2b3f5426420bbd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variantfb9f51c7ab2a356063037c6745a0e4eec799bddefecc6f32e2b3f5426420bbd1.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d0b6356e13ba451d6dcffde5372eb24266f587d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
