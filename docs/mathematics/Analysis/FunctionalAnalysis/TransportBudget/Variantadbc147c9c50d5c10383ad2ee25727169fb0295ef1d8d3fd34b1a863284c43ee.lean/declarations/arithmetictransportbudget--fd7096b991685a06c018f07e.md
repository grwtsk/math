# ArithmeticTransportBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c3d88abfebccae1393b2a1f56e0be1bffb0087577a920882342fdf3370145f6",
  "kind": "structure",
  "lexical_name": "ArithmeticTransportBudget",
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
  "slug": "arithmetictransportbudget--fd7096b991685a06c018f07e",
  "source": {
    "blob": "fe5e837989c6c07d1303c2cf20f64ac3f26ea005",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 14,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TransportBudget/Variantadbc147c9c50d5c10383ad2ee25727169fb0295ef1d8d3fd34b1a863284c43ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd7096b991685a06c018f07ec5000d47ab49c6ec006715b2534f637954213a1c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TransportBudget/Variantadbc147c9c50d5c10383ad2ee25727169fb0295ef1d8d3fd34b1a863284c43ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c3d88abfebccae1393b2a1f56e0be1bffb0087577a920882342fdf3370145f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ArithmeticTransportBudget
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
    (traceBudget :
      Trace.TraceCompensationBudget system) where
  mainBudget :
    ∀ arc : Arc graph,
      correspondence.ArithmeticTest arc.tail →
        ℝ
  regularizationBudget :
    ∀ arc : Arc graph,
      correspondence.ArithmeticTest arc.tail →
        ℝ
  bitfieldBudget :
    ∀ arc : Arc graph,
      correspondence.ArithmeticTest arc.tail →
        ℝ
  correspondenceBudget :
    ∀ arc : Arc graph,
      correspondence.ArithmeticTest arc.tail →
        ℝ
  mainBudget_nonnegative :
    ∀ arc test,
      0 ≤ mainBudget arc test
  regularizationBudget_nonnegative :
    ∀ arc test,
      0 ≤ regularizationBudget arc test
  bitfieldBudget_nonnegative :
    ∀ arc test,
      0 ≤ bitfieldBudget arc test
  correspondenceBudget_nonnegative :
    ∀ arc test,
      0 ≤ correspondenceBudget arc test
  mainDifference_le :
    ∀ arc test,
      abs
          (correspondence.transportDifference
            correspondence.mainTerm arc test) ≤
        mainBudget arc test
  regularizationDifference_le :
    ∀ arc test,
      abs
          (correspondence.transportDifference
            correspondence.regularizationResidual
            arc test) ≤
        regularizationBudget arc test
  bitfieldDifference_le :
    ∀ arc test,
      abs
          (correspondence.transportDifference
            correspondence.bitfieldResidual
            arc test) ≤
        bitfieldBudget arc test
  correspondenceDifference_le :
    ∀ arc test,
      abs
          (correspondence.transportDifference
            correspondence.correspondenceResidual
            arc test) ≤
        correspondenceBudget arc test

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TransportBudget/Variantadbc147c9c50d5c10383ad2ee25727169fb0295ef1d8d3fd34b1a863284c43ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TransportBudget/Variantadbc147c9c50d5c10383ad2ee25727169fb0295ef1d8d3fd34b1a863284c43ee.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe5e837989c6c07d1303c2cf20f64ac3f26ea005` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
