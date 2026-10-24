# image.isoStrongEpiMono_hom_comp_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c912a46b38aa9b42cc175e54b74f9fbb89857e82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 918,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/36f329bb47491270a8efc0e98373bcec02f75afd9a7dcd09a0a5dae59ac4f110.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd96eab6-a7d2-5946-2ba6-435b78b30e29",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8904bdc8-9e5d-bb2c-d65d-b4463be12bfc",
  "kind": "theorem",
  "lexical_name": "image.isoStrongEpiMono_hom_comp_ι",
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
  "slug": "image-isostrongepimono-hom-comp--0bb461808ab0eb75f6b5d0b7",
  "source": {
    "blob": "c912a46b38aa9b42cc175e54b74f9fbb89857e82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 923,
    "line": 918,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant36f329bb47491270a8efc0e98373bcec02f75afd9a7dcd09a0a5dae59ac4f110.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bb461808ab0eb75f6b5d0b74ac46a3c581af2a4060ad05a8a56cbc59eee5150",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant36f329bb47491270a8efc0e98373bcec02f75afd9a7dcd09a0a5dae59ac4f110.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8904bdc8-9e5d-bb2c-d65d-b4463be12bfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 918–923.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image.isoStrongEpiMono_hom_comp_ι {I' : C} (e : X ⟶ I') (m : I' ⟶ Y) (comm : e ≫ m = f)
    [StrongEpi e] [Mono m] : (image.isoStrongEpiMono e m comm).hom ≫ image.ι f = m := by
  dsimp [isoStrongEpiMono]
  apply IsImage.lift_fac

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant36f329bb47491270a8efc0e98373bcec02f75afd9a7dcd09a0a5dae59ac4f110.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant36f329bb47491270a8efc0e98373bcec02f75afd9a7dcd09a0a5dae59ac4f110.lean#L918).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c912a46b38aa9b42cc175e54b74f9fbb89857e82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
