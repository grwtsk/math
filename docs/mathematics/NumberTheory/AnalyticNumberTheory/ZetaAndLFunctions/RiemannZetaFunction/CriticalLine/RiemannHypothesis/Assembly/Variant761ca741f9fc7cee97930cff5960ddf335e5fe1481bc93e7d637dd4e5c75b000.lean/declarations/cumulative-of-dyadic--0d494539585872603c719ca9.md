# cumulative_of_dyadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48f192ac51d33c4dd49f21a3ece15426538bd026",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 517,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef33a006-3784-daeb-956c-e7af46e5b47d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7b0e1df-70e6-4a9f-74c8-0d4d9e8e37ee",
  "kind": "theorem",
  "lexical_name": "cumulative_of_dyadic",
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
  "slug": "cumulative-of-dyadic--0d494539585872603c719ca9",
  "source": {
    "blob": "48f192ac51d33c4dd49f21a3ece15426538bd026",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 517,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d494539585872603c719ca944b78b6f5e107d67f816c030c22a737ba1f4e0ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7b0e1df-70e6-4a9f-74c8-0d4d9e8e37ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cumulative_of_dyadic (hR : XiDerivRvM hF2 hs) {c : ℝ} {f : ℝ → ℝ → ℕ}
    (hf_add : ∀ a b d : ℝ, a ≤ b → b ≤ d → f a d = f a b + f b d)
    (h : ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (c - ε) * (Ncount T (2 * T) : ℝ) ≤ f T (2 * T)) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (c - ε) * (Ncount 0 T : ℝ) ≤ f 0 T := by
  refine Assembly.dyadic (f := fun a b => (f a b : ℝ)) (g := fun a b => (Ncount a b : ℝ))
    (c := c) ?_ ?_ (fun _ _ => Nat.cast_nonneg _) (fun _ _ => Nat.cast_nonneg _)
    (tendsto_Ncount_zero_atTop hF2 hs hR) h
  · intro a b d hab hbd
    exact_mod_cast hf_add a b d hab hbd
  · intro a b d hab hbd
    exact_mod_cast Ncount_add hF2 hs hab hbd

/-- the fixed-λ pair of ε-bounds on dyadic windows ⇒ the same pair on (0,T]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48f192ac51d33c4dd49f21a3ece15426538bd026` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
