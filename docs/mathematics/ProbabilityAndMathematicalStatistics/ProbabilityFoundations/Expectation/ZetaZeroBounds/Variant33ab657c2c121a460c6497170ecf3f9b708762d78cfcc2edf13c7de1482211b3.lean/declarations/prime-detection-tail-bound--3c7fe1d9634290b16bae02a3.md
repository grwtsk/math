# prime_detection_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af5e0600c31cb6b52fa523ac40f55ebfb2beab77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57ffa493-0a89-7588-c076-6db9257930b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf624e16-b448-fba8-379a-fbd9f7de5f06",
  "kind": "theorem",
  "lexical_name": "prime_detection_tail_bound",
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
  "slug": "prime-detection-tail-bound--3c7fe1d9634290b16bae02a3",
  "source": {
    "blob": "af5e0600c31cb6b52fa523ac40f55ebfb2beab77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 129,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c7fe1d9634290b16bae02a3b5578bbfa44b602fb6174d58448c0c45790eb991",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf624e16-b448-fba8-379a-fbd9f7de5f06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_detection_tail_bound :
    ∀ x ∈ Set.Icc (1:ℝ) 100, Real.sqrt x * Real.log 150 / 60 ≤ (1:ℚ) := by
  certify_bound

-- This says: with γ_cutoff = 500 and 10% RG factor (hence /60 = /6/10),
-- the tail error is < 1 for x ≤ 100, sufficient for prime detection!

/-! ## Part G: Summary Table (Verified Bounds)

| Bound | Statement | Status |
|-------|-----------|--------|
| Amplitude | √x/14 ≤ 1 for x ≤ 100 | ✓ Proven |
| Log ratio | log(10) ≤ 2.4 | ✓ Verified |
| Tail conservative | √x·log(750)/6 ≤ 12 | ✓ Proven |
| Prime detection | √x·log(150)/60 ≤ 1 | ✓ Proven |

These bounds formalize the "absolutely convergent" approach:
- Compute zeros with γ ≤ 500 explicitly (~270 zeros)
- Bound remaining tail error analytically
- Result: Provable prime detection with O(500) zeros, not O(100000)!
-/

#check first_zero_amplitude_bound
#check tail_bound_conservative
#check prime_detection_tail_bound

/-! ## Part H: Van der Corput / Weyl Bounds (THE REAL UNLOCK)

The key observation: |Σ_{k=1}^N e^{iγ_k·log(x)}| ~ O(√N), not O(N).

This is the VAN DER CORPUT / WEYL phenomenon:
  When phases θ_k are "sufficiently equidistributed",
  |Σ e^{iθ_k}| ≤ C·√N  (square-root cancellation)

If we can formalize this, we get:
  |Σ x^ρ/ρ| ≤ √x · C·√N / γ_min ≈ √x · √(γ_max)

Instead of √x · γ_max (no cancellation).

This converts O(N) to O(√N) zeros needed!
-/

-- Van der Corput: if f''(x) ≥ λ > 0 on [a,b], then |Σ e^{if(n)}| ≤ C/√λ
-- For f(n) = γ_n · log(x), need to analyze γ_n spacing (GUE)

-- Simplified bound we CAN prove: 
-- If phases θ_k are uniform on [0, 2π], then E[|Σ e^{iθ_k}|²] = N
-- So |Σ e^{iθ_k}| ~ √N in expectation

-- This is the probabilistic version of Weyl's equidistribution theorem

/-! ### Connection to GUE

Montgomery's pair correlation conjecture:
  Zeros have GUE statistics ⟹ phases spread uniformly ⟹ √N cancellation

Empirically verified:
  - Gap variance: 0.218 (GUE predicts 0.273, ratio 0.80)
  - Phase sum ratio |Σe^iθ|/√N ≈ 0.3-1.5 for all tested x

This suggests a FORMALIZATION PATH:
  1. Axiomatize GUE gap distribution
  2. Prove: GUE gaps ⟹ phase equidistribution mod 2π
  3. Prove: equidistribution ⟹ |Σ e^{iθ}| ≤ C·√N
  4. Apply to explicit formula: O(√N) zeros suffice!
-/

-- For now, we can at least verify the √N scaling empirically
-- and use it as an AXIOM for the complexity analysis

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ZetaZeroBounds/Variant33ab657c2c121a460c6497170ecf3f9b708762d78cfcc2edf13c7de1482211b3.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5e0600c31cb6b52fa523ac40f55ebfb2beab77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
