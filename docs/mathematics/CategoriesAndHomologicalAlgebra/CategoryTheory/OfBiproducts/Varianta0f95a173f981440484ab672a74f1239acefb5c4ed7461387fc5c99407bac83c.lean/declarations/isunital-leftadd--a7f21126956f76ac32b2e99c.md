# isUnital_leftAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eae25b55602d7d2abdaa8d4dea3ee63d1e6bf814",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d817981f-2016-8667-516a-c57a1ecf5443",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba9572dc-0df7-381f-b9e0-09e48525aaff",
  "kind": "theorem",
  "lexical_name": "isUnital_leftAdd",
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
  "slug": "isunital-leftadd--a7f21126956f76ac32b2e99c",
  "source": {
    "blob": "eae25b55602d7d2abdaa8d4dea3ee63d1e6bf814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 50,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7f21126956f76ac32b2e99c2199e585ff29cbd18b79b9f4abdc618f11c74e2c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba9572dc-0df7-381f-b9e0-09e48525aaff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnital_leftAdd : EckmannHilton.IsUnital (· +ₗ ·) 0 := by
  have hr : ∀ f : X ⟶ Y, biprod.lift (0 : X ⟶ Y) f = f ≫ biprod.inr := by
    intro f
    ext
    · simp
    · simp [biprod.lift_fst, Category.assoc, biprod.inr_fst, comp_zero]
  have hl : ∀ f : X ⟶ Y, biprod.lift f (0 : X ⟶ Y) = f ≫ biprod.inl := by
    intro f
    ext
    · simp
    · simp [biprod.lift_snd, Category.assoc, biprod.inl_snd, comp_zero]
  exact {
    left_id := fun f => by simp [hr f, leftAdd, Category.assoc, Category.comp_id, biprod.inr_desc],
    right_id := fun f => by simp [hl f, leftAdd, Category.assoc, Category.comp_id, biprod.inl_desc]
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfBiproducts/Varianta0f95a173f981440484ab672a74f1239acefb5c4ed7461387fc5c99407bac83c.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eae25b55602d7d2abdaa8d4dea3ee63d1e6bf814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
