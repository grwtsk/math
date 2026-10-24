# isColocal_trW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a3167fa-7af8-62f7-5d02-a357ebd57800",
  "kind": "lemma",
  "lexical_name": "isColocal_trW",
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
  "slug": "iscolocal-trw--37f9c840db556d70693c4d19",
  "source": {
    "blob": "965f67c1a268966014d50274f173121a561bc8c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 96,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Orthogonal/Variant6af691c1f0b1e73515bf7aea07b5cdf6701c82b67f86603bf5a7ca18e1a8653d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37f9c840db556d70693c4d19c562ac598a9ceab6ea15f904bba71fe4f1611c0a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Orthogonal/Variant6af691c1f0b1e73515bf7aea07b5cdf6701c82b67f86603bf5a7ca18e1a8653d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a3167fa-7af8-62f7-5d02-a357ebd57800`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isColocal_trW [P.IsTriangulated] :
    P.trW.isColocal = P.leftOrthogonal := by
  ext X
  refine ⟨fun hX Y f hY ↦ ?_, fun hX Y₂ Y₃ h hh ↦ ?_⟩
  · exact (hX _ (trW.mk P (contractible_distinguished₂ Y) (P.le_shift _ _ hY))).injective (by simp)
  · rw [trW_iff'] at hh
    obtain ⟨Y₁, f, g, hT, hY₁⟩ := hh
    refine ⟨?_, fun α ↦ ?_⟩
    · suffices ∀ (α : X ⟶ Y₂), α ≫ h = 0 → α = 0 from fun α₁ α₂ hα ↦ by
        simpa [sub_eq_zero] using this (α₁ - α₂) (by simpa [sub_eq_zero])
      intro α hα
      obtain ⟨β, rfl⟩ := Triangle.coyoneda_exact₂ _ hT α hα
      simp [hX β hY₁]
    · obtain ⟨β, rfl⟩ := Triangle.coyoneda_exact₂ _ (rot_of_distTriang _ hT)
        α (hX _ (P.le_shift _ _ hY₁))
      exact ⟨β, rfl⟩

variable {P} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Orthogonal/Variant6af691c1f0b1e73515bf7aea07b5cdf6701c82b67f86603bf5a7ca18e1a8653d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Orthogonal/Variant6af691c1f0b1e73515bf7aea07b5cdf6701c82b67f86603bf5a7ca18e1a8653d.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965f67c1a268966014d50274f173121a561bc8c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
