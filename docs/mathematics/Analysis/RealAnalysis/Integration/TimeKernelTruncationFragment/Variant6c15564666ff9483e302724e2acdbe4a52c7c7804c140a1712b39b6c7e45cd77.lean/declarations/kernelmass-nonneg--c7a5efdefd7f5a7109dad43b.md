# kernelMass_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:027737c2-1f07-e7f2-9e84-4578b5f52a7d",
  "kind": "theorem",
  "lexical_name": "kernelMass_nonneg",
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
  "slug": "kernelmass-nonneg--c7a5efdefd7f5a7109dad43b",
  "source": {
    "blob": "f416c52b356247f6155bfd4201cf76181034707b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7a5efdefd7f5a7109dad43b579f865ff247d34d76e26133c5c3aa10396ba64c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:027737c2-1f07-e7f2-9e84-4578b5f52a7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernelMass_nonneg : 0 ≤ kernelMass := integral_nonneg (fun t => norm_nonneg (fixedKernel t))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f416c52b356247f6155bfd4201cf76181034707b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
