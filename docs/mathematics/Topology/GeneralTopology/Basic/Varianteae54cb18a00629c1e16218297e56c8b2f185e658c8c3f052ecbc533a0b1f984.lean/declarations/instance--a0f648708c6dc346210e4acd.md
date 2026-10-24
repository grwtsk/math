# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9cede6f4c4e8b3158d165e82162b5d711d5261e1ec90fbd0bd0ab9731f0bee8",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a0f648708c6dc346210e4acd",
  "source": {
    "blob": "50eaa47f96bf02a56789de54082f86cc4cab3e9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 174,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianteae54cb18a00629c1e16218297e56c8b2f185e658c8c3f052ecbc533a0b1f984.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0f648708c6dc346210e4acded2e697bd7fd9ca35d0e40fe5722f1c3d80e917d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianteae54cb18a00629c1e16218297e56c8b2f185e658c8c3f052ecbc533a0b1f984.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9cede6f4c4e8b3158d165e82162b5d711d5261e1ec90fbd0bd0ab9731f0bee8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (X : Type*) [TopologicalSpace X] [LindelofSpace X] [PseudoMetrizableSpace X] :
    SecondCountableTopology X := by
  let := pseudoMetrizableSpaceUniformity X
  have := pseudoMetrizableSpaceUniformity_countably_generated X
  suffices _ : SeparableSpace X from secondCountable_of_separable X
  obtain ⟨V, hVb, hVs⟩ := has_seq_basis X
  choose U hUc hUu using fun n =>
    LindelofSpace.elim_nhds_subcover (fun x => ball x (V n))
      (fun x => ball_mem_nhds x (hVb.mem n))
  refine ⟨Set.iUnion U, Set.countable_iUnion hUc, fun x => ?_⟩
  rw [mem_closure_iff_frequently, nhds_eq_comap_uniformity, frequently_comap, hVb.frequently_iff]
  intro n _
  obtain ⟨i, hi, hx⟩ := Set.mem_iUnion₂.1 (Set.eq_univ_iff_forall.1 (hUu n) x)
  rw [ball_eq_of_symmetry] at hx
  exact ⟨(x, i), hx, i, rfl, Set.mem_iUnion_of_mem n hi⟩

/-- If a set `s` is separable in a pseudo metrizable space, then it admits a countable dense
subset. This is not obvious, as the countable set whose closure covers `s` given by the definition
of separability does not need in general to be contained in `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianteae54cb18a00629c1e16218297e56c8b2f185e658c8c3f052ecbc533a0b1f984.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianteae54cb18a00629c1e16218297e56c8b2f185e658c8c3f052ecbc533a0b1f984.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50eaa47f96bf02a56789de54082f86cc4cab3e9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
