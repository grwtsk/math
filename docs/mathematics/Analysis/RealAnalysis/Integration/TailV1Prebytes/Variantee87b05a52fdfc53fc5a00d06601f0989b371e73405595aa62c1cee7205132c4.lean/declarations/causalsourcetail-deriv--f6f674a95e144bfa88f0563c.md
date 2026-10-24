# causalSourceTail_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a2f0f8c-8da3-a82a-11fa-4c0a45828c7a",
  "kind": "theorem",
  "lexical_name": "causalSourceTail_deriv",
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
  "slug": "causalsourcetail-deriv--f6f674a95e144bfa88f0563c",
  "source": {
    "blob": "050c93e81e9cfee3a482fe9a4a872704a33ae181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 248,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TailV1Prebytes/Variantee87b05a52fdfc53fc5a00d06601f0989b371e73405595aa62c1cee7205132c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6f674a95e144bfa88f0563cda01dc71d094a4c9d09fbe76884d2b533770a180",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TailV1Prebytes/Variantee87b05a52fdfc53fc5a00d06601f0989b371e73405595aa62c1cee7205132c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a2f0f8c-8da3-a82a-11fa-4c0a45828c7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem causalSourceTail_deriv {A : ℝ} (hA : 0 < A) (x : ℝ) :
    deriv (causalSourceTail A) x =
      causalSourceTail A x / 2 - normalizedTest explicitSecondDerivative A x :=
  (causalSourceTail_hasDerivAt hA x).deriv

/-- The evaluated tail vanishes outside the actual source interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TailV1Prebytes/Variantee87b05a52fdfc53fc5a00d06601f0989b371e73405595aa62c1cee7205132c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TailV1Prebytes/Variantee87b05a52fdfc53fc5a00d06601f0989b371e73405595aa62c1cee7205132c4.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `050c93e81e9cfee3a482fe9a4a872704a33ae181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
