# estimate_of_actual_adaptive_head

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5ccdccd-30ae-02e5-4906-5c12afe3a066",
  "kind": "theorem",
  "lexical_name": "estimate_of_actual_adaptive_head",
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
  "slug": "estimate-of-actual-adaptive-head--d7f3683f9f4941192fa6f6a7",
  "source": {
    "blob": "664629c802029a97bab2003a972dcb80686ac0a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/150SourceActualAdaptiveHeadConsumer/Variant73b21b89cde87212659e46f2553587886603bb62cafa01f955deb8f874fb5a11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7f3683f9f4941192fa6f6a78c7fa4b4e841ab6f2e4bf567a95bc506cc614284",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/150SourceActualAdaptiveHeadConsumer/Variant73b21b89cde87212659e46f2553587886603bb62cafa01f955deb8f874fb5a11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5ccdccd-30ae-02e5-4906-5c12afe3a066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_actual_adaptive_head {A0 η Q D : ℝ} (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A →
      ‖actualZeroHeightTail A (actualAdaptiveSharpHeight η A)‖ ≤
        actualAdaptiveSharpTailCost A0 η Q)
    (hhead : ∀ A : ℝ, Q ≤ A →
      -D ≤ (actualZeroHeightHead A (actualAdaptiveSharpHeight η A)).re) :
    EstimateObligation := by
  apply estimate_of_quadratic_tail_lower_bound
  refine ⟨-D - actualAdaptiveSharpTailCost A0 η Q, Q, by linarith, ?_⟩
  intro A hQA
  exact original_quadratic_lower_of_adaptive_head (by linarith) (htail A hQA) (hhead A hQA)

/-- The source constructs the tail witness; only the literal signed arithmetic head remains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/150SourceActualAdaptiveHeadConsumer/Variant73b21b89cde87212659e46f2553587886603bb62cafa01f955deb8f874fb5a11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/150SourceActualAdaptiveHeadConsumer/Variant73b21b89cde87212659e46f2553587886603bb62cafa01f955deb8f874fb5a11.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `664629c802029a97bab2003a972dcb80686ac0a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
