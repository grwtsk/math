# discreteTopology_iff_orderTopology_of_pred_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e66f6959-7838-dbc0-0ccc-3d0722eb4cce",
  "kind": "theorem",
  "lexical_name": "discreteTopology_iff_orderTopology_of_pred_succ",
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
  "slug": "discretetopology-iff-ordertopology-of-pred-succ--5269eb6ea6bc13e47c1715d6",
  "source": {
    "blob": "cc2ea58632e795f6e9ab23908fb3a7c864441766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 62,
    "path": "GRWTSK/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5269eb6ea6bc13e47c1715d69f72d98608c44cf931e5da627c57d004968af593",
  "verification": {
    "reference": "docs/verification/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e66f6959-7838-dbc0-0ccc-3d0722eb4cce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discreteTopology_iff_orderTopology_of_pred_succ [LinearOrder α] [PredOrder α]
    [SuccOrder α] : DiscreteTopology α ↔ OrderTopology α := by
  refine ⟨fun h ↦ ⟨?_⟩, fun h ↦ .of_predOrder_succOrder⟩
  rw [h.eq_bot, LinearOrder.bot_topologicalSpace_eq_preorderTopology]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Discrete/Variant2854e814821cbb9b7da39803bed536f2e636e6da73a18be3974e61ecaa5f8f1b.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc2ea58632e795f6e9ab23908fb3a7c864441766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
