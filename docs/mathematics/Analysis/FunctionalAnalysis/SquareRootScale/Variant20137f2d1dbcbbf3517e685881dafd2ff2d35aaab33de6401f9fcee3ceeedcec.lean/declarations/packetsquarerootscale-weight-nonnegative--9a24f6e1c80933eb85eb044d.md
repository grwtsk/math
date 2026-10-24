# PacketSquareRootScale.weight_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d8d7599-2383-2a1b-0b18-ba4c7e224de4",
  "kind": "theorem",
  "lexical_name": "PacketSquareRootScale.weight_nonnegative",
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
  "slug": "packetsquarerootscale-weight-nonnegative--9a24f6e1c80933eb85eb044d",
  "source": {
    "blob": "6a24a481ccaae1ab6a020d5260854cb806ab348a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 88,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a24f6e1c80933eb85eb044da0c8165c6a06d42e9cebcc5ad6f4eaeb9aa6219a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d8d7599-2383-2a1b-0b18-ba4c7e224de4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PacketSquareRootScale.weight_nonnegative
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest}
    {correspondence :
      ArithmeticTraceCorrespondence system}
    (scale :
      PacketSquareRootScale correspondence)
    (node : graph.Node)
    (test :
      correspondence.ArithmeticTest node) :
    0 ≤ scale.weight node test := by
  have logNonnegative :
      0 ≤ Real.log (scale.mass node) :=
    Real.log_nonneg (scale.mass_ge_one node)
  have logarithmicFactorNonnegative :
      0 ≤ 1 + Real.log (scale.mass node) := by
    linarith
  unfold PacketSquareRootScale.weight
  exact mul_nonneg
    (mul_nonneg
      (Real.sqrt_nonneg _)
      (pow_nonneg logarithmicFactorNonnegative _))
    (scale.testNormSq_nonnegative node test)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a24a481ccaae1ab6a020d5260854cb806ab348a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
