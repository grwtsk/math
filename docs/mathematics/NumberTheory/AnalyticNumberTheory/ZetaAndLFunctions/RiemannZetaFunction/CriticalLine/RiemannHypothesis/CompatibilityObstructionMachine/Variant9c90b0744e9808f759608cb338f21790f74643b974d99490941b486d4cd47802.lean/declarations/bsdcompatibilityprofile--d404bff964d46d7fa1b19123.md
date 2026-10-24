# bsdCompatibilityProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4bb673c4e57b182b6fb3788c8a27602e452c8db5e0fd60ebaaefdd86593cdb06",
  "kind": "def",
  "lexical_name": "bsdCompatibilityProfile",
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
  "slug": "bsdcompatibilityprofile--d404bff964d46d7fa1b19123",
  "source": {
    "blob": "00c43f5bb8322bc67dd64ba3f51b48105f013e61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 158,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompatibilityObstructionMachine/Variant9c90b0744e9808f759608cb338f21790f74643b974d99490941b486d4cd47802.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d404bff964d46d7fa1b1912329a267875206aa5ebf341c3b452bc175da3ae5f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompatibilityObstructionMachine/Variant9c90b0744e9808f759608cb338f21790f74643b974d99490941b486d4cd47802.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4bb673c4e57b182b6fb3788c8a27602e452c8db5e0fd60ebaaefdd86593cdb06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bsdCompatibilityProfile : CompatibilityObstructionMachine where
  problem := MillenniumProblemProfile.birchSwinnertonDyer
  status := CompatibilityProblemStatus.theoremTarget
  site := {
    objectsLabel := "elliptic-curve arithmetic windows with rank, Selmer, regulator, and L-function data"
    morphismsLabel := "isogeny, descent, height-pairing, and vanishing-order recursion maps"
    coversLabel := "families of compatible arithmetic recursion charts"
    sheavesLabel := "rank, Selmer-growth, regulator, and analytic-order data"
  }
  staticInvariant := { label := "Mordell-Weil/Selmer/regulator invariant" }
  continuation := { label := "fixed-point rank/order recursion through arithmetic towers" }
  comparison := { label := "rank/order trace comparison at s = 1" }
  forbidden := { label := "analytic order differs from algebraic rank" }
  obstruction := { label := "rank-order mismatch obstruction" }
  allowed := { label := "BSD-compatible rank/order equality" }
  compatibleImpliesAllowed := fun _ => True
  compatibleImpliesAllowed_certified := fun _ => trivial
  forbiddenForcesObstruction := fun _ => True
  forbiddenForcesObstruction_certified := fun _ => trivial
  sourceLabel := "BSD compatibility-obstruction profile; theorem target only"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompatibilityObstructionMachine/Variant9c90b0744e9808f759608cb338f21790f74643b974d99490941b486d4cd47802.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompatibilityObstructionMachine/Variant9c90b0744e9808f759608cb338f21790f74643b974d99490941b486d4cd47802.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00c43f5bb8322bc67dd64ba3f51b48105f013e61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
