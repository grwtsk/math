# bot_topologicalSpace_eq_generateFrom_of_pred_succOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ab0819eb4d678dc74b06f8bec6bf2c6fbfdd503",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94158a78-0df2-cfa0-35a1-66e395496018",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f045bbca-c103-1f0d-86c3-99608450029e",
  "kind": "theorem",
  "lexical_name": "bot_topologicalSpace_eq_generateFrom_of_pred_succOrder",
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
  "slug": "bot-topologicalspace-eq-generatefrom-of-pred-succorder--d9b015325e5a2c5a77977fa3",
  "source": {
    "blob": "6ab0819eb4d678dc74b06f8bec6bf2c6fbfdd503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9b015325e5a2c5a77977fa3b63f73c127f2704d39004af6600c954ac7d2f6f0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f045bbca-c103-1f0d-86c3-99608450029e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bot_topologicalSpace_eq_generateFrom_of_pred_succOrder [PartialOrder α] [PredOrder α]
    [SuccOrder α] [NoMinOrder α] [NoMaxOrder α] :
    (⊥ : TopologicalSpace α) = generateFrom { s | ∃ a, s = Ioi a ∨ s = Iio a } := by
  refine' (eq_bot_of_singletons_open fun a => _).symm
  have h_singleton_eq_inter : {a} = Iio (succ a) ∩ Ioi (pred a) := by
    suffices h_singleton_eq_inter' : {a} = Iic a ∩ Ici a
    · rw [h_singleton_eq_inter', ← Ioi_pred, ← Iio_succ]
    rw [inter_comm, Ici_inter_Iic, Icc_self a]
  rw [h_singleton_eq_inter]
  -- Porting note: Specified instance for `IsOpen.inter` explicitly to fix an error.
  apply @IsOpen.inter _ _ _ (generateFrom { s | ∃ a, s = Ioi a ∨ s = Iio a })
  · exact isOpen_generateFrom_of_mem ⟨succ a, Or.inr rfl⟩
  · exact isOpen_generateFrom_of_mem ⟨pred a, Or.inl rfl⟩
#align bot_topological_space_eq_generate_from_of_pred_succ_order bot_topologicalSpace_eq_generateFrom_of_pred_succOrder

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ab0819eb4d678dc74b06f8bec6bf2c6fbfdd503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
