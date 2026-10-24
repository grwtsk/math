# LinearOrder.bot_topologicalSpace_eq_generateFrom

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
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:701783c0-8bc1-a39e-886f-f38ca46ff458",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:431c2e3f-108a-6b45-20d1-3b42c97ea390",
  "kind": "theorem",
  "lexical_name": "LinearOrder.bot_topologicalSpace_eq_generateFrom",
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
  "slug": "linearorder-bot-topologicalspace-eq-generatefrom--5d634c100b5a4adc5e5313cf",
  "source": {
    "blob": "6ab0819eb4d678dc74b06f8bec6bf2c6fbfdd503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d634c100b5a4adc5e5313cf8511835d9a836cb6bd146bcc2733dc65e932daaf",
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

Occurrence: `result:431c2e3f-108a-6b45-20d1-3b42c97ea390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearOrder.bot_topologicalSpace_eq_generateFrom [LinearOrder α] [PredOrder α]
    [SuccOrder α] : (⊥ : TopologicalSpace α) = generateFrom { s | ∃ a, s = Ioi a ∨ s = Iio a } := by
  refine' (eq_bot_of_singletons_open fun a => _).symm
  have h_singleton_eq_inter : {a} = Iic a ∩ Ici a := by rw [inter_comm, Ici_inter_Iic, Icc_self a]
  by_cases ha_top : IsTop a
  · rw [ha_top.Iic_eq, inter_comm, inter_univ] at h_singleton_eq_inter
    by_cases ha_bot : IsBot a
    · rw [ha_bot.Ici_eq] at h_singleton_eq_inter
      rw [h_singleton_eq_inter]
      -- Porting note: Specified instance for `isOpen_univ` explicitly to fix an error.
      apply @isOpen_univ _ (generateFrom { s | ∃ a, s = Ioi a ∨ s = Iio a })
    · rw [isBot_iff_isMin] at ha_bot
      rw [← Ioi_pred_of_not_isMin ha_bot] at h_singleton_eq_inter
      rw [h_singleton_eq_inter]
      exact isOpen_generateFrom_of_mem ⟨pred a, Or.inl rfl⟩
  · rw [isTop_iff_isMax] at ha_top
    rw [← Iio_succ_of_not_isMax ha_top] at h_singleton_eq_inter
    by_cases ha_bot : IsBot a
    · rw [ha_bot.Ici_eq, inter_univ] at h_singleton_eq_inter
      rw [h_singleton_eq_inter]
      exact isOpen_generateFrom_of_mem ⟨succ a, Or.inr rfl⟩
    · rw [isBot_iff_isMin] at ha_bot
      rw [← Ioi_pred_of_not_isMin ha_bot] at h_singleton_eq_inter
      rw [h_singleton_eq_inter]
      -- Porting note: Specified instance for `IsOpen.inter` explicitly to fix an error.
      apply @IsOpen.inter _ _ _ (generateFrom { s | ∃ a, s = Ioi a ∨ s = Iio a })
      · exact isOpen_generateFrom_of_mem ⟨succ a, Or.inr rfl⟩
      · exact isOpen_generateFrom_of_mem ⟨pred a, Or.inl rfl⟩
#align linear_order.bot_topological_space_eq_generate_from LinearOrder.bot_topologicalSpace_eq_generateFrom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ab0819eb4d678dc74b06f8bec6bf2c6fbfdd503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
