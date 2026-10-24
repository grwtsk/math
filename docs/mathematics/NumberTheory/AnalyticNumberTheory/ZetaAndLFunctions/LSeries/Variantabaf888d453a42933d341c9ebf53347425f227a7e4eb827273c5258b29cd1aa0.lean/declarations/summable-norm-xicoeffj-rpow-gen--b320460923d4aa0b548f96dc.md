# summable_norm_xiCoeffJ_rpow_gen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bde308a-621b-5a98-c9a0-8bc1549e8739",
  "kind": "lemma",
  "lexical_name": "summable_norm_xiCoeffJ_rpow_gen",
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
  "slug": "summable-norm-xicoeffj-rpow-gen--b320460923d4aa0b548f96dc",
  "source": {
    "blob": "de7239b112ddb32aced751ba00cc0adde0b356cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 259,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b320460923d4aa0b548f96dcf8d56606c27900cfc3c6007b4b5d30ee09737411",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bde308a-621b-5a98-c9a0-8bc1549e8739`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_norm_xiCoeffJ_rpow_gen (hσ₀ : 1 < σ₀) {Λs : ℂ} (hΛ : R0sig σ₀ ≤ ‖Λs‖) {σ : ℝ} (hσ : σ₀ ≤ σ) :
    Summable (fun N : ℕ => ‖xiCoeffJ Λs N‖ * (N : ℝ) ^ (-σ)) := by
  refine (summable_norm_xiCoeffJ_gen hσ₀ hΛ).of_nonneg_of_le (norm_xiCoeffJ_rpow_nonneg Λs σ) fun N => ?_
  rcases Nat.eq_zero_or_pos N with rfl | hN
  · have hσ0 : -σ ≠ 0 := by linarith
    simp [Real.zero_rpow hσ0]
  · refine mul_le_mul_of_nonneg_left ?_ (norm_nonneg _)
    exact Real.rpow_le_rpow_of_exponent_le (by exact_mod_cast hN) (by linarith)

/-- ‖A(s)‖ ≤ A(σ′) for Re s ≥ σ₀. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de7239b112ddb32aced751ba00cc0adde0b356cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
