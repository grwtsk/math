# trans_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5873328-f2d5-1907-fd05-b8723199b727",
  "kind": "theorem",
  "lexical_name": "trans_mk",
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
  "slug": "trans-mk--a5d997d9b9bf06cf39e18b1a",
  "source": {
    "blob": "a2c73f267ba8179b20892c9ad206f2d28b0a08cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 156,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variantf427950f5ed5ecc8b0c6c0d3ee463ae727a71b15035bd54aa791510c0d58d80d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5d997d9b9bf06cf39e18b1add8ef2054390a86bb8e2e250a6b215586901ae9b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variantf427950f5ed5ecc8b0c6c0d3ee463ae727a71b15035bd54aa791510c0d58d80d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5873328-f2d5-1907-fd05-b8723199b727`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trans_mk {X Y Z : C} (hom : X ⟶ Y) (inv : Y ⟶ X) (hom_inv_id) (inv_hom_id)
    (hom' : Y ⟶ Z) (inv' : Z ⟶ Y) (hom_inv_id') (inv_hom_id') (hom_inv_id'') (inv_hom_id'') :
    Iso.trans ⟨hom, inv, hom_inv_id, inv_hom_id⟩ ⟨hom', inv', hom_inv_id', inv_hom_id'⟩ =
     ⟨hom ≫ hom', inv' ≫ inv, hom_inv_id'', inv_hom_id''⟩ :=
  rfl

@[simp, grind _=_]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variantf427950f5ed5ecc8b0c6c0d3ee463ae727a71b15035bd54aa791510c0d58d80d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variantf427950f5ed5ecc8b0c6c0d3ee463ae727a71b15035bd54aa791510c0d58d80d.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2c73f267ba8179b20892c9ad206f2d28b0a08cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
