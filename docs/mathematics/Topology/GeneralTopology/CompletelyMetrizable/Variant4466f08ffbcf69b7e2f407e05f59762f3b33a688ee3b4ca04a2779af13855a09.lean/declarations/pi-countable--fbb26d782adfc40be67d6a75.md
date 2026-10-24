# pi_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b1d06144a72ff9d74cd1474b656c5a0271b8335d1e71d4a8be7c4b88ccc4105",
  "kind": "instance",
  "lexical_name": "pi_countable",
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
  "slug": "pi-countable--fbb26d782adfc40be67d6a75",
  "source": {
    "blob": "6745cb7148bfc2e24d8036d85d85d311c308a2b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 228,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variant4466f08ffbcf69b7e2f407e05f59762f3b33a688ee3b4ca04a2779af13855a09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbb26d782adfc40be67d6a75b5e3ba824d47a1a86e3192a5e1cf8828652ebc4f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompletelyMetrizable/Variant4466f08ffbcf69b7e2f407e05f59762f3b33a688ee3b4ca04a2779af13855a09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b1d06144a72ff9d74cd1474b656c5a0271b8335d1e71d4a8be7c4b88ccc4105`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pi_countable {ι : Type*} [Countable ι] {X : ι → Type*} [∀ i, TopologicalSpace (X i)]
    [∀ i, IsCompletelyMetrizableSpace (X i)] : IsCompletelyMetrizableSpace (Π i, X i) := by
  let := fun i ↦ upgradeIsCompletelyMetrizable (X i)
  infer_instance

/-- A disjoint union of completely metrizable spaces is completely metrizable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyMetrizable/Variant4466f08ffbcf69b7e2f407e05f59762f3b33a688ee3b4ca04a2779af13855a09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variant4466f08ffbcf69b7e2f407e05f59762f3b33a688ee3b4ca04a2779af13855a09.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6745cb7148bfc2e24d8036d85d85d311c308a2b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
