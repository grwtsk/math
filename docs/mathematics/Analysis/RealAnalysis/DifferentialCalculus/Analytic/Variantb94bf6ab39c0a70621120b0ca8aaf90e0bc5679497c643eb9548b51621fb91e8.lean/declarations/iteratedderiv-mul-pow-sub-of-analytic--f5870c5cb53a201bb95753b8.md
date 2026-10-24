# iteratedDeriv_mul_pow_sub_of_analytic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de4639b20ae2e03ffafc93f54dca16b1dd9cc620",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b94bf6ab39c0a70621120b0ca8aaf90e0bc5679497c643eb9548b51621fb91e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98ade94f-f16d-2a3e-7ba6-f744f8a84120",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83ae68b2-716a-511b-2593-305785877459",
  "kind": "lemma",
  "lexical_name": "iteratedDeriv_mul_pow_sub_of_analytic",
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
  "slug": "iteratedderiv-mul-pow-sub-of-analytic--f5870c5cb53a201bb95753b8",
  "source": {
    "blob": "de4639b20ae2e03ffafc93f54dca16b1dd9cc620",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variantb94bf6ab39c0a70621120b0ca8aaf90e0bc5679497c643eb9548b51621fb91e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5870c5cb53a201bb95753b868b22c4e82174181509e2e0b2df839fb105001c9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variantb94bf6ab39c0a70621120b0ca8aaf90e0bc5679497c643eb9548b51621fb91e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83ae68b2-716a-511b-2593-305785877459`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iteratedDeriv_mul_pow_sub_of_analytic {k t : ℕ} {z₀ : 𝕜} {R R₁ : 𝕜 → 𝕜}
    (hf1 : ∀ z, AnalyticAt 𝕜 R₁ z) (hR₁ : ∀ z, R z = (z - z₀) ^ (k + t) * R₁ z) :
    ∃ R₂, (∀ z, AnalyticAt 𝕜 R₂ z) ∧ ∀ z, iteratedDeriv k R z =
      (z - z₀) ^ t * ((k + t)! / t ! * R₁ z + (z - z₀) * R₂ z) := by
  induction k generalizing t with
  | zero => exact ⟨0, fun _ ↦ analyticAt_const, by simp [hR₁, Nat.factorial_ne_zero]⟩
  | succ k IH =>
    obtain ⟨R₂, hR₂, hR₂_eq⟩ := IH (t := t + 1) (by grind)
    set R₂' : 𝕜 → 𝕜 := fun z ↦ (t + 1) * R₂ z + ((k + (t + 1))! / (t + 1)! * deriv R₁ z +
      (R₂ z + (z - z₀) * deriv R₂ z))
    refine ⟨R₂', by fun_prop, fun z ↦ ?_⟩
    calc iteratedDeriv (k + 1) R z
      _ = deriv (fun w ↦ (w - z₀) ^ (t + 1)
          * (↑(k + (t + 1))! / ↑(t + 1)! * R₁ w + (w - z₀) * R₂ w)) z := by
        rw [iteratedDeriv_succ, funext hR₂_eq]
      _ = (t + 1) * (z - z₀) ^ t * ((k + (t + 1))! / (t + 1)! * R₁ z + (z - z₀) * R₂ z) +
        (z - z₀) ^ (t + 1) * ((k + (t + 1))! / (t + 1)! * deriv R₁ z +
          (R₂ z + (z - z₀) * deriv R₂ z)) := by
        have hsub : HasDerivAt (· - z₀) 1 z := (hasDerivAt_id z).sub_const z₀
        simpa using! ((hsub.fun_pow (t + 1)).mul
          (((hf1 z).differentiableAt.hasDerivAt.const_mul ((k + (t + 1))! / (t + 1)! : 𝕜)).add
            (hsub.mul (hR₂ z).differentiableAt.hasDerivAt))).deriv
      _ = (z - z₀) ^ t * ((k + 1 + t)! / t ! * R₁ z + (z - z₀) * R₂' z) := by
        have : (t : 𝕜) + 1 ≠ 0 := mod_cast t.succ_ne_zero
        have : ((t + 1)! : 𝕜) = (t + 1) * t ! := by simp [Nat.factorial_succ]
        grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variantb94bf6ab39c0a70621120b0ca8aaf90e0bc5679497c643eb9548b51621fb91e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variantb94bf6ab39c0a70621120b0ca8aaf90e0bc5679497c643eb9548b51621fb91e8.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de4639b20ae2e03ffafc93f54dca16b1dd9cc620` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
