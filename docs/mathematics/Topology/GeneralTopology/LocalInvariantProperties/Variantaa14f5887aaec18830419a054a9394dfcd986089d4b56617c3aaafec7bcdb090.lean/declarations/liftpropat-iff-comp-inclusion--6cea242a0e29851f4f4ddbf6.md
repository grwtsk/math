# liftPropAt_iff_comp_inclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:317d35fa-702c-be2c-e8cf-800e404eec92",
  "kind": "theorem",
  "lexical_name": "liftPropAt_iff_comp_inclusion",
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
  "slug": "liftpropat-iff-comp-inclusion--6cea242a0e29851f4f4ddbf6",
  "source": {
    "blob": "6dcc53297ebed1d4c965f142c8ee950d34ac461b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 553,
    "path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variantaa14f5887aaec18830419a054a9394dfcd986089d4b56617c3aaafec7bcdb090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cea242a0e29851f4f4ddbf61a54763253f45d09977cb97ba2a6a1e1195bd72d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalInvariantProperties/Variantaa14f5887aaec18830419a054a9394dfcd986089d4b56617c3aaafec7bcdb090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:317d35fa-702c-be2c-e8cf-800e404eec92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftPropAt_iff_comp_inclusion (hG : LocalInvariantProp G G' P) {U V : Opens M} (hUV : U ≤ V)
    (f : V → M') (x : U) :
    LiftPropAt P f (Set.inclusion hUV x) ↔ LiftPropAt P (f ∘ Set.inclusion hUV : U → M') x := by
  congrm ?_ ∧ ?_
  · simp [continuousWithinAt_univ,
      (TopologicalSpace.Opens.openEmbedding_of_le hUV).continuousAt_iff]
  · apply hG.congr_iff
    exact (TopologicalSpace.Opens.chartAt_inclusion_symm_eventuallyEq hUV).fun_comp
      (chartAt H' (f (Set.inclusion hUV x)) ∘ f)
#align structure_groupoid.local_invariant_prop.lift_prop_at_iff_comp_inclusion StructureGroupoid.LocalInvariantProp.liftPropAt_iff_comp_inclusion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalInvariantProperties/Variantaa14f5887aaec18830419a054a9394dfcd986089d4b56617c3aaafec7bcdb090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variantaa14f5887aaec18830419a054a9394dfcd986089d4b56617c3aaafec7bcdb090.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dcc53297ebed1d4c965f142c8ee950d34ac461b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
