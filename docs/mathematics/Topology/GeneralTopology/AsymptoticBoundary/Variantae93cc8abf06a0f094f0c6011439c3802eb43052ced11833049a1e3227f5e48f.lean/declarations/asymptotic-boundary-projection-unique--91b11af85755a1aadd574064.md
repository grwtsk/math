# asymptotic_boundary_projection_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "367c4c8bd9cc38ae36a67b6e0e86fffb54173edb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae93cc8abf06a0f094f0c6011439c3802eb43052ced11833049a1e3227f5e48f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08515d5f-20a1-9d1f-a857-0e0247f771a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd98920a-31fe-0553-270a-ea4586743e5f",
  "kind": "theorem",
  "lexical_name": "asymptotic_boundary_projection_unique",
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
  "slug": "asymptotic-boundary-projection-unique--91b11af85755a1aadd574064",
  "source": {
    "blob": "367c4c8bd9cc38ae36a67b6e0e86fffb54173edb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 172,
    "path": "GRWTSK/Topology/GeneralTopology/AsymptoticBoundary/Variantae93cc8abf06a0f094f0c6011439c3802eb43052ced11833049a1e3227f5e48f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91b11af85755a1aadd574064f916beefcf03d5447f711e16ddb892c0a0bf576a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AsymptoticBoundary/Variantae93cc8abf06a0f094f0c6011439c3802eb43052ced11833049a1e3227f5e48f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd98920a-31fe-0553-270a-ea4586743e5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem asymptotic_boundary_projection_unique
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (left right : CertifiedBasinState certificate) :
    asymptoticBoundaryProjection certificate left =
      asymptoticBoundaryProjection certificate right := by
  apply Quotient.sound
  exact all_basin_states_strongly_equivalent left right

end Mathematics.MobiusOntology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AsymptoticBoundary/Variantae93cc8abf06a0f094f0c6011439c3802eb43052ced11833049a1e3227f5e48f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AsymptoticBoundary/Variantae93cc8abf06a0f094f0c6011439c3802eb43052ced11833049a1e3227f5e48f.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `367c4c8bd9cc38ae36a67b6e0e86fffb54173edb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
