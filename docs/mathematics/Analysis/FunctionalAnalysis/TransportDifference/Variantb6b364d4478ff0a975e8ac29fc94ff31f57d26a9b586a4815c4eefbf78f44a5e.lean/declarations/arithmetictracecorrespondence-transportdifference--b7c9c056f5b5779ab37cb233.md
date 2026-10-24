# ArithmeticTraceCorrespondence.transportDifference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2c3fe1ae421cadf564c5ed7126b5fea3b2ce3c259426cbc2ff7556cd446cceb",
  "kind": "def",
  "lexical_name": "ArithmeticTraceCorrespondence.transportDifference",
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
  "slug": "arithmetictracecorrespondence-transportdifference--b7c9c056f5b5779ab37cb233",
  "source": {
    "blob": "e0aa01772997852d39882e547d9e3f34783cf872",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 14,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TransportDifference/Variantb6b364d4478ff0a975e8ac29fc94ff31f57d26a9b586a4815c4eefbf78f44a5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7c9c056f5b5779ab37cb233c571d0b3e86e2cc287d979975d4b1f7c0ef0b917",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TransportDifference/Variantb6b364d4478ff0a975e8ac29fc94ff31f57d26a9b586a4815c4eefbf78f44a5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2c3fe1ae421cadf564c5ed7126b5fea3b2ce3c259426cbc2ff7556cd446cceb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ArithmeticTraceCorrespondence.transportDifference
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
    (correspondence :
      ArithmeticTraceCorrespondence system)
    (field :
      ∀ node,
        correspondence.ArithmeticTest node →
          ℝ)
    (arc : Arc graph)
    (test :
      correspondence.ArithmeticTest arc.tail) :
    ℝ :=
  field arc.head
      (correspondence.transportTest arc test) -
    field arc.tail test

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TransportDifference/Variantb6b364d4478ff0a975e8ac29fc94ff31f57d26a9b586a4815c4eefbf78f44a5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TransportDifference/Variantb6b364d4478ff0a975e8ac29fc94ff31f57d26a9b586a4815c4eefbf78f44a5e.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0aa01772997852d39882e547d9e3f34783cf872` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
