# actualCenteredPrimeLogBoundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f1f55bfaee6ada6b5346e8806d2d790b1b25bb91c1bd6f8e16c784754631827",
  "kind": "def",
  "lexical_name": "actualCenteredPrimeLogBoundary",
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
  "slug": "actualcenteredprimelogboundary--94ce891f8dce9029e79ea73f",
  "source": {
    "blob": "5a19f59d450a7636301e11bf08a38c7d10b6846d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variantc8e459ab40c8c85ee99b445ee2a775b3acff1bc591b228fe28d829a1e02674c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94ce891f8dce9029e79ea73f380d457d975c2eca0577c211367d1bfcf557aaaa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variantc8e459ab40c8c85ee99b445ee2a775b3acff1bc591b228fe28d829a1e02674c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f1f55bfaee6ada6b5346e8806d2d790b1b25bb91c1bd6f8e16c784754631827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualCenteredPrimeLogBoundary (A c T : ℝ) : ℂ :=
  (I / (2 * Real.pi) : ℂ) *
    (actualInitialPrimeMellin A ((c : ℂ) + (T : ℂ) * I) *
        (actualClosedPrimeLogPotential A ((c : ℂ) + (T : ℂ) * I) -
          actualClosedPrimeLogPotential A (c : ℂ)) -
      actualInitialPrimeMellin A ((c : ℂ) + (-T : ℂ) * I) *
        (actualClosedPrimeLogPotential A ((c : ℂ) + (-T : ℂ) * I) -
          actualClosedPrimeLogPotential A (c : ℂ)))

/-- The full actual closed cosine deficit, retaining every prime power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variantc8e459ab40c8c85ee99b445ee2a775b3acff1bc591b228fe28d829a1e02674c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variantc8e459ab40c8c85ee99b445ee2a775b3acff1bc591b228fe28d829a1e02674c9.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a19f59d450a7636301e11bf08a38c7d10b6846d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
