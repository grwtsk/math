# dampedDivisorCoefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d73b67634a5f5a25a471faede549ab2c6719ddcde39d2406d5c2c72f5d1815ae",
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
  "slug": "dampeddivisorcoefficient--c8d8b1da80e69c74c9728f0d",
  "source": {
    "blob": "9fc5ff1b8f88ab9a6339dd945e26d62bc8bcd434",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 7,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variant335348aba65131be0c672e544ac787e81dbe66d6172d566b983d22e63e2b320e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8d8b1da80e69c74c9728f0d0529948cabeda72cab63b0662c1892102464dc65",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variant335348aba65131be0c672e544ac787e81dbe66d6172d566b983d22e63e2b320e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d73b67634a5f5a25a471faede549ab2c6719ddcde39d2406d5c2c72f5d1815ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dampedDivisorCoefficient (ε : ℝ) (n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors, (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ))

end
end FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorCoefficient


/-! Exact finite divisor-floor transport for the original endpoint-corrected fractional residual. -/
set_option autoImplicit false
namespace DivisorFloorTransportScratch
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusFractionalResidual MobiusEndpointBudget MobiusPoleNumerator LogarithmicResidualTail
open DampedDivisorCoefficient
noncomputable section

/-- A finite floor-weighted prefix equals its full divisor sum, with every equality endpoint kept. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variant335348aba65131be0c672e544ac787e81dbe66d6172d566b983d22e63e2b320e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variant335348aba65131be0c672e544ac787e81dbe66d6172d566b983d22e63e2b320e.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fc5ff1b8f88ab9a6339dd945e26d62bc8bcd434` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
