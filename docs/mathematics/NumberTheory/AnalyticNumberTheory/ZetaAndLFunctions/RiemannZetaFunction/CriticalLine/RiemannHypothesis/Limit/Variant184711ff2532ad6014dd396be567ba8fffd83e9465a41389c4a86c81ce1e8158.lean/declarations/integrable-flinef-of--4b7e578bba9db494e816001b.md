# integrable_FlineF_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66105030b2ad462e8a841993cd691e95e785ed36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/184711ff2532ad6014dd396be567ba8fffd83e9465a41389c4a86c81ce1e8158.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9aeca18e-7983-732d-ca9c-bd1c45627d31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a13b3d11-27cb-1ff6-6432-e5fa2297f400",
  "kind": "theorem",
  "lexical_name": "integrable_FlineF_of",
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
  "slug": "integrable-flinef-of--4b7e578bba9db494e816001b",
  "source": {
    "blob": "66105030b2ad462e8a841993cd691e95e785ed36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Limit/Variant184711ff2532ad6014dd396be567ba8fffd83e9465a41389c4a86c81ce1e8158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b7e578bba9db494e816001b941333c552e44ad5ed8dcf9109089bb939a2c280",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Limit/Variant184711ff2532ad6014dd396be567ba8fffd83e9465a41389c4a86c81ce1e8158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a13b3d11-27cb-1ff6-6432-e5fa2297f400`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_FlineF_of (hFc : Continuous fun t : ℝ => F ((c : ℂ) + t * I))
    (hline : ∃ M : ℝ, ∀ t : ℝ, ‖F ((c : ℂ) + t * I)‖ ≤ M * Real.log (2 + |t|))
    (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) (hc0 : -1 ≤ c) (hc2 : c ≤ 2) :
    Integrable (FlineF F k c) := by
  obtain ⟨C, hC0, hC⟩ := norm_weight_le hk hkc hc0 hc2
  obtain ⟨M, hM⟩ := hline
  have hM' : ∀ t : ℝ, ‖F ((c : ℂ) + t * I)‖ ≤ max M 0 * Real.log (2 + |t|) := fun t =>
    (hM t).trans (mul_le_mul_of_nonneg_right (le_max_left _ _)
      (Real.log_nonneg (by linarith [abs_nonneg t])))
  exact integrable_decay_mul_log (continuous_weight hk hkc c) hFc hC0 hC (le_max_right _ _) hM'

/-! ## The vertical sides -/

/-- Folding the left vertical side onto the right one by  F(1−s) = −F(s) on the line:
V(c; −R, R) − V(1−c; −R, R) = I • ∫_{−R}^{R} FlineF. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Limit/Variant184711ff2532ad6014dd396be567ba8fffd83e9465a41389c4a86c81ce1e8158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Limit/Variant184711ff2532ad6014dd396be567ba8fffd83e9465a41389c4a86c81ce1e8158.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66105030b2ad462e8a841993cd691e95e785ed36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
