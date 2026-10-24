# CorrelationCompatibleFactorizationFlow.cutoffPairing_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16f8e115-9bd5-bb93-a686-728152d5d8d4",
  "kind": "theorem",
  "lexical_name": "CorrelationCompatibleFactorizationFlow.cutoffPairing_eq",
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
  "slug": "correlationcompatiblefactorizationflow-cutoffpairing-eq--3605777f5796a4ba2360b9c4",
  "source": {
    "blob": "6014eb5c6a15ad2542deae08dfadebe6e61de6d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 133,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FactorizationFlow/Variant3925b818493e46346ef9de0255f769bf9b1dcb4537e44ec0e88efcb47850641f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3605777f5796a4ba2360b9c4c18de32aefdec966925f2d56272c0bb0cb85c030",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FactorizationFlow/Variant3925b818493e46346ef9de0255f769bf9b1dcb4537e44ec0e88efcb47850641f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16f8e115-9bd5-bb93-a686-728152d5d8d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CorrelationCompatibleFactorizationFlow.cutoffPairing_eq
    {Left Right LeftPacketSpace RightPacketSpace : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace] [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace] [CompleteSpace RightPacketSpace]
    {leftIndex : Left → ℕ} {rightIndex : Right → ℕ}
    (flow : CorrelationCompatibleFactorizationFlow Left Right
      LeftPacketSpace RightPacketSpace leftIndex rightIndex)
    (t : ℝ) (x : ℕ) :
    bilinearMatrixPairing flow.leftCoefficient
        (productCutoffMatrix leftIndex rightIndex x) flow.rightCoefficient =
      flow.packetPairing t x + flow.residualPairing t x := by
  have hmatrix :
      productCutoffMatrix leftIndex rightIndex x =
        flow.packetMatrix t x + flow.residual t x := by
    ext left right
    exact flow.exactAtTime t x left right
  rw [hmatrix, bilinearMatrixPairing_add]
  rfl

/-- The packet/residual derivatives cancel exactly because their sum is the
time-independent arithmetic cutoff pairing. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FactorizationFlow/Variant3925b818493e46346ef9de0255f769bf9b1dcb4537e44ec0e88efcb47850641f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FactorizationFlow/Variant3925b818493e46346ef9de0255f769bf9b1dcb4537e44ec0e88efcb47850641f.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6014eb5c6a15ad2542deae08dfadebe6e61de6d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
