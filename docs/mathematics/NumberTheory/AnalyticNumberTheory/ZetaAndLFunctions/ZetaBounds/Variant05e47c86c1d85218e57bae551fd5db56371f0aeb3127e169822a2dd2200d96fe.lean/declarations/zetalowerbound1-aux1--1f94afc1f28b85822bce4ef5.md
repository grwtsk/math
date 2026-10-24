# ZetaLowerBound1_aux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8449749700ae3c61707103913ebe40c0507a6e07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2484,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05e47c86c1d85218e57bae551fd5db56371f0aeb3127e169822a2dd2200d96fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b788ab1-b2bf-5e1b-5b06-b2a2a339f0fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebeb8a72-c47a-6e6a-25e0-ad9dc56e846f",
  "kind": "theorem",
  "lexical_name": "ZetaLowerBound1_aux1",
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
  "slug": "zetalowerbound1-aux1--1f94afc1f28b85822bce4ef5",
  "source": {
    "blob": "8449749700ae3c61707103913ebe40c0507a6e07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2489,
    "line": 2484,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant05e47c86c1d85218e57bae551fd5db56371f0aeb3127e169822a2dd2200d96fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f94afc1f28b85822bce4ef5f6e00f484903f40b4701636e84274b361c247391",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant05e47c86c1d85218e57bae551fd5db56371f0aeb3127e169822a2dd2200d96fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebeb8a72-c47a-6e6a-25e0-ad9dc56e846f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2484–2489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZetaLowerBound1_aux1 {σ t : ℝ} (this : 1 ≤ ‖ζ σ‖ ^ (3 : ℝ) * ‖ζ (σ + I * t)‖ ^ (4 : ℝ) * ‖ζ (σ + 2 * I * t)‖) :
  ‖ζ σ‖ ^ ((3 : ℝ) / 4) * ‖ζ (σ + 2 * t * I)‖ ^ ((1 : ℝ) / 4) * ‖ζ (σ + t * I)‖ ≥ 1 := by
  use (one_le_pow_iff_of_nonneg (by bound) four_ne_zero).1 (by_contra (this.not_gt ∘ ?_))
  simp_rw [mul_pow, ← Real.rpow_natCast, ← Real.rpow_mul (norm_nonneg _)]
  norm_num [mul_right_comm, mul_comm (t : ℂ), mul_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant05e47c86c1d85218e57bae551fd5db56371f0aeb3127e169822a2dd2200d96fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant05e47c86c1d85218e57bae551fd5db56371f0aeb3127e169822a2dd2200d96fe.lean#L2484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8449749700ae3c61707103913ebe40c0507a6e07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
