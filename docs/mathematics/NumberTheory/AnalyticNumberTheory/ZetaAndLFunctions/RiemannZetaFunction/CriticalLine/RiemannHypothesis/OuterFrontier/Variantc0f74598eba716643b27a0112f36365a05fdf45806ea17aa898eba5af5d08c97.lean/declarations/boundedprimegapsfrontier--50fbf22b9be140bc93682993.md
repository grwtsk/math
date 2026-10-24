# boundedPrimeGapsFrontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0c5177811c45ed51cc7035d3f6fb842e9ea95209025fe3a8d5cdd619afbf868",
  "kind": "def",
  "lexical_name": "boundedPrimeGapsFrontier",
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
  "slug": "boundedprimegapsfrontier--50fbf22b9be140bc93682993",
  "source": {
    "blob": "08abdf49e461bf87d747ddccdbd86259af66e886",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OuterFrontier/Variantc0f74598eba716643b27a0112f36365a05fdf45806ea17aa898eba5af5d08c97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50fbf22b9be140bc93682993b078628411ec8cfd8e25dbbf93e1dac701a8184b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OuterFrontier/Variantc0f74598eba716643b27a0112f36365a05fdf45806ea17aa898eba5af5d08c97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0c5177811c45ed51cc7035d3f6fb842e9ea95209025fe3a8d5cdd619afbf868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundedPrimeGapsFrontier : FrontierRecord :=
  { target := OuterTarget.boundedPrimeGaps
    status := FrontierStatus.knownExternalTheorem
    sourceLabel :=
      "Zhang/Maynard: bounded and small gaps between primes"
    sourceUrl :=
      "https://annals.math.princeton.edu/articles/keyword/gaps-between-primes"
    repoLeanBoundary := "Think.ModularWave.TheoremSources.zhang2014/maynard2015"
    repoAuthorityTransferred := false }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OuterFrontier/Variantc0f74598eba716643b27a0112f36365a05fdf45806ea17aa898eba5af5d08c97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OuterFrontier/Variantc0f74598eba716643b27a0112f36365a05fdf45806ea17aa898eba5af5d08c97.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08abdf49e461bf87d747ddccdbd86259af66e886` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
