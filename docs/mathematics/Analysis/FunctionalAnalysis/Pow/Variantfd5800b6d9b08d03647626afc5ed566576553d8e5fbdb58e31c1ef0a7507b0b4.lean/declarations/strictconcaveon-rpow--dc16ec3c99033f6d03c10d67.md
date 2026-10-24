# strictConcaveOn_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d79ae3eaeeba51ac94b41306024659a1996cd95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd5800b6d9b08d03647626afc5ed566576553d8e5fbdb58e31c1ef0a7507b0b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:373684f6-11e5-4da1-8dd9-1c0766f19d3a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2dafd3a-5a2a-8cff-6cf4-de5b6659131a",
  "kind": "lemma",
  "lexical_name": "strictConcaveOn_rpow",
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
  "slug": "strictconcaveon-rpow--dc16ec3c99033f6d03c10d67",
  "source": {
    "blob": "1d79ae3eaeeba51ac94b41306024659a1996cd95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 36,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Pow/Variantfd5800b6d9b08d03647626afc5ed566576553d8e5fbdb58e31c1ef0a7507b0b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc16ec3c99033f6d03c10d674cd09a1e1686e2da89e5bf48ca43267f82c38270",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Pow/Variantfd5800b6d9b08d03647626afc5ed566576553d8e5fbdb58e31c1ef0a7507b0b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2dafd3a-5a2a-8cff-6cf4-de5b6659131a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma strictConcaveOn_rpow {p : ℝ} (hp₀ : 0 < p) (hp₁ : p < 1) :
    StrictConcaveOn ℝ≥0 univ fun x : ℝ≥0 ↦ x ^ p := by
  have hp₀' : 0 < 1 / p := by positivity
  have hp₁' : 1 < 1 / p := by rw [one_lt_div hp₀]; exact hp₁
  let f := NNReal.orderIsoRpow (1 / p) hp₀'
  have h₁ : StrictConvexOn ℝ≥0 univ f := by
    refine ⟨convex_univ, fun x _ y _ hxy a b ha hb hab => ?_⟩
    exact (strictConvexOn_rpow hp₁').2 (by positivity : 0 ≤ x) (by positivity : 0 ≤ y)
      (by simp [hxy]) ha hb (by simp; norm_cast)
  have h₂ : ∀ x, f.symm x = x ^ p := by simp [NNReal.orderIsoRpow_symm_eq]
  refine ⟨convex_univ, fun x _ y _ hxy a b ha hb hab => ?_⟩
  simp only [←h₂]
  exact (f.strictConcaveOn_symm h₁).2 (Set.mem_univ x) (Set.mem_univ y) hxy ha hb hab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Pow/Variantfd5800b6d9b08d03647626afc5ed566576553d8e5fbdb58e31c1ef0a7507b0b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Pow/Variantfd5800b6d9b08d03647626afc5ed566576553d8e5fbdb58e31c1ef0a7507b0b4.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d79ae3eaeeba51ac94b41306024659a1996cd95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
