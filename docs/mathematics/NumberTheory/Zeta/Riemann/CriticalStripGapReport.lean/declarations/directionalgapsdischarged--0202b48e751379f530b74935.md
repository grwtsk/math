# DirectionalGapsDischarged

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:000fe5b13d9bdaf51f4284f26051b077a92b4d01b7fdc4f1960eb64f3f592a52",
  "kind": "def",
  "lexical_name": "DirectionalGapsDischarged",
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
  "slug": "directionalgapsdischarged--0202b48e751379f530b74935",
  "source": {
    "blob": "434579e29c5d860b4dcbcb25938e98f12f6505be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 272,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0202b48e751379f530b749352c45735607ac07f9e761f88feb08ac3b102892dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:000fe5b13d9bdaf51f4284f26051b077a92b4d01b7fdc4f1960eb64f3f592a52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DirectionalGapsDischarged
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H}
    (report : AtlasGapReport atlas) : Prop :=
  ∀ i (hi : report.required i),
    ¬ HasOpenGap (report.audit i hi).gaps .missingForwardImplication ∧
      ¬ HasOpenGap (report.audit i hi).gaps .missingReverseImplication

/-- Exact report coverage plus discharge of both logical directions yields the atlas's
existing `GapFree` predicate. This theorem does not close any structural, analytic,
source, overlap, vertical-path, or replay gap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `434579e29c5d860b4dcbcb25938e98f12f6505be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
