# rh_of_proved_required_statement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a497cf78-38f2-6514-e556-2f61c0540a98",
  "kind": "theorem",
  "lexical_name": "rh_of_proved_required_statement",
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
  "slug": "rh-of-proved-required-statement--d3b575fba5512f41b9fea928",
  "source": {
    "blob": "b5caf53356e86b5763b6c9ded0d9c0ab48ba541f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 250,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3b575fba5512f41b9fea9287a6113f08e8d2ce5c75983635276764ed0f11be3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a497cf78-38f2-6514-e556-2f61c0540a98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rh_of_proved_required_statement
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H}
    {report : AtlasGapReport atlas}
    (coverage : CompleteVerticalCoverage report)
    {i : ι} (hi : report.required i)
    (hproved : (atlas.chart i).localStatement) :
    _root_.RiemannHypothesis :=
  coverage.required_statement_implies_rh hi hproved

/-- Complete paths plus the independent #231 reverse-direction discharge yield the
exact global RH equivalence. Path existence alone is intentionally insufficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripVerticalPath.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5caf53356e86b5763b6c9ded0d9c0ab48ba541f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
