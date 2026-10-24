# reciprocalCauchyBlock_le_logVariationMajorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72e8d0c6-e50a-2a7c-a5dd-ddf6869bf15e",
  "kind": "theorem",
  "lexical_name": "reciprocalCauchyBlock_le_logVariationMajorant",
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
  "slug": "reciprocalcauchyblock-le-logvariationmajorant--92aa80356c40eb07e813838e",
  "source": {
    "blob": "9594428553fcd0fc56d94d9aaa363943dcc5e2fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92aa80356c40eb07e813838e11d18a46a0d8e54fcd7a84db3e01d1bbb5fb3d28",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72e8d0c6-e50a-2a7c-a5dd-ddf6869bf15e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocalCauchyBlock_le_logVariationMajorant {n : ℕ} (hn : 1 ≤ n) :
    reciprocalCauchyBlock n ≤ reciprocalLogVariationMajorant n := by
  have hx : (0 : ℝ) < n := by exact_mod_cast hn
  have hlog : Real.log (n : ℝ) ≤ Real.log ((n + 1 : ℕ) : ℝ) := by
    exact Real.strictMonoOn_log.monotoneOn
      (by change (0 : ℝ) < n; exact hx)
      (by change (0 : ℝ) < ((n + 1 : ℕ) : ℝ); positivity)
      (by exact_mod_cast Nat.le_succ n)
  have hV : 0 ≤ reciprocalPrefixVariationSquare n := by
    unfold reciprocalPrefixVariationSquare
    positivity
  have hL : 0 ≤ 4 + 2 * Real.log n := by
    have : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast hn)
    positivity
  have hf : Continuous (fun u : ℝ =>
      Real.exp (-u) *
        (4 * reciprocalFluxWeightSquareMass u n *
          reciprocalPrefixVariationSquare n)) := by
    unfold reciprocalFluxWeightSquareMass reciprocalFluxWeight
    fun_prop
  have hg : Continuous (fun u : ℝ =>
      Real.exp (-u) *
        (4 * (4 + 2 * Real.log n) * reciprocalPrefixVariationSquare n)) := by
    fun_prop
  have hint :
      reciprocalCauchyBlock n ≤
        ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
          Real.exp (-u) *
            (4 * (4 + 2 * Real.log n) * reciprocalPrefixVariationSquare n) := by
    unfold reciprocalCauchyBlock
    apply intervalIntegral.integral_mono_on hlog
      (hf.intervalIntegrable _ _) (hg.intervalIntegrable _ _)
    intro u hu
    gcongr
    exact reciprocalFluxWeightSquareMass_le_log hn hu.1
  calc
    reciprocalCauchyBlock n ≤
        ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
          Real.exp (-u) *
            (4 * (4 + 2 * Real.log n) * reciprocalPrefixVariationSquare n) := hint
    _ = 4 * (4 + 2 * Real.log n) * reciprocalPrefixVariationSquare n *
        exponentialLogDrop 1 n := by
      rw [show (fun u : ℝ => Real.exp (-u) *
          (4 * (4 + 2 * Real.log n) * reciprocalPrefixVariationSquare n)) =
          fun u : ℝ => (4 * (4 + 2 * Real.log n) *
            reciprocalPrefixVariationSquare n) * Real.exp (-1 * u) by
        funext u
        rw [show -(1 : ℝ) * u = -u by ring]
        ring]
      rw [intervalIntegral.integral_const_mul,
        integral_exp_neg_mul (by norm_num : (1 : ℝ) ≠ 0)]
      unfold exponentialLogDrop
      ring
    _ ≤ 4 * (4 + 2 * Real.log n) * reciprocalPrefixVariationSquare n *
        (n : ℝ) ^ (-(2 : ℝ)) := by
      gcongr
      have h := exponentialLogDrop_le_rpow (a := (1 : ℝ)) (by norm_num) hn
      norm_num at h
      simpa [Real.rpow_neg hx.le, Real.rpow_two] using h
    _ = reciprocalLogVariationMajorant n := rfl

/-- The remaining arithmetic premise: summability of endpoint-centered
reciprocal-prefix square variation with the exact logarithmic kernel cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9594428553fcd0fc56d94d9aaa363943dcc5e2fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
