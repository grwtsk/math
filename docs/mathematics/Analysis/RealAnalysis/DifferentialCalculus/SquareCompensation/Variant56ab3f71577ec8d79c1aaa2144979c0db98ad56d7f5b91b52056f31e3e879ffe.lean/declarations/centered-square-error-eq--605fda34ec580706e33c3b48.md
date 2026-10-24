# centered_square_error_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20eb9bc7-1fd8-2475-7f19-0cdc97c28378",
  "kind": "theorem",
  "lexical_name": "centered_square_error_eq",
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
  "slug": "centered-square-error-eq--605fda34ec580706e33c3b48",
  "source": {
    "blob": "72c8c2f53c75920073cdbec731446d497ca831ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SquareCompensation/Variant56ab3f71577ec8d79c1aaa2144979c0db98ad56d7f5b91b52056f31e3e879ffe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:605fda34ec580706e33c3b48a359505bae007c564e6243828fbbe1baa470aad1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SquareCompensation/Variant56ab3f71577ec8d79c1aaa2144979c0db98ad56d7f5b91b52056f31e3e879ffe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20eb9bc7-1fd8-2475-7f19-0cdc97c28378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_square_error_eq {A : ℝ} (hA : 1 ≤ A) (B : ℝ) :
    primeSquareMoment A - diagonalMainCoefficient A * A - B =
      -(∫ t in 0..A, (primeLogError t - B) * deriv (diagonalCorrelation A) t) := by
  have hp : 0 < A := by linarith
  have hc := diagonalCorrelation_contDiff A hp
  have hi := hc.continuous_deriv_one.intervalIntegrable (μ := volume) 0 A
  have hf : (∫ t in 0..A, deriv (diagonalCorrelation A) t) = -1 := by
    rw [intervalIntegral.integral_deriv_eq_sub
      (fun t _ => (hc.differentiable (by norm_num)) t) hi,
      diagonalCorrelation_at_upper A hp, diagonalCorrelation_at_zero A hA]
    norm_num
  have he := primeLogError_mul_deriv_intervalIntegrable 0 A (by linarith)
    (diagonalCorrelation A) hc
  have hprod : (∫ t in 0..A, (primeLogError t - B) * deriv (diagonalCorrelation A) t) =
      (∫ t in 0..A, primeLogError t * deriv (diagonalCorrelation A) t) + B := by
    simp_rw [sub_mul]
    rw [intervalIntegral.integral_sub he (hi.const_mul B),
      intervalIntegral.integral_const_mul, hf]
    ring
  rw [hprod, primeSquareMoment_exact_signed_error A hA]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SquareCompensation/Variant56ab3f71577ec8d79c1aaa2144979c0db98ad56d7f5b91b52056f31e3e879ffe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SquareCompensation/Variant56ab3f71577ec8d79c1aaa2144979c0db98ad56d7f5b91b52056f31e3e879ffe.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72c8c2f53c75920073cdbec731446d497ca831ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
