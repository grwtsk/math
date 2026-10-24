# bot_topologicalSpace_eq_generateFrom_of_pred_succOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fa76149-7663-52be-2ff6-8a44ed341f0c",
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
  "slug": "bot-topologicalspace-eq-generatefrom-of-pred-succorder--6e4b789d6f6cc50053493803",
  "source": {
    "blob": "78cd887693d5aa55cc26a253cc4bdb9f4e157f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 53,
    "path": "GRWTSK/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e4b789d6f6cc50053493803a347eec7c8d7f28db1577160881ad1ae5b837c6b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fa76149-7663-52be-2ff6-8a44ed341f0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–67.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78cd887693d5aa55cc26a253cc4bdb9f4e157f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
