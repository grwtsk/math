# pVersusNPCompatibilityProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3342757a54790213783a241825ef48deb45d3c32b0530b19d26b4299b53ec15",
  "kind": "def",
  "lexical_name": "pVersusNPCompatibilityProfile",
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
  "slug": "pversusnpcompatibilityprofile--fcbbff3ce6d4efca57b520d8",
  "source": {
    "blob": "647577486c9fa8c8fa5f60ade657dab7ce71c871",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 229,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompatibilityObstructionMachine/Variant67b36d774e4faa0fbac2097333e04847b72d43692ad899d4fdc67e510def6538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcbbff3ce6d4efca57b520d82345804fb1632cb3316974fcb7b9076f97e016c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompatibilityObstructionMachine/Variant67b36d774e4faa0fbac2097333e04847b72d43692ad899d4fdc67e510def6538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3342757a54790213783a241825ef48deb45d3c32b0530b19d26b4299b53ec15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pVersusNPCompatibilityProfile : CompatibilityObstructionMachine where
  problem := MillenniumProblemProfile.pVersusNP
  status := CompatibilityProblemStatus.speculativeTheoremTarget
  site := {
    objectsLabel := "decision-problem instances with certificate streams"
    morphismsLabel := "reductions and deterministic reconstruction maps"
    coversLabel := "families of locally verifiable certificate charts"
    sheavesLabel := "verification, compression, growth, and reconstruction data"
  }
  staticInvariant := { label := "deterministic growth/compression invariant" }
  continuation := { label := "certificate-stream reconstruction recursion" }
  comparison := { label := "compression-growth comparison" }
  forbidden := { label := "locally verifiable stream with no smooth polynomial reconstruction" }
  obstruction := { label := "smooth-polynomial-compression obstruction" }
  allowed := { label := "complexity class separation conclusion under reduction-invariant lower bound" }
  compatibleImpliesAllowed := fun _ => True
  compatibleImpliesAllowed_certified := fun _ => trivial
  forbiddenForcesObstruction := fun _ => True
  forbiddenForcesObstruction_certified := fun _ => trivial
  sourceLabel := "P versus NP compatibility-obstruction profile; speculative theorem target only"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompatibilityObstructionMachine/Variant67b36d774e4faa0fbac2097333e04847b72d43692ad899d4fdc67e510def6538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompatibilityObstructionMachine/Variant67b36d774e4faa0fbac2097333e04847b72d43692ad899d4fdc67e510def6538.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `647577486c9fa8c8fa5f60ade657dab7ce71c871` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
