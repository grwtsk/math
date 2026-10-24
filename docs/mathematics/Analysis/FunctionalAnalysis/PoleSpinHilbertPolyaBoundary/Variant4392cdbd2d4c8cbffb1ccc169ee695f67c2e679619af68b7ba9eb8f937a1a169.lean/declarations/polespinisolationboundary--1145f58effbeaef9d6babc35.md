# PoleSpinIsolationBoundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea82d459b3e2ad289f4b78468c7250f3f1da95cb3ccce803dff5f010cdd9bafd",
  "kind": "structure",
  "lexical_name": "PoleSpinIsolationBoundary",
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
  "slug": "polespinisolationboundary--1145f58effbeaef9d6babc35",
  "source": {
    "blob": "28ab0831f7995365781f5dbd339db5d3303771db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 78,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1145f58effbeaef9d6babc35289479bfc3fa804cb96c92d15b8bc1cd6e1c5b44",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea82d459b3e2ad289f4b78468c7250f3f1da95cb3ccce803dff5f010cdd9bafd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PoleSpinIsolationBoundary where
  localSpinIsolated : Bool
  zeroToOneFlipAdmitted : Bool
  oneToZeroFlipAdmitted : Bool
  flipInvolutive : Bool
  everyPoleAccounted : Bool
  noUnpairedFlipResidue : Bool
  determinantGateReceivesSpinBoundary : Bool
  hilbertPolyaAuthority : Bool
  rhAuthority : Bool
  determinantGateReceivesSpinBoundary_of_closed_spin_gate :
    localSpinIsolated = true →
    zeroToOneFlipAdmitted = true →
    oneToZeroFlipAdmitted = true →
    flipInvolutive = true →
    everyPoleAccounted = true →
    noUnpairedFlipResidue = true →
    determinantGateReceivesSpinBoundary = true
  no_hilbert_polya_from_spin_boundary_alone : hilbertPolyaAuthority = false
  no_rh_from_spin_boundary_alone : rhAuthority = false

/-- Default spin boundary: not yet closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28ab0831f7995365781f5dbd339db5d3303771db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
