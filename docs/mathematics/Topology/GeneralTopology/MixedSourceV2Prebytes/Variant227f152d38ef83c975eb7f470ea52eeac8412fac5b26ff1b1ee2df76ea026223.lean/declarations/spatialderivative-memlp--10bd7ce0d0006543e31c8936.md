# spatialDerivative_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bd897c0-9136-391c-8f94-66529e2f2e84",
  "kind": "theorem",
  "lexical_name": "spatialDerivative_memLp",
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
  "slug": "spatialderivative-memlp--10bd7ce0d0006543e31c8936",
  "source": {
    "blob": "a337e7b3b0733502c95a8ab27694dfcabcd51a93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 114,
    "path": "GRWTSK/Topology/GeneralTopology/MixedSourceV2Prebytes/Variant227f152d38ef83c975eb7f470ea52eeac8412fac5b26ff1b1ee2df76ea026223.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10bd7ce0d0006543e31c8936a4802bd6bf014a1d9611b5fb534c99b05689148a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MixedSourceV2Prebytes/Variant227f152d38ef83c975eb7f470ea52eeac8412fac5b26ff1b1ee2df76ea026223.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bd897c0-9136-391c-8f94-66529e2f2e84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spatialDerivative_memLp {A : ℝ} (hA : 0 < A) :
    MemLp (spatialDerivative A) 2 (volume : Measure ℝ) :=
  (spatialDerivative_continuous hA).memLp_of_hasCompactSupport
    (spatialDerivative_hasCompactSupport hA)

/-- Canonical complex L² class of the actual real spatial derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MixedSourceV2Prebytes/Variant227f152d38ef83c975eb7f470ea52eeac8412fac5b26ff1b1ee2df76ea026223.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MixedSourceV2Prebytes/Variant227f152d38ef83c975eb7f470ea52eeac8412fac5b26ff1b1ee2df76ea026223.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a337e7b3b0733502c95a8ab27694dfcabcd51a93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
