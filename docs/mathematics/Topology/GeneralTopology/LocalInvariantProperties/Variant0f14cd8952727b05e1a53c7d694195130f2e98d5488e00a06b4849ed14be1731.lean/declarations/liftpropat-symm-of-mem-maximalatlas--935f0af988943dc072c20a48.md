# liftPropAt_symm_of_mem_maximalAtlas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a66e4adeee7c4c3f5627f275887e818099cff6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 490,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f14cd8952727b05e1a53c7d694195130f2e98d5488e00a06b4849ed14be1731.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f79f4ee3-8e33-94dd-62c7-0b73babd9c6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c869476-aebd-8b83-8165-227796983c84",
  "kind": "theorem",
  "lexical_name": "liftPropAt_symm_of_mem_maximalAtlas",
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
  "slug": "liftpropat-symm-of-mem-maximalatlas--935f0af988943dc072c20a48",
  "source": {
    "blob": "6a66e4adeee7c4c3f5627f275887e818099cff6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 490,
    "path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant0f14cd8952727b05e1a53c7d694195130f2e98d5488e00a06b4849ed14be1731.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:935f0af988943dc072c20a48ac358a42e46c0aa232dd95d88d117d8eb679de93",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalInvariantProperties/Variant0f14cd8952727b05e1a53c7d694195130f2e98d5488e00a06b4849ed14be1731.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c869476-aebd-8b83-8165-227796983c84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftPropAt_symm_of_mem_maximalAtlas [HasGroupoid M G] {x : H}
    (hG : G.LocalInvariantProp G Q) (hQ : ∀ y, Q id univ y) (he : e ∈ maximalAtlas M G)
    (hx : x ∈ e.target) : LiftPropAt Q e.symm x := by
  suffices h : Q (e ∘ e.symm) univ x
  · have : e.symm x ∈ e.source := by simp only [hx, mfld_simps]
    rw [LiftPropAt, hG.liftPropWithinAt_indep_chart G.id_mem_maximalAtlas (mem_univ _) he this]
    refine' ⟨(e.symm.continuousAt hx).continuousWithinAt, _⟩
    simp only [h, mfld_simps]
  exact hG.congr' (e.eventually_right_inverse hx) (hQ x)
#align structure_groupoid.local_invariant_prop.lift_prop_at_symm_of_mem_maximal_atlas StructureGroupoid.LocalInvariantProp.liftPropAt_symm_of_mem_maximalAtlas

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalInvariantProperties/Variant0f14cd8952727b05e1a53c7d694195130f2e98d5488e00a06b4849ed14be1731.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant0f14cd8952727b05e1a53c7d694195130f2e98d5488e00a06b4849ed14be1731.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a66e4adeee7c4c3f5627f275887e818099cff6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
