# weightedCorrelation_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fc0bdad-ef7a-109d-2e2e-e2bf9b32cb3b",
  "kind": "theorem",
  "lexical_name": "weightedCorrelation_integrable",
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
  "slug": "weightedcorrelation-integrable--2165e2951ae8766ae766c0c7",
  "source": {
    "blob": "7f4574fa3955517ff332132612a36683cf6e89a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 351,
    "path": "GRWTSK/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantbeeb1841c0d622174a463d5ba9bc0895358e7ab6bfdf5bc340fc898c45975c96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2165e2951ae8766ae766c0c7f92890acfec3dd00f454114c0540caa3a2de8b01",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantbeeb1841c0d622174a463d5ba9bc0895358e7ab6bfdf5bc340fc898c45975c96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fc0bdad-ef7a-109d-2e2e-e2bf9b32cb3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedCorrelation_integrable
    (A : ℝ) (hA : 1 ≤ A) :
    Integrable (weightedCorrelation A) :=
  (weightedCorrelation_contDiff A hA).continuous.integrable_of_hasCompactSupport
      (weightedCorrelation_hasCompactSupport A hA)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantbeeb1841c0d622174a463d5ba9bc0895358e7ab6bfdf5bc340fc898c45975c96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantbeeb1841c0d622174a463d5ba9bc0895358e7ab6bfdf5bc340fc898c45975c96.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f4574fa3955517ff332132612a36683cf6e89a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
