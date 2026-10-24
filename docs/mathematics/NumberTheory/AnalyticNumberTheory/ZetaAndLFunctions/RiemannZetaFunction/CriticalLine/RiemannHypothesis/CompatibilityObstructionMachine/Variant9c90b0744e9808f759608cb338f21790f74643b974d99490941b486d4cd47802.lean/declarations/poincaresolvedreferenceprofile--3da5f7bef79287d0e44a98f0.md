# poincareSolvedReferenceProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c75f17323e984271810ad3db9245ba93afea78a7521eeed9fa0196369e38826a",
  "kind": "def",
  "lexical_name": "poincareSolvedReferenceProfile",
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
  "slug": "poincaresolvedreferenceprofile--3da5f7bef79287d0e44a98f0",
  "source": {
    "blob": "00c43f5bb8322bc67dd64ba3f51b48105f013e61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 263,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompatibilityObstructionMachine/Variant9c90b0744e9808f759608cb338f21790f74643b974d99490941b486d4cd47802.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3da5f7bef79287d0e44a98f0e04a85e59261a8cf759cb9ab624b682b123546b9",
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

Occurrence: `declaration:c75f17323e984271810ad3db9245ba93afea78a7521eeed9fa0196369e38826a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def poincareSolvedReferenceProfile : CompatibilityObstructionMachine where
  problem := MillenniumProblemProfile.poincareSolvedReference
  status := CompatibilityProblemStatus.solvedReference
  site := {
    objectsLabel := "smooth 3-manifold reference objects"
    morphismsLabel := "classical topology and Ricci-flow-with-surgery references"
    coversLabel := "not a Folder theorem target in this scaffold"
    sheavesLabel := "reference metadata only"
  }
  staticInvariant := { label := "classical topological reference invariant" }
  continuation := { label := "Perelman/Ricci-flow reference, not imported as a Folder proof" }
  comparison := { label := "reference-only comparison" }
  forbidden := { label := "not used as an open Millennium obstruction target here" }
  obstruction := { label := "not applicable in this scaffold" }
  allowed := { label := "Poincare listed as solved reference" }
  compatibleImpliesAllowed := fun _ => True
  compatibleImpliesAllowed_certified := fun _ => trivial
  forbiddenForcesObstruction := fun _ => True
  forbiddenForcesObstruction_certified := fun _ => trivial
  sourceLabel := "Poincare solved-reference profile; not a new proof claim"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompatibilityObstructionMachine/Variant9c90b0744e9808f759608cb338f21790f74643b974d99490941b486d4cd47802.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompatibilityObstructionMachine/Variant9c90b0744e9808f759608cb338f21790f74643b974d99490941b486d4cd47802.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00c43f5bb8322bc67dd64ba3f51b48105f013e61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
