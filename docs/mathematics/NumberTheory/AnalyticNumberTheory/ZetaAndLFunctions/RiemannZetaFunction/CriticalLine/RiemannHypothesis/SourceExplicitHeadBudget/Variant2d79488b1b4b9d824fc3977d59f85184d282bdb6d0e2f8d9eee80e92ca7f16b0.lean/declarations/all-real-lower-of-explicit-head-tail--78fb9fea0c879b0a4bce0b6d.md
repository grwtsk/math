# all_real_lower_of_explicit_head_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0c5d352-87f4-744f-e529-ca866b8e3993",
  "kind": "theorem",
  "lexical_name": "all_real_lower_of_explicit_head_tail",
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
  "slug": "all-real-lower-of-explicit-head-tail--78fb9fea0c879b0a4bce0b6d",
  "source": {
    "blob": "d66ee7c2d13e8dc729f5f1d95a39330dee8c1965",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExplicitHeadBudget/Variant2d79488b1b4b9d824fc3977d59f85184d282bdb6d0e2f8d9eee80e92ca7f16b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78fb9fea0c879b0a4bce0b6d8dc9a4d66e4fcbd9542176ab25a602aa7b517204",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExplicitHeadBudget/Variant2d79488b1b4b9d824fc3977d59f85184d282bdb6d0e2f8d9eee80e92ca7f16b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0c5d352-87f4-744f-e529-ca866b8e3993`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_real_lower_of_explicit_head_tail (K Q : ℝ) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ completeXiTail A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower Q)
        (archimedeanMultiplier 0 - 2 *
          (max 0 (K + explicitXiHeadJ / 2 + exactHeadErrorBudget Q - gammaTraceFloor Q) -
            3 / 8 + criticalBaselineCorrection Q)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  simpa only [exact_residual_budget_explicit] using
    all_real_lower_of_exact_head_tail K Q hQ htail

/-- The actual F7 mean's conditional source application carries the same radius/prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExplicitHeadBudget/Variant2d79488b1b4b9d824fc3977d59f85184d282bdb6d0e2f8d9eee80e92ca7f16b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExplicitHeadBudget/Variant2d79488b1b4b9d824fc3977d59f85184d282bdb6d0e2f8d9eee80e92ca7f16b0.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d66ee7c2d13e8dc729f5f1d95a39330dee8c1965` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
