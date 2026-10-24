# vaughanPairTube_axisSegment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c7358e2-6fb9-ce4b-ff50-0c1c551e99eb",
  "kind": "theorem",
  "lexical_name": "vaughanPairTube_axisSegment",
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
  "slug": "vaughanpairtube-axissegment--41e5cd384a3a81478670e7fe",
  "source": {
    "blob": "fbb8479620a4a9317f8799a4c1254abb3190bf07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 187,
    "path": "GRWTSK/Algebra/ConductorThreeVaughanTubeScaffold/Variant3479579f05c18980123b84f3e4ed048cfdbb389ca957c3a8da7a726c1020f043.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41e5cd384a3a81478670e7fe5f89666140f369cabab13b3a4a8389dc59806eab",
  "verification": {
    "reference": "docs/verification/Algebra/ConductorThreeVaughanTubeScaffold/Variant3479579f05c18980123b84f3e4ed048cfdbb389ca957c3a8da7a726c1020f043.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c7358e2-6fb9-ce4b-ff50-0c1c551e99eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vaughanPairTube_axisSegment (N m k : ℕ) :
    (vaughanPairTube N m k).axisSegment =
      segment ℝ ((-(1 / 2 : ℝ)) • vaughanDirection N m k)
        ((1 / 2 : ℝ) • vaughanDirection N m k) := by
  rw [UnitTube3.axisSegment, vaughanPairTube_terminalPoint]
  rfl

/-- Distinct arithmetic pairs determine distinct oriented tubes.  This is an
exact distinctness result, not a quantitative angular-separation estimate. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ConductorThreeVaughanTubeScaffold/Variant3479579f05c18980123b84f3e4ed048cfdbb389ca957c3a8da7a726c1020f043.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ConductorThreeVaughanTubeScaffold/Variant3479579f05c18980123b84f3e4ed048cfdbb389ca957c3a8da7a726c1020f043.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbb8479620a4a9317f8799a4c1254abb3190bf07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
