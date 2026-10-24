# actualRetainedMeanSourcePrimitive_zero_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8093177-beee-d8f0-5b54-377b9a16456f",
  "kind": "theorem",
  "lexical_name": "actualRetainedMeanSourcePrimitive_zero_right",
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
  "slug": "actualretainedmeansourceprimitive-zero-right--4b7dfb9a21306459853b3ddc",
  "source": {
    "blob": "2b2def47c64a6496b18403737e66615651ab4b20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualRetainedMeanTrace/Variant2344b3bae95e26316b8342c6d370c5f109083274ef53d82ccddf2e9de5fd0b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b7dfb9a21306459853b3ddc6f6defcf7a043e85b1d1caf1ad4b3f4b1fc4e4c0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualRetainedMeanTrace/Variant2344b3bae95e26316b8342c6d370c5f109083274ef53d82ccddf2e9de5fd0b42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8093177-beee-d8f0-5b54-377b9a16456f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRetainedMeanSourcePrimitive_zero_right {A t s : ℝ} (hA : 1 ≤ A)
    (hz : 2 * A ≤ t + s) : actualRetainedMeanSourcePrimitive A t s = 0 := by
  unfold actualRetainedMeanSourcePrimitive
  rw [actualCorrelation_jet_zero_right A hA 2 _ hz,
    actualCorrelation_jet_zero_right A hA 1 _ hz]
  simp

/-- The original adjusted inner work retains the resolved mean traces and full physical row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualRetainedMeanTrace/Variant2344b3bae95e26316b8342c6d370c5f109083274ef53d82ccddf2e9de5fd0b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualRetainedMeanTrace/Variant2344b3bae95e26316b8342c6d370c5f109083274ef53d82ccddf2e9de5fd0b42.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b2def47c64a6496b18403737e66615651ab4b20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
