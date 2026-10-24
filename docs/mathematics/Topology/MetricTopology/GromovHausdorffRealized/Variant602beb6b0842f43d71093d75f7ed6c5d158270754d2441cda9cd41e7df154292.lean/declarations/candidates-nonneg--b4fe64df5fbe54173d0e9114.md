# candidates_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:266019f1-f095-9e81-be3c-40f1c4c4e127",
  "kind": "theorem",
  "lexical_name": "candidates_nonneg",
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
  "slug": "candidates-nonneg--b4fe64df5fbe54173d0e9114",
  "source": {
    "blob": "67f72d8b0c77b568d35ae990958bc3d1839de598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 128,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4fe64df5fbe54173d0e911401e002589b7d8b071613eef22a37a8d07e230ade",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:266019f1-f095-9e81-be3c-40f1c4c4e127`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem candidates_nonneg (fA : f ∈ candidates X Y) : 0 ≤ f (x, y) := by
  have : 0 ≤ 2 * f (x, y) :=
    calc
      0 = f (x, x) := (candidates_refl fA).symm
      _ ≤ f (x, y) + f (y, x) := candidates_triangle fA
      _ = f (x, y) + f (x, y) := by rw [candidates_symm fA]
      _ = 2 * f (x, y) := by ring
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67f72d8b0c77b568d35ae990958bc3d1839de598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
