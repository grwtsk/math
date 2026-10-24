# dampedDivisorCoefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a674101930683c829369cdf085622910f27a98e43801d5347880510eaa2fa1e2",
  "kind": "def",
  "lexical_name": "dampedDivisorCoefficient",
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
  "slug": "dampeddivisorcoefficient--6c8098c68ee21ed26484896d",
  "source": {
    "blob": "0bd0e07acef5dc42889ee7b19fbf67c1e67c17c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 15,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c8098c68ee21ed26484896d1c4f5d4f3a6936bc9c143d815f178ef61ad5a776",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a674101930683c829369cdf085622910f27a98e43801d5347880510eaa2fa1e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dampedDivisorCoefficient (ε : ℝ) (n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors, (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ))

end
end FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorCoefficient


/-! Exact finite divisor-floor transport for the original endpoint-corrected fractional residual. -/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.DivisorFloorTransport
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusFractionalResidual MobiusEndpointBudget MobiusPoleNumerator LogarithmicResidualTail
open DampedDivisorCoefficient
noncomputable section

/-- A finite floor-weighted prefix equals its full divisor sum, with every equality endpoint kept. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorLiteralCheck/Variant658d4cb131d086d01930b5b5f4648344cb44a2ada4d18af80a332ec39ff00951.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bd0e07acef5dc42889ee7b19fbf67c1e67c17c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
