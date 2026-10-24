# normal_iff_normal_monoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1080ee6d0c7e2c3031e1d8ee86e8a1e4282d20a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb701b185c612ce06be4339b4aec51cd30351577658e32e68e382d76b363b4a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ada9ddb-7e09-2883-c526-c3297860fb2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c8313c7-c254-de9e-d728-09a422cdd4a1",
  "kind": "theorem",
  "lexical_name": "normal_iff_normal_monoidHom",
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
  "slug": "normal-iff-normal-monoidhom--80493f3821821942970106ae",
  "source": {
    "blob": "d1080ee6d0c7e2c3031e1d8ee86e8a1e4282d20a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 83,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Varianteb701b185c612ce06be4339b4aec51cd30351577658e32e68e382d76b363b4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80493f3821821942970106ae76669e1c660e18f202a6e1825a44a130ec9da79b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Varianteb701b185c612ce06be4339b4aec51cd30351577658e32e68e382d76b363b4a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c8313c7-c254-de9e-d728-09a422cdd4a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_iff_normal_monoidHom [IsMonHom φ] [Mono φ] :
    Normal φ ↔ ∀ (X : C), (monoidHom φ X).range.Normal := by
  rw [isNormalHom_iff]
  refine ⟨?_, ?_⟩
  · intro ⟨ψ, hψ⟩ X
    constructor
    rintro - ⟨x, rfl⟩ z
    exact ⟨lift z x ≫ ψ, by simp [hψ]⟩
  · intro hnormal
    have (X : C) (g : X ⟶ G) (h : X ⟶ H) : ∃ (h' : X ⟶ H), h' ≫ φ = g * h ≫ φ * g⁻¹ :=
      (hnormal X).conj_mem (h ≫ φ) (by simp) g
    choose h' hh' using this
    refine ⟨Yoneda.fullyFaithful.preimage ?_, ?_⟩
    · refine ⟨fun X ↦ ↾fun x ↦ h' _ (x ≫ fst _ _) (x ≫ snd _ _), fun X Y f ↦ ?_⟩
      ext
      simp [← cancel_mono φ, hh', comp_mul, comp_inv]
    · refine yoneda.map_injective ?_
      ext
      simp [hh', conj, comp_mul, comp_inv]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Varianteb701b185c612ce06be4339b4aec51cd30351577658e32e68e382d76b363b4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Varianteb701b185c612ce06be4339b4aec51cd30351577658e32e68e382d76b363b4a5.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1080ee6d0c7e2c3031e1d8ee86e8a1e4282d20a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
