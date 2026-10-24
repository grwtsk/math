# isSheafFor_over_map_op_comp_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e29282f11fe49113589d0cb5a6a936553ba03522",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 928,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c052ccf-9416-c25f-bb3e-769315a3f3c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2af02287-8eaf-f927-a7f8-18f2250da1db",
  "kind": "lemma",
  "lexical_name": "isSheafFor_over_map_op_comp_iff",
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
  "slug": "issheaffor-over-map-op-comp-iff--7f5454fdf39a3d5c98e5cc28",
  "source": {
    "blob": "e29282f11fe49113589d0cb5a6a936553ba03522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 950,
    "line": 928,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variantb47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f5454fdf39a3d5c98e5cc287fcdfacec7191d899710179136dd85952b342bc9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variantb47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2af02287-8eaf-f927-a7f8-18f2250da1db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 928–950.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSheafFor_over_map_op_comp_iff
    {B B' : C} (p : B ⟶ B') (P : (Over B')ᵒᵖ ⥤ Type w)
    {X : Over B} (R : Sieve X) {X' : Over B'}
    (e : (Over.map p).obj X ≅ X') :
    IsSheafFor ((Over.map p).op ⋙ P) R.arrows ↔
      IsSheafFor P (Sieve.pullback e.inv (Sieve.functorPushforward (Over.map p) R)).arrows := by
  obtain ⟨ι, Z, g, rfl⟩ := R.exists_eq_ofArrows
  rw [← isSheafFor_iff_generate, isSheafFor_pullback_iff,
    isSheafFor_over_map_op_comp_ofArrows_iff, isSheafFor_iff_generate]
  convert! Iff.rfl
  refine le_antisymm ?_ ?_
  · rintro W _ ⟨T, _, a, ⟨_, b, _, ⟨i⟩, rfl⟩, rfl⟩
    refine ⟨(Over.map p).obj (Z i), Over.homMk (a.left ≫ b.left) ?_, _, ⟨i⟩, ?_⟩
    · simpa [(Over.w_assoc b)] using Over.w a
    · cat_disch
  · rintro W _ ⟨_, a, _, ⟨i⟩, rfl⟩
    exact ⟨_, _, _, Sieve.ofArrows_mk _ _ i, rfl⟩

variable [(ofArrows X π).HasPairwisePullbacks]

/--
A more explicit version of `FamilyOfElements.PullbackCompatible` for a `Presieve.ofArrows`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variantb47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variantb47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean#L928).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e29282f11fe49113589d0cb5a6a936553ba03522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
