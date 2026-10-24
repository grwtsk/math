# nonempty_hom_of_connected_groupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:388a619a19fa79251a59b3c5849adc190b209c60d05c5cd9d7fb68030f393978",
  "kind": "instance",
  "lexical_name": "nonempty_hom_of_connected_groupoid",
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
  "slug": "nonempty-hom-of-connected-groupoid--ff6ebcb6ac9d791a364dffe9",
  "source": {
    "blob": "30cfa82be70523ff568e1f082bc52d0c9d452c84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 393,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff6ebcb6ac9d791a364dffe9fb81b1877f51d1ef520bfdd1662add59afd26f49",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:388a619a19fa79251a59b3c5849adc190b209c60d05c5cd9d7fb68030f393978`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nonempty_hom_of_connected_groupoid {G} [Groupoid G] [IsConnected G] :
    ∀ x y : G, Nonempty (x ⟶ y) := by
  refine' equiv_relation _ _ @fun j₁ j₂ => Nonempty.intro
  exact
    ⟨fun j => ⟨𝟙 _⟩, @fun j₁ j₂ => Nonempty.map fun f => inv f, @fun _ _ _ => Nonempty.map2 (· ≫ ·)⟩
#align category_theory.nonempty_hom_of_connected_groupoid CategoryTheory.nonempty_hom_of_connected_groupoid

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30cfa82be70523ff568e1f082bc52d0c9d452c84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
