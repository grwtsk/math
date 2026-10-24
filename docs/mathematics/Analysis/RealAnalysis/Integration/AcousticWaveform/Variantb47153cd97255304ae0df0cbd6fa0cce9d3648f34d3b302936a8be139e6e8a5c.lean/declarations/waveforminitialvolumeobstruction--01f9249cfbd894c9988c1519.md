# waveformInitialVolumeObstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:653dc51739cf76572a1a3ee0047e95785cd3ec013cb70125db5958105aa37e03",
  "kind": "def",
  "lexical_name": "waveformInitialVolumeObstruction",
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
  "slug": "waveforminitialvolumeobstruction--01f9249cfbd894c9988c1519",
  "source": {
    "blob": "11eca7b2cf811baab5e0a310d19108edbe815d76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 364,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01f9249cfbd894c9988c1519ac81af2c97883dcd732f5c57c31f4b12f5359f28",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:653dc51739cf76572a1a3ee0047e95785cd3ec013cb70125db5958105aa37e03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def waveformInitialVolumeObstruction (density distance soundSpeed initialTime : ℝ) :
    DescentObstruction
      (fun history : PositiveC2History =>
        retardedPressure density distance soundSpeed history.val)
      (fun history => history.val initialTime) where
  left := constantHistory 1 (by norm_num)
  right := constantHistory 2 (by norm_num)
  sameCarrier := by rw [constantHistory_retarded_pressure, constantHistory_retarded_pressure]
  targetSeparated := by norm_num [constantHistory]

/-- Even among positive C² histories, a waveform-only decoder cannot recover the volume history. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11eca7b2cf811baab5e0a310d19108edbe815d76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
