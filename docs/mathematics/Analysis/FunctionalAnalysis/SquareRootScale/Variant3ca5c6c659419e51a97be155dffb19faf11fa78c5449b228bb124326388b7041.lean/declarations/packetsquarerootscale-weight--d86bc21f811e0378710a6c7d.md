# PacketSquareRootScale.weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7774a4b9e9bbebf31fa6936e2ea25fd22a79141c825b3efac9f760b955dcf58",
  "kind": "def",
  "lexical_name": "PacketSquareRootScale.weight",
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
  "slug": "packetsquarerootscale-weight--d86bc21f811e0378710a6c7d",
  "source": {
    "blob": "679fe673d28252dc0fe843f89c1db9767eafd6b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 57,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d86bc21f811e0378710a6c7db0c20de48d6c78433126611813a46d88b2d64caa",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7774a4b9e9bbebf31fa6936e2ea25fd22a79141c825b3efac9f760b955dcf58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def PacketSquareRootScale.weight
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
      correspondence.ArithmeticTest node) : ℝ :=
  Real.sqrt (scale.mass node) *
    (1 + Real.log (scale.mass node)) ^
      scale.logPower *
    scale.testNormSq node test

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SquareRootScale/Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679fe673d28252dc0fe843f89c1db9767eafd6b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
