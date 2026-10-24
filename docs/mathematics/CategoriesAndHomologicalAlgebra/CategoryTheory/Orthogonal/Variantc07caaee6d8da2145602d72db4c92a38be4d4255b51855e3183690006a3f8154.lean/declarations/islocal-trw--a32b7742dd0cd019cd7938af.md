# isLocal_trW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b24365500f3737c8947508b81b0837d60a491e06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c07caaee6d8da2145602d72db4c92a38be4d4255b51855e3183690006a3f8154.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b42ad448-0295-1511-e4cb-9f407415ccbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:253198a4-c177-134a-66c7-bb6c952e2437",
  "kind": "lemma",
  "lexical_name": "isLocal_trW",
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
  "slug": "islocal-trw--a32b7742dd0cd019cd7938af",
  "source": {
    "blob": "b24365500f3737c8947508b81b0837d60a491e06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Orthogonal/Variantc07caaee6d8da2145602d72db4c92a38be4d4255b51855e3183690006a3f8154.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a32b7742dd0cd019cd7938af4404724c2aa825faff793fb10f8bb8a048e720ea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Orthogonal/Variantc07caaee6d8da2145602d72db4c92a38be4d4255b51855e3183690006a3f8154.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:253198a4-c177-134a-66c7-bb6c952e2437`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocal_trW [P.IsTriangulated] :
    P.trW.isLocal = P.rightOrthogonal := by
  ext Y
  refine ⟨fun hY X f hX ↦ ?_, fun hY X₁ X₂ f ⟨X₃, g, h, hT, hX₃⟩ ↦ ⟨?_, fun α ↦ ?_⟩⟩
  · exact (hY _ (trW.mk P (contractible_distinguished₁ X) hX)).injective (by simp)
  · suffices ∀ (α : X₂ ⟶ Y), f ≫ α = 0 → α = 0 from fun α₁ α₂ hα ↦ by
      simpa [sub_eq_zero] using this (α₁ - α₂) (by simpa [sub_eq_zero] using hα)
    intro α hα
    obtain ⟨β, rfl⟩ := Triangle.yoneda_exact₂ _ hT α hα
    simp [hY β hX₃]
  · obtain ⟨β, rfl⟩ := Triangle.yoneda_exact₂ _ (inv_rot_of_distTriang _ hT)
      α (hY _ (P.le_shift _ _ hX₃))
    exact ⟨β, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Orthogonal/Variantc07caaee6d8da2145602d72db4c92a38be4d4255b51855e3183690006a3f8154.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Orthogonal/Variantc07caaee6d8da2145602d72db4c92a38be4d4255b51855e3183690006a3f8154.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b24365500f3737c8947508b81b0837d60a491e06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
