# partialOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bba0e5b6d18389c04ab1c8f2bc5e855352eaabd0c8db795b6f06c9cb803bf3c5",
  "kind": "instance",
  "lexical_name": "partialOrder",
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
  "slug": "partialorder--e1c9a4cbf75291da9a99cbd9",
  "source": {
    "blob": "0818fd284093455ed5b3545c85496fbf1e4e021f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 130,
    "path": "GRWTSK/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1c9a4cbf75291da9a99cbd9fc9d2be66919c17f57790cf644a1ed01a7d69c26",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bba0e5b6d18389c04ab1c8f2bc5e855352eaabd0c8db795b6f06c9cb803bf3c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance partialOrder : PartialOrder (ENormedSpace 𝕜 V) where
  le e₁ e₂ := ∀ x, e₁ x ≤ e₂ x
  le_refl _ _ := le_rfl
  le_trans _ _ _ h₁₂ h₂₃ x := le_trans (h₁₂ x) (h₂₃ x)
  le_antisymm _ _ h₁₂ h₂₁ := ext fun x => le_antisymm (h₁₂ x) (h₂₁ x)

/-- The `ENormedSpace` sending each non-zero vector to infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0818fd284093455ed5b3545c85496fbf1e4e021f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
