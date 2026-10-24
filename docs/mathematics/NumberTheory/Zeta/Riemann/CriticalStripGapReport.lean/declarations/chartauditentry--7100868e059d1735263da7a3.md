# ChartAuditEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aeab415f5de4019cca0a8a22c42414dddcd7c70047a26bd8c35d3e398041af15",
  "kind": "structure",
  "lexical_name": "ChartAuditEntry",
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
  "slug": "chartauditentry--7100868e059d1735263da7a3",
  "source": {
    "blob": "434579e29c5d860b4dcbcb25938e98f12f6505be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 143,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7100868e059d1735263da7a3585f4e74f2547db8f3fb07e173b6f5832958dea9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aeab415f5de4019cca0a8a22c42414dddcd7c70047a26bd8c35d3e398041af15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ChartAuditEntry
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) (i : ι) where
  chartId : String
  binding : SourceBinding
  binding_matches : binding.Matches (atlas.chart i)
  forwardDeclaration : Option String
  reverseDeclaration : Option String
  suppliers : List String
  consumers : List String
  gaps : List AtlasGap
  forward_declaration_present :
    (atlas.comparison i).HasForward →
      ∃ declaration, forwardDeclaration = some declaration
  reverse_declaration_present :
    (atlas.comparison i).HasReverse →
      ∃ declaration, reverseDeclaration = some declaration
  forward_present_no_gap :
    (atlas.comparison i).HasForward →
      ¬ HasOpenGap gaps .missingForwardImplication
  reverse_present_no_gap :
    (atlas.comparison i).HasReverse →
      ¬ HasOpenGap gaps .missingReverseImplication
  forward_absent_reported :
    ¬ (atlas.comparison i).HasForward →
      HasOpenGap gaps .missingForwardImplication
  reverse_absent_reported :
    ¬ (atlas.comparison i).HasReverse →
      HasOpenGap gaps .missingReverseImplication

namespace ChartAuditEntry

/-- Every audited chart has an actual point in its carrier; an empty carrier cannot be
used to pass the logical audit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `434579e29c5d860b4dcbcb25938e98f12f6505be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
