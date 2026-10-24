# halfZero_asymptoticallyStable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a3874ad4ee8e3b2ab501b398030b231948c6e61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 260,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df77142a-2df3-af45-f9bb-2deabdf6a813",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:beba537b-433d-e5c6-e9f5-d9fa67b0d5ae",
  "kind": "theorem",
  "lexical_name": "halfZero_asymptoticallyStable",
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
  "slug": "halfzero-asymptoticallystable--3e0e6101d5ff3f05a1911cc8",
  "source": {
    "blob": "6a3874ad4ee8e3b2ab501b398030b231948c6e61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 260,
    "path": "GRWTSK/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e0e6101d5ff3f05a1911cc88e1eb70beb1057306305ade7a891ab4996d09a81",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:beba537b-433d-e5c6-e9f5-d9fa67b0d5ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halfZero_asymptoticallyStable :
    IsLocallyAsymptoticallyStable halfOperator halfZero := by
  letI : CompleteSpace halfOperator.domain :=
    isClosed_univ.completeSpace_coe
  exact ⟨halfZero_lyapunovCertificate.isLyapunovStable,
    isLocallyAttractive_of_contraction
      halfZero half_step_contracting⟩

/-- A concrete low-residual observation that is not an exact fixed point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a3874ad4ee8e3b2ab501b398030b231948c6e61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
