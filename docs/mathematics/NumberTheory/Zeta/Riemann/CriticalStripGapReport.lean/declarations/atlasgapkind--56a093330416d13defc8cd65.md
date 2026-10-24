# AtlasGapKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03e7a8fff6fdd0ee2c16c154f5b0fddd7bef5438314d46401b2f2e998bf8cdff",
  "kind": "inductive",
  "lexical_name": "AtlasGapKind",
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
  "slug": "atlasgapkind--56a093330416d13defc8cd65",
  "source": {
    "blob": "434579e29c5d860b4dcbcb25938e98f12f6505be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 27,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56a093330416d13defc8cd655ac13bbcc828c46b2041c5a747816f2319f6a862",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03e7a8fff6fdd0ee2c16c154f5b0fddd7bef5438314d46401b2f2e998bf8cdff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive AtlasGapKind where
  | missingForwardImplication
  | missingReverseImplication
  | carrierVacuity
  | rootCoordinateMismatch
  | sourceMismatch
  | normalizationMismatch
  | missingOverlap
  | missingIdentityLaw
  | missingInverseLaw
  | missingCocycleLaw
  | missingVerticalStep
  | missingTopologicalEquivalence
  | missingHomotopy
  | missingRingHomomorphism
  | missingHolomorphy
  | missingCompatibilitySquare
  | missingReplayEvidence
  | refutedLocalStatement
  deriving DecidableEq, Repr

/-- Status of one reported obligation. `refuted` means that the proposed obligation or
chart claim is false at the declared binding; it is still blocking, unlike
`notApplicable` or `discharged`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `434579e29c5d860b4dcbcb25938e98f12f6505be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
