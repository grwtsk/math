# toLaxMonoidal_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "68bb750593486128ed6d43177bb525afb4f7c13c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 533,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2ef3cd527a214e977dca02835f351e57e8da3a426a870d4f0f118b4083427556.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13cdf9da-32ce-0524-1aab-ad67a0d1914a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06da7e5b-e9cd-2a7c-40cf-08012c712033",
  "kind": "lemma",
  "lexical_name": "toLaxMonoidal_injective",
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
  "slug": "tolaxmonoidal-injective--6f7d38f0697943d3b5f14a6a",
  "source": {
    "blob": "68bb750593486128ed6d43177bb525afb4f7c13c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 533,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2ef3cd527a214e977dca02835f351e57e8da3a426a870d4f0f118b4083427556.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f7d38f0697943d3b5f14a6ad1b3f15875011c7e4eb9a98c1e4e3cd0eeda1a5d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2ef3cd527a214e977dca02835f351e57e8da3a426a870d4f0f118b4083427556.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06da7e5b-e9cd-2a7c-40cf-08012c712033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toLaxMonoidal_injective : Function.Injective
    (@Monoidal.toLaxMonoidal _ _ _ _ _ _ _ : F.Monoidal → F.LaxMonoidal) := by
  intro a b eq
  ext1
  · exact congr(($eq).ε')
  · exact congr(($eq).μ')
  · rw [← cancel_epi (εIso _).hom, ← η, ← η]
    rw [εIso_hom, ε_η, ← @ε_η _ _ _ _ _ _ _ a, ← εIso_hom]
    exact congr(($eq.symm).ε' ≫ _)
  · ext
    rw [← cancel_epi (μIso F _ _).hom, ← δ, ← δ]
    rw [μIso_hom, μ_δ, ← @μ_δ _ _ _ _ _ _ _ a, ← μIso_hom]
    exact congr(($eq.symm).μ' _ _ ≫ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2ef3cd527a214e977dca02835f351e57e8da3a426a870d4f0f118b4083427556.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2ef3cd527a214e977dca02835f351e57e8da3a426a870d4f0f118b4083427556.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68bb750593486128ed6d43177bb525afb4f7c13c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
