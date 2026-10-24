# truncatedDivisorCoefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04bda5a92332438d99591a6bb3ada8c023aaf9d34484b9ece3e97d26a186f8ee",
  "kind": "def",
  "lexical_name": "truncatedDivisorCoefficient",
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
  "slug": "truncateddivisorcoefficient--d43193e226b428e527f209c2",
  "source": {
    "blob": "27c804fba6c2d0bf277ca44cc2186cee3b104bda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 17,
    "line": 4,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorSignCombined/Variantca7b89011b4d2b1e98ab9d233b516added555c71d5be6ce8f05033929e5f564d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d43193e226b428e527f209c2e58e538b55b053aa8462aeae8bea65f5fe45741c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorSignCombined/Variantca7b89011b4d2b1e98ab9d233b516added555c71d5be6ce8f05033929e5f564d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04bda5a92332438d99591a6bb3ada8c023aaf9d34484b9ece3e97d26a186f8ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4–17.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def truncatedDivisorCoefficient (X : ℕ) (ε : ℝ) (n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors.filter (fun d => d ≤ X),
    (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ))
end
end FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual


/-! Exact negative truncated-divisor coefficient throughout the actual damping cap. -/
set_option autoImplicit false
namespace TruncatedDivisorSignScratch
open FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual
noncomputable section

/-- The original divisor cutoff retains precisely the signed factors one, two and three. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorSignCombined/Variantca7b89011b4d2b1e98ab9d233b516added555c71d5be6ce8f05033929e5f564d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorSignCombined/Variantca7b89011b4d2b1e98ab9d233b516added555c71d5be6ce8f05033929e5f564d.lean#L4).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27c804fba6c2d0bf277ca44cc2186cee3b104bda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
