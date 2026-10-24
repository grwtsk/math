# squareTailPairedWork_eq_neg_integral_pairedTail_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8beb4d25-8b65-de97-61cc-cca0abb37d4f",
  "kind": "theorem",
  "lexical_name": "squareTailPairedWork_eq_neg_integral_pairedTail_deriv",
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
  "slug": "squaretailpairedwork-eq-neg-integral-pairedtail-deriv--176958c65a0dfc32d4b3b19d",
  "source": {
    "blob": "e315b2fd4faadef3dd46bf980c7492ff380c3bfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 85,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:176958c65a0dfc32d4b3b19dd52eafb026475d5b1042da86fe1cbcf4c4a34043",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8beb4d25-8b65-de97-61cc-cca0abb37d4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareTailPairedWork_eq_neg_integral_pairedTail_deriv {A : ℝ} (hA : 1 ≤ A) :
    squareTailPairedWork A =
      -(∫ u in 0..2 * A, squareTail u * deriv (pairedTailTest A) u) := by
  have hp : 0 < A := by linarith
  have hi := squareTail_intervalIntegrable hp
  have hip := hi.mul_continuousOn (positiveSlope_continuous hp).continuousOn
  have hin := hi.mul_continuousOn (negativeSlope_continuous hp).continuousOn
  have hf : (fun u => squareTail u * deriv (pairedTailTest A) u) =
      (fun u => -(squareTail u * positiveSlope A u) +
        (positiveMass A / negativeMass A) * (squareTail u * negativeSlope A u)) := by
    funext u
    rw [pairedTailTest_deriv hA]
    ring
  rw [hf, intervalIntegral.integral_add hip.neg (hin.const_mul _),
    intervalIntegral.integral_neg, intervalIntegral.integral_const_mul]
  unfold squareTailPairedWork squareTailNegativeMean
  ring

/-- The actual paired square-tail work is the negative of its closed D readout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e315b2fd4faadef3dd46bf980c7492ff380c3bfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
