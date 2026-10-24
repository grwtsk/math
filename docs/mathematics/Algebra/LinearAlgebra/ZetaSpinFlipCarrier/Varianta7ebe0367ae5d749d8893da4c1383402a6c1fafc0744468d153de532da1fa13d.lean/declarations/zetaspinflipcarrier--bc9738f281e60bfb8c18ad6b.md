# ZetaSpinFlipCarrier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b8b79b0e89acda49be7f5844b7d57e317d528ceecaa731976b8eab0b9e8d6f5",
  "kind": "structure",
  "lexical_name": "ZetaSpinFlipCarrier",
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
  "slug": "zetaspinflipcarrier--bc9738f281e60bfb8c18ad6b",
  "source": {
    "blob": "b27d4e23b038d18a85d2850205dc462ff523bd6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Varianta7ebe0367ae5d749d8893da4c1383402a6c1fafc0744468d153de532da1fa13d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc9738f281e60bfb8c18ad6b7c29956a4bc8ea35439fc2428d392e0c6a06f4c1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Varianta7ebe0367ae5d749d8893da4c1383402a6c1fafc0744468d153de532da1fa13d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b8b79b0e89acda49be7f5844b7d57e317d528ceecaa731976b8eab0b9e8d6f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ZetaSpinFlipCarrier (N : Nat) where
  spin : ZetaSpin
  weights : ZetaHarmonicWeights N
  controlCoordinate : Fin (N + 1)
  controlCoordinate_eq : controlCoordinate = controlIndex N
  harmonicCoordinate : Fin N → Fin (N + 1)
  harmonicCoordinate_eq : harmonicCoordinate = harmonicIndex
  analyticContinuationClaim : Bool
  analyticContinuationClaim_eq_false : analyticContinuationClaim = false
  functionalEquationClaim : Bool
  functionalEquationClaim_eq_false : functionalEquationClaim = false
  zeroLocationClaim : Bool
  zeroLocationClaim_eq_false : zeroLocationClaim = false
  spectralAuthorityClaim : Bool
  spectralAuthorityClaim_eq_false : spectralAuthorityClaim = false
  infiniteConvergenceClaim : Bool
  infiniteConvergenceClaim_eq_false : infiniteConvergenceClaim = false

/-- The control coordinate of the carrier is the distinguished zero coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Varianta7ebe0367ae5d749d8893da4c1383402a6c1fafc0744468d153de532da1fa13d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Varianta7ebe0367ae5d749d8893da4c1383402a6c1fafc0744468d153de532da1fa13d.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b27d4e23b038d18a85d2850205dc462ff523bd6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
