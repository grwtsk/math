# Filter.tendsto_cocompact_mul_right₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c902c5897534a25d40b45f758545d2c83c46d45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57d96e7684264831a679ad0b1db493723ebca032fba398325c6022bdfcf05526.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09d1285e-e833-89b3-948f-343081b9ddaa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a01c71d2-fb96-c8ee-bfa8-a2e43f530fa3",
  "kind": "theorem",
  "lexical_name": "Filter.tendsto_cocompact_mul_right₀",
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
  "slug": "filter-tendsto-cocompact-mul-right--d3d61520dda5d81ae867b59d",
  "source": {
    "blob": "4c902c5897534a25d40b45f758545d2c83c46d45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant57d96e7684264831a679ad0b1db493723ebca032fba398325c6022bdfcf05526.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3d61520dda5d81ae867b59db93becf4d3a363a224e0b25869675c49ea954df5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant57d96e7684264831a679ad0b1db493723ebca032fba398325c6022bdfcf05526.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a01c71d2-fb96-c8ee-bfa8-a2e43f530fa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.tendsto_cocompact_mul_right₀ [SeparatelyContinuousMul K] {a : K} (ha : a ≠ 0) :
    Filter.Tendsto (fun x : K => x * a) (Filter.cocompact K) (Filter.cocompact K) :=
  Filter.tendsto_cocompact_mul_right (mul_inv_cancel₀ ha)

/-- Compact Hausdorff topological fields are finite. This is not an instance, as it would apply to
every `Finite` goal, causing slowly failing typeclass search in some cases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant57d96e7684264831a679ad0b1db493723ebca032fba398325c6022bdfcf05526.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant57d96e7684264831a679ad0b1db493723ebca032fba398325c6022bdfcf05526.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c902c5897534a25d40b45f758545d2c83c46d45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
