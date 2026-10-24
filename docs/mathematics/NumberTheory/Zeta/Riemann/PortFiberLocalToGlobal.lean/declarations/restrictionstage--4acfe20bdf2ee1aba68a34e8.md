# restrictionStage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27b6a9cb78d0be5fdf828949bf4f444face4c82f0580c3d0b113efc420288e5c",
  "kind": "def",
  "lexical_name": "restrictionStage",
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
  "slug": "restrictionstage--4acfe20bdf2ee1aba68a34e8",
  "source": {
    "blob": "7c2d3893b7db1b842b24a354199b18cd808b0533",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 66,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4acfe20bdf2ee1aba68a34e828353524d2a8ebae3dfb5dcbbf1847cfeec615b8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27b6a9cb78d0be5fdf828949bf4f444face4c82f0580c3d0b113efc420288e5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictionStage : BoundStage where
  Source := Section
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.whole
  Target := Section
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.realAxis
  map := system.map
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.restrictionPath.composite
  certificate := restrictionClaim
  certified := restrictionClaim_proof
  theoremClaim := restrictionClaim
  theoremProof := restrictionClaim_proof
  sourceIdentity :=
    { repository := "grwtsk/math"
      revision := "issue-230-portfiber-holomorphy"
      path := "GRWTSK/Analysis/Complex/HolomorphicRestriction.lean"
      declaration := "Fixtures.restrictionPath" }
  invalidationKey := "portfiber-simultaneous-restriction-v1"

/-- Constructive ordinary-function gluing stage for one exact binary cover. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c2d3893b7db1b842b24a354199b18cd808b0533` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
