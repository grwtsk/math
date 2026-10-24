# defaultBinomialFlipBraidTraceBoundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8fab7b1293a672b93702091c236de0d16136a68dc8cb39e940d31b1c0bb29dc",
  "kind": "def",
  "lexical_name": "defaultBinomialFlipBraidTraceBoundary",
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
  "slug": "defaultbinomialflipbraidtraceboundary--3cfe40548b454d73880eb159",
  "source": {
    "blob": "ebe8f66fede5a169592982d5d42c0a95c19ee22b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 323,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8c80c697fb825455441030b027ca2748cc6ada2f694ba6b9b21734d3dcb7f166.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cfe40548b454d73880eb159811371350410b63a8b20c5402c6548bf692c058e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8c80c697fb825455441030b027ca2748cc6ada2f694ba6b9b21734d3dcb7f166.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8fab7b1293a672b93702091c236de0d16136a68dc8cb39e940d31b1c0bb29dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def defaultBinomialFlipBraidTraceBoundary : BinomialFlipBraidTraceBoundary :=
  { binomialFlipExpansion := true
    monomialSpinOperators := false
    orderedMonomialSupport := false
    plusMinusSpinOperators := true
    spinFlipInvolutive := true
    torsionShellTraceClassTransfer := false
    poleSpinBoundaryAdmitted := false
    braidTraceConstructed := false
    bsdBraidTraceWitness := false
    determinantTraceInput := false
    bsdTheoremAuthority := false
    hilbertPolyaAuthority := false
    determinantTraceInput_of_finite_braid_gate := by
      intro _hBinom hSpin _hOrdered _hOps _hInv _hTrace _hPole _hBraid _hWitness
      cases hSpin
    no_bsd_authority_from_braid_trace_witness := rfl
    no_hilbert_polya_from_braid_trace_witness := rfl }

/-- Completed finite braid trace boundary.  This feeds determinant trace input,
but remains non-authoritative for BSD and Hilbert--Polya. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8c80c697fb825455441030b027ca2748cc6ada2f694ba6b9b21734d3dcb7f166.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8c80c697fb825455441030b027ca2748cc6ada2f694ba6b9b21734d3dcb7f166.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebe8f66fede5a169592982d5d42c0a95c19ee22b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
