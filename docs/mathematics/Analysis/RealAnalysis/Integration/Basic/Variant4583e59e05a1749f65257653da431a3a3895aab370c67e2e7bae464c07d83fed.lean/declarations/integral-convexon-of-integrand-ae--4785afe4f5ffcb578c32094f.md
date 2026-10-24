# integral_convexOn_of_integrand_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef0842abcf7734be280787239cc750ce5b4d7f11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 653,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/4583e59e05a1749f65257653da431a3a3895aab370c67e2e7bae464c07d83fed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17b3b3a3-ba59-f210-fc9f-5dc608ad2967",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2999996-9656-54a0-043c-3ddf380d8a05",
  "kind": "lemma",
  "lexical_name": "integral_convexOn_of_integrand_ae",
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
  "slug": "integral-convexon-of-integrand-ae--4785afe4f5ffcb578c32094f",
  "source": {
    "blob": "ef0842abcf7734be280787239cc750ce5b4d7f11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 673,
    "line": 653,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant4583e59e05a1749f65257653da431a3a3895aab370c67e2e7bae464c07d83fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4785afe4f5ffcb578c32094f6d7e21f8397f11190331991a0ac382efac292fb3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant4583e59e05a1749f65257653da431a3a3895aab370c67e2e7bae464c07d83fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2999996-9656-54a0-043c-3ddf380d8a05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 653–673.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_convexOn_of_integrand_ae {β : Type*} [AddCommMonoid β]
    [Module ℝ β] {f : α → β → E} {s : Set β} (hs : Convex ℝ s)
    (hf_conv : ∀ᵐ x ∂μ, ConvexOn ℝ s (f x)) (hf_int : ∀ a ∈ s, Integrable (f · a) μ) :
    ConvexOn ℝ s (fun b => ∫ x, f x b ∂μ) := by
  refine ⟨hs, ?_⟩
  intro a ha b hb p q hp hq hpq
  calc ∫ x, f x (p • a + q • b) ∂μ ≤ ∫ x, p • f x a + q • f x b ∂μ := by
                  refine integral_mono_ae ?lhs ?rhs ?ae_le
                  case lhs =>
                    refine hf_int _ ?_
                    rw [convex_iff_add_mem] at hs
                    exact hs ha hb hp hq hpq
                  case rhs => fun_prop (disch := aesop)
                  case ae_le =>
                    filter_upwards [hf_conv] with x hx
                    exact hx.2 ha hb hp hq hpq
            _ = ∫ x, p • f x a ∂μ + ∫ x, q • f x b ∂μ := by
                  apply integral_add
                  all_goals fun_prop (disch := aesop)
            _ = p • ∫ x, f x a ∂μ + q • ∫ x, f x b ∂μ := by simp [integral_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant4583e59e05a1749f65257653da431a3a3895aab370c67e2e7bae464c07d83fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant4583e59e05a1749f65257653da431a3a3895aab370c67e2e7bae464c07d83fed.lean#L653).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef0842abcf7734be280787239cc750ce5b4d7f11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
