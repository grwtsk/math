# actual_compensated_dyadic_endpoint_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50b24357-e8d4-25b4-14b4-f484d6662fac",
  "kind": "theorem",
  "lexical_name": "actual_compensated_dyadic_endpoint_norm",
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
  "slug": "actual-compensated-dyadic-endpoint-norm--d4a585bf07b2b6831bcbb409",
  "source": {
    "blob": "ba8b9791b877267b3a4a4f7a029ee6d4e34c6b22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variantf577ace629a6c637d0c71513ea504eab787a806d73c0b1f7925a1f52b49b91d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4a585bf07b2b6831bcbb409b059dde95b5fa4850793179887c330ffe6b2e44f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variantf577ace629a6c637d0c71513ea504eab787a806d73c0b1f7925a1f52b49b91d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50b24357-e8d4-25b4-14b4-f484d6662fac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_compensated_dyadic_endpoint_norm (A c E : ℝ) (R : ℕ → ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hc2 : c ≤ 3 / 2) (h7 : ∀ k, 7 ≤ R k)
    (horder : ∀ k, R k ≤ R (k + 1))
    (hgood : ∀ k s, (s.im = R k ∨ s.im = -R k) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0)
    (hb : ∀ k, ‖actualFiniteHorizontalCorrection A c (R k)‖ ≤ E * (1 / 16 : ℝ) ^ k)
    (N : ℕ) :
    ‖(actualOffAxisZeroHeightHead A (R N) - actualOffAxisZeroHeightHead A (R 0)) +
      (actualCriticalZeroHeightHead A (R N) - actualCriticalZeroHeightHead A (R 0)) -
      (actualCompletedVerticalHead A c (R N) - actualCompletedVerticalHead A c (R 0))‖ ≤
      E * (1 + (1 / 16 : ℝ) ^ N) := by
  rw [error_eq_boundary A c (R 0) (R N) hA hc hc2 (h7 0)
    ((monotone_nat_of_le_succ horder) (Nat.zero_le N)) (hgood 0) (hgood N)]
  calc
    _ ≤ ‖actualFiniteHorizontalCorrection A c (R N)‖ +
      ‖actualFiniteHorizontalCorrection A c (R 0)‖ := norm_sub_le _ _
    _ ≤ E * (1 / 16 : ℝ) ^ N + E * (1 / 16 : ℝ) ^ 0 := add_le_add (hb N) (hb 0)
    _ = _ := by norm_num; ring

/-- One fixed true critical mass bound is paid once, with the sharp finite endpoint cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variantf577ace629a6c637d0c71513ea504eab787a806d73c0b1f7925a1f52b49b91d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variantf577ace629a6c637d0c71513ea504eab787a806d73c0b1f7925a1f52b49b91d5.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba8b9791b877267b3a4a4f7a029ee6d4e34c6b22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
