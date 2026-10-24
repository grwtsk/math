# arithmeticResidual_zero_damping_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9917073-41f2-165c-7991-a617fe8ac332",
  "kind": "theorem",
  "lexical_name": "arithmeticResidual_zero_damping_endpoint",
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
  "slug": "arithmeticresidual-zero-damping-endpoint--2c7796557747b20e77baee9e",
  "source": {
    "blob": "0bd0e07acef5dc42889ee7b19fbf67c1e67c17c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 129,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c7796557747b20e77baee9ea165cc2324402178c6f36276182c6c89026ee06a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9917073-41f2-165c-7991-a617fe8ac332`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticResidual_zero_damping_endpoint (X : ℕ) (hX : 1 ≤ X) :
    arithmeticResidual X 0 (X : ℝ) =
      ((X : ℝ) * FiniteMobiusController.mobiusReciprocalSum X : ℂ) := by
  have hX0 : (X : ℝ) ≠ 0 := by exact_mod_cast (show X ≠ 0 by omega)
  rw [arithmeticResidual_eq_divisor_prefix_closed X 0 (X : ℝ) hX
    (by exact_mod_cast hX) le_rfl]
  simp only [Complex.ofReal_zero, add_zero, correctedNumerator_half, mul_zero,
    neg_zero, zero_mul, dampedDivisorCoefficient, Real.exp_zero, mul_one,
    CoprimeCount.sum_moebius_divisors,
    div_self hX0, Nat.floor_one, Nat.cast_one, Nat.floor_natCast]
  simp [hX]

end
end FormalResearch.RiemannHypothesis.SourceComparison.DivisorFloorTransport


/-! The complete post-cutoff identity of the original endpoint-corrected fractional residual. -/
set_option autoImplicit false
namespace TruncatedDivisorResidualScratch
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusFractionalResidual MobiusEndpointBudget MobiusPoleNumerator LogarithmicResidualTail
open DampedDivisorCoefficient
noncomputable section

/-- The actual finite divisor coefficient keeps exactly the divisors at or below the source cutoff.
No positivity is built into this truncated coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bd0e07acef5dc42889ee7b19fbf67c1e67c17c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
