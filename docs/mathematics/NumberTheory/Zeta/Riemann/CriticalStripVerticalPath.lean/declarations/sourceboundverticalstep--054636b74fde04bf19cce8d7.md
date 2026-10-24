# SourceBoundVerticalStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1969d992a0e86d25038d85d386899d2ea813f8652e6b979cb6dc858f91513fb4",
  "kind": "structure",
  "lexical_name": "SourceBoundVerticalStep",
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
  "slug": "sourceboundverticalstep--054636b74fde04bf19cce8d7",
  "source": {
    "blob": "b5caf53356e86b5763b6c9ded0d9c0ab48ba541f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 73,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:054636b74fde04bf19cce8d70f2dbb11c45605a47bdd4f44601659e8f252ad31",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1969d992a0e86d25038d85d386899d2ea813f8652e6b979cb6dc858f91513fb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SourceBoundVerticalStep
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) (lower upper : ι) where
  step : VerticalStep atlas lower upper
  lowerBinding : SourceBinding
  upperBinding : SourceBinding
  lower_binding_matches : lowerBinding.Matches (atlas.chart lower)
  upper_binding_matches : upperBinding.Matches (atlas.chart upper)
  binding_eq : lowerBinding = upperBinding
  kinds : List VerticalEdgeKind
  kinds_nonempty : kinds ≠ []
  logical_kind_present : .logicalImplication ∈ kinds
  height_kind_present : .heightMonotone ∈ kinds
  coordinateEvidence : Option
    (OverlapAuditOutcome (atlas.chart lower) (atlas.chart upper))
  coordinate_evidence_exact :
    .coordinateEquivalence ∈ kinds →
      HasExactCoordinateEvidence coordinateEvidence
  terminal_status_exact :
    .terminalEquivalence ∈ kinds →
      (atlas.comparison upper).status = .equivalent

/-- A finite composable vertical path. Its indices enforce endpoint agreement between
consecutive edges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5caf53356e86b5763b6c9ded0d9c0ab48ba541f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
