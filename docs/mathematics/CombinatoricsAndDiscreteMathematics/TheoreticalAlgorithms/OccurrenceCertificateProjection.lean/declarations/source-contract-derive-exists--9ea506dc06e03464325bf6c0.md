# source_contract_derive_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "374c31e159241db17829da6bb77f56606727505e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 663,
      "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OccurrenceCertificateProjection.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe69aa40-356c-2511-6784-d0dd04524309",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c26010ab-cacc-bc2b-b409-e903ac9afde3",
  "kind": "theorem",
  "lexical_name": "source_contract_derive_exists",
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
  "slug": "source-contract-derive-exists--9ea506dc06e03464325bf6c0",
  "source": {
    "blob": "374c31e159241db17829da6bb77f56606727505e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 714,
    "line": 663,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OccurrenceCertificateProjection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ea506dc06e03464325bf6c02e1a4e99dfd58475342605060dc25c3445b23ead",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OccurrenceCertificateProjection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c26010ab-cacc-bc2b-b409-e903ac9afde3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–714.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_contract_derive_exists {input : Frozen} {certificate : RustCertificate}
    (admitted : InputAdmission input) (contract : SourceContract input certificate) :
    ∃ ordered,
      derive input.planLabel input.objects (readSets input) input.raw input.prepared
        input.placeholders input.empty ordered = some ⟨input.planLabel, input.objects, readSets input,
          ⟨projectedEntries input certificate, projectedOutputs certificate⟩⟩ := by
  let entries := projectedEntries input certificate
  let reference := projectedOutputs certificate
  let history := events (readSets input) entries input.placeholders input.empty
  have requested : history.map Event.output ⊆ reference := by
    rw [events_output_rows]
    exact contract.2.2.2.2.2.1
  obtain ⟨merged, mergedExact, _⟩ := mergeOutputs_total_with_reference contract.2.2.1 requested
    (by simp : ([] : List Output) ⊆ reference)
  have initialRecords : records initial.targets = [] := rfl
  rw [← initialRecords] at mergedExact
  obtain ⟨final, ran, rows⟩ := run_of_merge (events_metadata_matches _ _ _ _) mergedExact
  have valid := run_preserves_invariant initial_invariant ran
  have inventory : ∀ row, row ∈ reference ↔ row ∈ records final.targets := by
    intro row
    rw [rows]
    have mergedInventory := mergeOutputs_record_inventory mergedExact row
    have exactRows : row ∈ merged ↔ row ∈ archiveOutputs (readSets input) ∨
        row ∈ (projectedEntries input certificate).map occurrenceOutput ∨
        row ∈ placeholderOutputs input.placeholders input.empty := by
      simpa [initialRecords, history, entries, events_output_rows, or_assoc] using mergedInventory
    exact (contract_output_inventory contract row).trans exactRows.symm
  let ordered := canonicalEnumeration final reference
  have checked : enumerationCheck final ordered = true :=
    canonicalEnumeration_checked valid contract.2.2.1 contract.2.2.2.1 inventory
  let result : Produced := ⟨final.lowered.metadata.filterMap id,
    ordered.map fun row => ⟨row.1.1, row.1.2, targetObject final row.1⟩⟩
  have finished : finish final ordered (slotObject final)
      (markedIndices (final.lowered.routes.map Route.occurrence)) = some result :=
    canonical_finish_exact valid checked
  have outputInventory : ∀ row, row ∈ result.outputs ↔ row ∈ reference := by
    intro row
    apply Iff.trans _ (inventory row).symm
    apply attach_enumeration_inventory valid (enumerationCheck_sound checked).1
    exact attach_enumeration_exact (enumerationCheck_sound checked).1
  obtain ⟨rendered, renderedExact⟩ := renderOutputs_total input.objects result.outputs (by
    intro row member
    simp [contract.2.2.2.2.2.2 row ((outputInventory row).mp member)])
  let derived : Certificate := ⟨input.planLabel, input.objects, readSets input, result⟩
  have accepted : derive input.planLabel input.objects (readSets input) input.raw input.prepared
      input.placeholders input.empty ordered = some derived := by
    apply (derive_spec _ _ _ _ _ _ _ _ _).mpr
    exact ⟨admission_input_check admitted, entries, final, result, contract_exact_collection contract,
      ran, checked, finished, by simp [renderedExact], rfl⟩
  have same := source_contract_derive_correspondence contract accepted
  exact ⟨ordered, same ▸ accepted⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OccurrenceCertificateProjection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OccurrenceCertificateProjection.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `374c31e159241db17829da6bb77f56606727505e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
