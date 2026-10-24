# finiteSubspace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:304356091f43c1a0da711fa29c9b0b8c3a4dc69cd534aebad1f94cd2f399f101",
  "kind": "def",
  "lexical_name": "finiteSubspace",
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
  "slug": "finitesubspace--52ed9f031535348dd63e8c1f",
  "source": {
    "blob": "0818fd284093455ed5b3545c85496fbf1e4e021f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 201,
    "path": "GRWTSK/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52ed9f031535348dd63e8c1fbdbb91f686381bff2e839b79a142339a384938cc",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:304356091f43c1a0da711fa29c9b0b8c3a4dc69cd534aebad1f94cd2f399f101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteSubspace : Subspace 𝕜 V where
  carrier := { x | e x < ⊤ }
  zero_mem' := by simp
  add_mem' {x y} hx hy := lt_of_le_of_lt (e.map_add_le x y) (ENNReal.add_lt_top.2 ⟨hx, hy⟩)
  smul_mem' c x (hx : _ < _) :=
    calc
      e (c • x) = ‖c‖₊ * e x := e.map_smul c x
      _ < ⊤ := ENNReal.mul_lt_top ENNReal.coe_lt_top hx

/-- Metric space structure on `e.finiteSubspace`. We use `EMetricSpace.toMetricSpace`
to ensure that this definition agrees with `e.emetricSpace`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0818fd284093455ed5b3545c85496fbf1e4e021f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
