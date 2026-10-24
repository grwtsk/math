# exactFrontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1be5a407eeb3dc75a443fd17e0dd32d8918e2e5fb47045ce6ea5f624c632adc0",
  "kind": "def",
  "lexical_name": "exactFrontier",
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
  "slug": "exactfrontier--3b3e1caff17a5c8105f05fe2",
  "source": {
    "blob": "2a6eb69de8e13b4472cbde34a7bedf5eb27d38fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 14,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReductionControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b3e1caff17a5c8105f05fe21ecc0250a101dd71a713e1198c40b0afcb75c9ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReductionControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1be5a407eeb3dc75a443fd17e0dd32d8918e2e5fb47045ce6ea5f624c632adc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exactFrontier : List String :=
  ["the centered Mobius-log antidiagonal sum is reindexed by divisor moduli",
   "the centering anchor is retained as an augmented modulus-one index",
   "all four anchor/genuine channels remain in one signed finite block",
   "every actual augmented pair satisfies gcd(D(u),D(v)) divides h",
   "every contributing n lies in the shifted divisibility fiber D(u)|n and D(v)|n+h",
   "any two members of one fiber are congruent modulo lcm(D(u),D(v))",
   "division by that lcm is injective on the fiber",
   "the fiber cardinality is at most floor(4X/lcm)+1",
   "the anchor-anchor fiber is the complete shifted interval",
   "progression sparsity alone therefore leaves the naive exponent two",
   "the lcm-progression supplier is exactly equivalent to the previous congruence supplier",
   "the signed centered lcm-progression bound remains open",
   "no threshold descent or Riemann Hypothesis result is supplied"]

/-- The elementary fiber bound is available without an arithmetic hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReductionControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReductionControls.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a6eb69de8e13b4472cbde34a7bedf5eb27d38fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
