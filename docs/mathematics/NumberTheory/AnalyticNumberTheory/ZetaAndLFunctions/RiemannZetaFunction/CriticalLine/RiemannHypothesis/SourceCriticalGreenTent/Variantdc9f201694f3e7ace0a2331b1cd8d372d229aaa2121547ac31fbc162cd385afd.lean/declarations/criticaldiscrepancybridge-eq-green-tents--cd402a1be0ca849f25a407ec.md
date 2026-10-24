# criticalDiscrepancyBridge_eq_green_tents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff0f5890-f3ab-1719-4d09-e89329410c48",
  "kind": "theorem",
  "lexical_name": "criticalDiscrepancyBridge_eq_green_tents",
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
  "slug": "criticaldiscrepancybridge-eq-green-tents--cd402a1be0ca849f25a407ec",
  "source": {
    "blob": "7a83bcb838c9c28f928e80cc302d62aba2c9935d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd402a1be0ca849f25a407ec1b78fbeb2072e52fafeb76caee9b13d16a288920",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff0f5890-f3ab-1719-4d09-e89329410c48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalDiscrepancyBridge_eq_green_tents {A u : ℝ} (hA : 0 < A)
    (hu : u ∈ Icc 0 (2 * A)) :
    criticalDiscrepancyBridge A u =
      u * (2 * A - u) / 2 +
        2 * (criticalDecay u - 1 - (u / (2 * A)) * (criticalDecay (2 * A) - 1)) -
          primeLogSum (2 * A) (fun s => criticalDirichletTent (2 * A) u s) := by
  have hL : 0 < 2 * A := by linarith
  have hLn : 2 * A ≠ 0 := ne_of_gt hL
  have hsum :
      primeLogSum (2 * A) (fun s => max (u - s) 0) -
        (u / (2 * A)) * primeLogSum (2 * A) (fun s => 2 * A - s) =
          -primeLogSum (2 * A) (fun s => criticalDirichletTent (2 * A) u s) := by
    unfold primeLogSum
    calc
      _ = ∑ p ∈ primeLogInventory (2 * A),
          Real.log (p : ℝ) / (p : ℝ) *
            (max (u - Real.log p) 0 - (u / (2 * A)) * (2 * A - Real.log p)) := by
        rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
        apply Finset.sum_congr rfl
        intro p hp
        ring
      _ = ∑ p ∈ primeLogInventory (2 * A),
          -(Real.log (p : ℝ) / (p : ℝ) *
            criticalDirichletTent (2 * A) u (Real.log p)) := by
        apply Finset.sum_congr rfl
        intro p hp
        rw [positivePart_sub_affine_eq_neg_tent hLn]
        ring
      _ = _ := by rw [Finset.sum_neg_distrib]
  unfold criticalDiscrepancyBridge
  rw [criticalDiscrepancyPrimitive_eq_primeLogSum u hu.1,
    criticalDiscrepancyPrimitive_eq_primeLogSum (2 * A) hL.le,
    primeLogSum_hinge_common_inventory hu.1 hu.2]
  calc
    _ =
        (primeLogSum (2 * A) (fun s => max (u - s) 0) -
          (u / (2 * A)) * primeLogSum (2 * A) (fun s => 2 * A - s)) +
        (-(u ^ 2 / 2) + u + 2 * (criticalDecay u - 1) -
          (u / (2 * A)) *
            (-(2 * A) ^ 2 / 2 + 2 * A + 2 * (criticalDecay (2 * A) - 1))) := by ring
    _ = _ := by
      rw [hsum]
      field_simp [hLn]
      ring

end FormalResearch.RiemannHypothesis.SourceCriticalGreenTent
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a83bcb838c9c28f928e80cc302d62aba2c9935d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
