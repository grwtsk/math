# mono_of_isIso_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9bb8b0c25ad583e045115e106b98c78685049f8a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7955283d-3c2c-1ad6-a0de-b097542bbaca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88bc0bd5-1f93-a5fe-7fd1-79f3e52bd5b9",
  "kind": "theorem",
  "lexical_name": "mono_of_isIso_fst",
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
  "slug": "mono-of-isiso-fst--49470d0153ced1076a4cef5d",
  "source": {
    "blob": "9bb8b0c25ad583e045115e106b98c78685049f8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49470d0153ced1076a4cef5d1f1a780278151f2c12f47922e9f69c5512abaf9e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88bc0bd5-1f93-a5fe-7fd1-79f3e52bd5b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mono_of_isIso_fst (h : IsKernelPair f a b) [IsIso a] : Mono f := by
  obtain ⟨l, h₁, h₂⟩ := Limits.PullbackCone.IsLimit.lift' h.isLimit (𝟙 _) (𝟙 _) (by simp [h.w])
  rw [IsPullback.cone_fst, ← IsIso.eq_comp_inv, Category.id_comp] at h₁
  rw [h₁, IsIso.inv_comp_eq, Category.comp_id] at h₂
  constructor
  intro Z g₁ g₂ e
  obtain ⟨l', rfl, rfl⟩ := Limits.PullbackCone.IsLimit.lift' h.isLimit _ _ e
  rw [IsPullback.cone_fst, h₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bb8b0c25ad583e045115e106b98c78685049f8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
