# quasiIso_iff_of_zeros'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8596add7e8cb44914359b559206dcba9ec135059",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 922,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bdd1c2c29607dff135826e3f3d0285aa3063d03a6f473d99e8ddbafd1874a4d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7bf65300-d113-71f7-45c1-6a675cbb406d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08932ec8-6895-e414-76af-496c75c062d7",
  "kind": "lemma",
  "lexical_name": "quasiIso_iff_of_zeros'",
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
  "slug": "quasiiso-iff-of-zeros--70684d2643b9885bb28063cc",
  "source": {
    "blob": "8596add7e8cb44914359b559206dcba9ec135059",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 942,
    "line": 922,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantbdd1c2c29607dff135826e3f3d0285aa3063d03a6f473d99e8ddbafd1874a4d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70684d2643b9885bb28063cc49f617216d83e9734f5681e4693791f0f87ae26b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantbdd1c2c29607dff135826e3f3d0285aa3063d03a6f473d99e8ddbafd1874a4d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08932ec8-6895-e414-76af-496c75c062d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 922–942.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasiIso_iff_of_zeros' {S₁ S₂ : ShortComplex C} (φ : S₁ ⟶ S₂)
    (hg₁ : S₁.g = 0) (hf₂ : S₂.f = 0) (hg₂ : S₂.g = 0) :
    QuasiIso φ ↔
      (ShortComplex.mk S₁.f φ.τ₂ (by rw [← φ.comm₁₂, hf₂, comp_zero])).Exact ∧ Epi φ.τ₂ := by
  rw [← quasiIso_opMap_iff, quasiIso_iff_of_zeros]
  rotate_left
  · dsimp
    rw [hg₂, op_zero]
  · dsimp
    rw [hf₂, op_zero]
  · dsimp
    rw [hg₁, op_zero]
  rw [← exact_unop_iff]
  have : Mono φ.τ₂.op ↔ Epi φ.τ₂ :=
    ⟨fun _ => unop_epi_of_mono φ.τ₂.op, fun _ => op_mono_of_epi _⟩
  tauto

variable {S : ShortComplex C}

/-- If `S` is an exact short complex and `f : S.X₂ ⟶ J` is a morphism to an injective object `J`
such that `S.f ≫ f = 0`, this is a morphism `φ : S.X₃ ⟶ J` such that `S.g ≫ φ = f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantbdd1c2c29607dff135826e3f3d0285aa3063d03a6f473d99e8ddbafd1874a4d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantbdd1c2c29607dff135826e3f3d0285aa3063d03a6f473d99e8ddbafd1874a4d1.lean#L922).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8596add7e8cb44914359b559206dcba9ec135059` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
