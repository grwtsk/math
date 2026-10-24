# actualF7NormalizedKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6ef7db646a6dac7215b2a3181e7e792e547d1601b832cc910810b337c880d6d",
  "kind": "def",
  "lexical_name": "actualF7NormalizedKernel",
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
  "slug": "actualf7normalizedkernel--88733861c75a65ae925e7566",
  "source": {
    "blob": "69bcebbb5a866ca3e3451013699d0d2f3dfc8aea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 20,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant644a9e02d4815d3b95b9a9c4c3162026f7fbd0a91b1c3bfd915941df4cf88f02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88733861c75a65ae925e756653a4b3aacc7e5243a22a4b04287ca9da0a276889",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt01/Variant644a9e02d4815d3b95b9a9c4c3162026f7fbd0a91b1c3bfd915941df4cf88f02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6ef7db646a6dac7215b2a3181e7e792e547d1601b832cc910810b337c880d6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualF7NormalizedKernel (T r : ℝ) : ℝ :=
  (Iic T).indicator (fun r =>
    actualXiInverseSquareTimeDensity r * Real.exp ((r - T) / 2)) r

/-- The actual PNT L1 source gives measurable normalized kernels at every real cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt01/Variant644a9e02d4815d3b95b9a9c4c3162026f7fbd0a91b1c3bfd915941df4cf88f02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant644a9e02d4815d3b95b9a9c4c3162026f7fbd0a91b1c3bfd915941df4cf88f02.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69bcebbb5a866ca3e3451013699d0d2f3dfc8aea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
