# squareTailPairedWork_eq_neg_integral_pairedTail_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39edca4f-0fcd-6699-2154-d6d203eb3d8d",
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
  "slug": "squaretailpairedwork-eq-neg-integral-pairedtail-deriv--fd3f90d7b2a3e2ee8409d1d1",
  "source": {
    "blob": "8afc98670b98c22243de4567e3e083a8bf3ac962",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 86,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareQuadrature/Variant4ecaa7cd841d520d8e248df97d5c913f19f020f821a0fd844c7e3ac84e5f9180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd3f90d7b2a3e2ee8409d1d14a9da8e6a03f3fb940ffb83d0352f3393eec965d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareQuadrature/Variant4ecaa7cd841d520d8e248df97d5c913f19f020f821a0fd844c7e3ac84e5f9180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39edca4f-0fcd-6699-2154-d6d203eb3d8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–115.

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
  have he : (∫ u in 0..2 * A, -(squareTail u * positiveSlope A u) +
      (positiveMass A / negativeMass A) * (squareTail u * negativeSlope A u)) =
      -(∫ u in 0..2 * A, squareTail u * positiveSlope A u) +
        (positiveMass A / negativeMass A) *
          (∫ u in 0..2 * A, squareTail u * negativeSlope A u) := by
    calc
      _ = (∫ u in 0..2 * A, -(squareTail u * positiveSlope A u)) +
          (∫ u in 0..2 * A, (positiveMass A / negativeMass A) *
            (squareTail u * negativeSlope A u)) :=
        intervalIntegral.integral_add hip.neg
          (hin.const_mul (positiveMass A / negativeMass A))
      _ = _ := by rw [intervalIntegral.integral_neg, intervalIntegral.integral_const_mul]
  rw [hf, he]
  unfold squareTailPairedWork squareTailNegativeMean
  ring

/-- The actual paired square-tail work is the negative of its closed D readout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareQuadrature/Variant4ecaa7cd841d520d8e248df97d5c913f19f020f821a0fd844c7e3ac84e5f9180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareQuadrature/Variant4ecaa7cd841d520d8e248df97d5c913f19f020f821a0fd844c7e3ac84e5f9180.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8afc98670b98c22243de4567e3e083a8bf3ac962` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
