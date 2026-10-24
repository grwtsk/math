# divisorPrefix_weighted_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2cd789a3cb6213126aef5caa6afaa244189722b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e507c59d-5ab3-5d40-a193-2f04003a2681",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:754eb586-9a55-0ac9-cfba-98b8b186e446",
  "kind": "theorem",
  "lexical_name": "divisorPrefix_weighted_abel",
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
  "slug": "divisorprefix-weighted-abel--5a6f893273d6bbcee7643a07",
  "source": {
    "blob": "f2cd789a3cb6213126aef5caa6afaa244189722b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 122,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a6f893273d6bbcee7643a07cf1dba0f26fba58b561baeba2bc260cae41c4660",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:754eb586-9a55-0ac9-cfba-98b8b186e446`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisorPrefix_weighted_abel (U d l h : ℕ) (w : ℕ → ℝ)
    (hd : 0 < d) (hlh : l ≤ h) :
    (∑ k ∈ Finset.Ico l h, divisorPrefix U d k * w k) =
      divisorMean U d * (∑ k ∈ Finset.Ico l h, w k) +
        divisorStorage d h * w h - divisorStorage d l * w l -
        ∑ k ∈ Finset.Ico l h, divisorStorage d (k + 1) * (w (k + 1) - w k) := by
  have hs : (∑ k ∈ Finset.Ico l h,
      (divisorStorage d (k + 1) - divisorStorage d k) * w k) =
      divisorStorage d h * w h - divisorStorage d l * w l -
        ∑ k ∈ Finset.Ico l h, divisorStorage d (k + 1) * (w (k + 1) - w k) := by
    calc
      _ = ∑ k ∈ Finset.Ico l h,
          ((divisorStorage d (k + 1) * w (k + 1) - divisorStorage d k * w k) -
            divisorStorage d (k + 1) * (w (k + 1) - w k)) := by
        apply Finset.sum_congr rfl
        intro k _
        ring
      _ = _ := by
        rw [Finset.sum_sub_distrib, Finset.sum_Ico_sub
          (fun k ↦ divisorStorage d k * w k) hlh]
  calc
    _ = ∑ k ∈ Finset.Ico l h,
        (divisorMean U d * w k +
          (divisorStorage d (k + 1) - divisorStorage d k) * w k) := by
      apply Finset.sum_congr rfl
      intro k _
      rw [divisorPrefix_eq_mean_add_storage U d k hd]
      ring
    _ = _ := by
      rw [Finset.sum_add_distrib, ← Finset.mul_sum, hs]
      ring

/-- The original centered-prefix adapter reuses its exact interval discrepancy theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2cd789a3cb6213126aef5caa6afaa244189722b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
