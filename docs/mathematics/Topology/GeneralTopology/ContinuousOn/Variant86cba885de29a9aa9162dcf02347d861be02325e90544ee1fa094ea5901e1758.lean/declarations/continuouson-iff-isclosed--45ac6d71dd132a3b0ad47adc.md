# continuousOn_iff_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6f70c54-ce3b-67fc-dd77-09c1ef370e59",
  "kind": "theorem",
  "lexical_name": "continuousOn_iff_isClosed",
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
  "slug": "continuouson-iff-isclosed--45ac6d71dd132a3b0ad47adc",
  "source": {
    "blob": "78fa17151b24c9e17a4a36e3393621f136245392",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 157,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant86cba885de29a9aa9162dcf02347d861be02325e90544ee1fa094ea5901e1758.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45ac6d71dd132a3b0ad47adca41d483b5fd7941d1de710f2ebab1b36b555debe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousOn/Variant86cba885de29a9aa9162dcf02347d861be02325e90544ee1fa094ea5901e1758.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6f70c54-ce3b-67fc-dd77-09c1ef370e59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_iff_isClosed :
    ContinuousOn f s ↔ ∀ t : Set β, IsClosed t → ∃ u, IsClosed u ∧ f ⁻¹' t ∩ s = u ∩ s := by
  have : ∀ t, IsClosed (s.domRestrict f ⁻¹' t) ↔ ∃ u : Set α, IsClosed u ∧ f ⁻¹' t ∩ s = u ∩ s := by
    intro t
    rw [isClosed_induced_iff, Set.domRestrict_eq, Set.preimage_comp]
    simp only [Subtype.preimage_coe_eq_preimage_coe_iff, eq_comm, Set.inter_comm s]
  rw [continuousOn_iff_continuous_domRestrict, continuous_iff_isClosed]; simp only [this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousOn/Variant86cba885de29a9aa9162dcf02347d861be02325e90544ee1fa094ea5901e1758.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant86cba885de29a9aa9162dcf02347d861be02325e90544ee1fa094ea5901e1758.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78fa17151b24c9e17a4a36e3393621f136245392` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
