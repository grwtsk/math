# criticalDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9063b5e1dc79a2a137b458d8043f77dc06f56f1cc3b56d976f7bbb747e9264c",
  "kind": "def",
  "lexical_name": "criticalDensity",
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
  "slug": "criticaldensity--f2291adf033e2c477d126e5a",
  "source": {
    "blob": "357ed5106d860e87572dc22ccf3b1c9d24f4dae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2291adf033e2c477d126e5afb4e7ceeb9e05d90fb374eb2e7d5c8d11758cda5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9063b5e1dc79a2a137b458d8043f77dc06f56f1cc3b56d976f7bbb747e9264c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def criticalDensity (u : ℝ) : ℝ := 1-criticalDecay u/2

/-- The actual closed prime prefix and continuous density need not have equal total mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant2b1074360f07b13a934b837b8bbb73c5eeb5c0caa8db89fe78852d33c0dba07f.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `357ed5106d860e87572dc22ccf3b1c9d24f4dae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
