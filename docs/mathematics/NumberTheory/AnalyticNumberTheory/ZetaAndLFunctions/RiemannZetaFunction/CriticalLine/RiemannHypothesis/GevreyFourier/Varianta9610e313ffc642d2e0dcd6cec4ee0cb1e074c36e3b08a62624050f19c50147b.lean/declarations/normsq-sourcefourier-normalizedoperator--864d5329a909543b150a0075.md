# normSq_sourceFourier_normalizedOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b812b3ae353e3661d8b966ec6020a933c3fea8b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:723c1725-d89b-cc35-2126-92b7b94a29e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4b3041e-f6a8-4b70-52d3-f8debcf9d04e",
  "kind": "theorem",
  "lexical_name": "normSq_sourceFourier_normalizedOperator",
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
  "slug": "normsq-sourcefourier-normalizedoperator--864d5329a909543b150a0075",
  "source": {
    "blob": "b812b3ae353e3661d8b966ec6020a933c3fea8b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 139,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Varianta9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:864d5329a909543b150a00753a4094a8942d2270e4544bcebc0a09cac0d464e7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Varianta9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4b3041e-f6a8-4b70-52d3-f8debcf9d04e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normSq_sourceFourier_normalizedOperator {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) (ξ : ℝ) :
    Complex.normSq (sourceFourier (normalizedOperator h A) ξ) =
      (A / normalization h A) * (ξ ^ 2 + 1 / 4) ^ 2 *
        Complex.normSq (sourceFourier h (A * ξ)) := by
  have hz : 0 ≤ normalization h A := integral_nonneg (fun x ↦ sq_nonneg _)
  rw [sourceFourier_normalizedOperator hc hs hA]
  simp only [Complex.normSq_div, Complex.normSq_mul, Complex.normSq_neg,
    Complex.normSq_ofReal, ← pow_two, Real.sq_sqrt hA.le, Real.sq_sqrt hz]
  ring

/-- A real L¹ autocorrelation has Fourier transform equal to a real-frequency absolute square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Varianta9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Varianta9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b812b3ae353e3661d8b966ec6020a933c3fea8b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
