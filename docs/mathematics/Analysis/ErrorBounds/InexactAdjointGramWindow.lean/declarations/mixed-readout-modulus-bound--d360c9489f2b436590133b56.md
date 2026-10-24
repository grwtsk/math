# mixed_readout_modulus_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ef6a386-9d76-e281-b119-42d178e7c191",
  "kind": "theorem",
  "lexical_name": "mixed_readout_modulus_bound",
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
  "slug": "mixed-readout-modulus-bound--d360c9489f2b436590133b56",
  "source": {
    "blob": "badf04b0b2e1f3649a636b5616a0ab5b0a802aee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 89,
    "path": "GRWTSK/Analysis/ErrorBounds/InexactAdjointGramWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d360c9489f2b436590133b56bca3ea1d790ea7546ca7fe17b60349be11c35072",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ef6a386-9d76-e281-b119-42d178e7c191`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mixed_readout_modulus_bound (weight : ι → ℝ) (left right : ι → ℂ)
    (H : ι × ι → ℂ) (alpha beta : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (alphaNonnegative : 0 ≤ alpha) (_betaNonnegative : 0 ≤ beta)
    (leftBound : ∀ i, ‖left i‖ ≤ alpha * weight i)
    (rightBound : ∀ i, ‖right i‖ ≤ beta * weight i) :
    ‖mixedReadout left right H‖ ≤ (alpha * beta) * modulusMass (pairWeight weight) H := by
  unfold mixedReadout
  calc
    _ ≤ ∑ p, ‖conj (left p.1) * H p * right p.2‖ := norm_sum_le _ _
    _ = ∑ p : ι × ι, (‖left p.1‖ * ‖right p.2‖) * ‖H p‖ := by
      apply Finset.sum_congr rfl
      intro p _
      simp only [norm_mul, Complex.norm_conj]
      ring
    _ ≤ ∑ p : ι × ι, ((alpha * weight p.1) * (beta * weight p.2)) * ‖H p‖ := by
      apply Finset.sum_le_sum
      intro p _
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul (leftBound p.1) (rightBound p.2) (norm_nonneg _)
          (mul_nonneg alphaNonnegative (weightsNonnegative p.1))) (norm_nonneg _)
    _ = _ := by
      simp only [modulusMass, pairWeight, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro p _
      ring

/-- Both first-order terms AND the quadratic term are charged, with no division by weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/InexactAdjointGramWindow.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `badf04b0b2e1f3649a636b5616a0ab5b0a802aee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
