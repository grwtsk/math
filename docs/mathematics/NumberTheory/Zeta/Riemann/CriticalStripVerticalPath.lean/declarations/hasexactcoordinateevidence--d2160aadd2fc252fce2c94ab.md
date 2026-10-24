# HasExactCoordinateEvidence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3397a1f0ba105fbb620058eb3820396bbed9bb5d28c2b338b81a3ea400eddad9",
  "kind": "def",
  "lexical_name": "HasExactCoordinateEvidence",
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
  "slug": "hasexactcoordinateevidence--d2160aadd2fc252fce2c94ab",
  "source": {
    "blob": "b5caf53356e86b5763b6c9ded0d9c0ab48ba541f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 62,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2160aadd2fc252fce2c94ab679de63677c0a8cccaeabc0b52c9e8d95eb9056f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3397a1f0ba105fbb620058eb3820396bbed9bb5d28c2b338b81a3ea400eddad9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HasExactCoordinateEvidence
    {A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {root : NoncommutativeHeightRoot A X H}
    {left right : CriticalStripChart root}
    (evidence : Option (OverlapAuditOutcome left right)) : Prop :=
  ∃ outcome, evidence = some outcome ∧ outcome.HasExactCoordinate

/-- One vertical edge with exact source binding and optional overlap evidence.

Every edge is logically and height-valid because it wraps `VerticalStep`. Additional
coordinate-equivalence and terminal-equivalence tags require their own evidence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5caf53356e86b5763b6c9ded0d9c0ab48ba541f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
