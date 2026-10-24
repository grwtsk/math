# actualRetainedMeanSourcePrimitive_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d5e049c-17f2-513e-cbe3-944ca4bc8cb2",
  "kind": "theorem",
  "lexical_name": "actualRetainedMeanSourcePrimitive_deriv",
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
  "slug": "actualretainedmeansourceprimitive-deriv--8d0ecd47c798c0cbb9824ae7",
  "source": {
    "blob": "2b2def47c64a6496b18403737e66615651ab4b20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 67,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualRetainedMeanTrace/Variant2344b3bae95e26316b8342c6d370c5f109083274ef53d82ccddf2e9de5fd0b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d0ecd47c798c0cbb9824ae731aa6a219160503522378ea53d75d48e0a83129c",
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

Occurrence: `result:3d5e049c-17f2-513e-cbe3-944ca4bc8cb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRetainedMeanSourcePrimitive_deriv {A : ℝ} (hA : 0 < A) (t s : ℝ) :
    deriv (actualRetainedMeanSourcePrimitive A t) s = actualTwistedTimeDensity A t s :=
  (actualRetainedMeanSourcePrimitive_hasDerivAt hA t s).deriv

/-- The genuine source mean integral is exactly both column traces on every finite interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualRetainedMeanTrace/Variant2344b3bae95e26316b8342c6d370c5f109083274ef53d82ccddf2e9de5fd0b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualRetainedMeanTrace/Variant2344b3bae95e26316b8342c6d370c5f109083274ef53d82ccddf2e9de5fd0b42.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b2def47c64a6496b18403737e66615651ab4b20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
