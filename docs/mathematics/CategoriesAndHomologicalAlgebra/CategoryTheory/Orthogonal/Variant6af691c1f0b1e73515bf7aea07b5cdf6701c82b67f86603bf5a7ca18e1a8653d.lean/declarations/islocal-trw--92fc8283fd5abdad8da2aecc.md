# isLocal_trW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5326c56e-df04-702c-034f-f4a02646b17a",
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
  "slug": "islocal-trw--92fc8283fd5abdad8da2aecc",
  "source": {
    "blob": "965f67c1a268966014d50274f173121a561bc8c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Orthogonal/Variant6af691c1f0b1e73515bf7aea07b5cdf6701c82b67f86603bf5a7ca18e1a8653d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92fc8283fd5abdad8da2aecc056070614bf73d7541cc6abfb2ef3985d2d2a2d1",
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

Occurrence: `result:5326c56e-df04-702c-034f-f4a02646b17a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–95.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Orthogonal/Variant6af691c1f0b1e73515bf7aea07b5cdf6701c82b67f86603bf5a7ca18e1a8653d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Orthogonal/Variant6af691c1f0b1e73515bf7aea07b5cdf6701c82b67f86603bf5a7ca18e1a8653d.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965f67c1a268966014d50274f173121a561bc8c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
