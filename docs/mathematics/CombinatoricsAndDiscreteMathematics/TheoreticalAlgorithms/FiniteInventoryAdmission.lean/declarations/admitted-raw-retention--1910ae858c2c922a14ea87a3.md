# admitted_raw_retention

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2766654d41cae1efbcc98c39867930654a3b347e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 373,
      "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteInventoryAdmission.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b788d24d-3c42-4691-9a5e-7df77bbfcd43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05fb06fe-7358-c931-8693-b15b8f44ceb0",
  "kind": "theorem",
  "lexical_name": "admitted_raw_retention",
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
  "slug": "admitted-raw-retention--1910ae858c2c922a14ea87a3",
  "source": {
    "blob": "2766654d41cae1efbcc98c39867930654a3b347e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 373,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteInventoryAdmission.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1910ae858c2c922a14ea87a3b301f5dc08ae3a96d5239222593fd6cd6679d003",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteInventoryAdmission.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05fb06fe-7358-c931-8693-b15b8f44ceb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem admitted_raw_retention {capture : Capture}
    (maps : CanonicalFileMaps capture) (checked : admissionCheck capture = true)
    {route : RawRoute} (member : route ∈ (frozen capture).raw) :
    4 ≤ route.binding.sourceSet ∧
      sourceSlot (readSets (frozen capture)) route.binding =
        sourceSlot (readSets (frozen capture)) ⟨3, route.retainedPath, route.binding.area, route.binding.target⟩ ∧
      (sourceSlot (readSets (frozen capture)) route.binding).isSome = true := by
  obtain ⟨index, batch, file, _, selected, fileMember, rfl⟩ := raw_route_witness member
  have batchMember := List.mem_of_getElem? selected
  have checks := ((admissionCheck_exact _).mp checked).2.2.2.2.1 batch batchMember
  obtain ⟨label, found, retained⟩ := (rawRetention_exact _ _).mp checks.2 file fileMember
  have canonical := maps (readSet batch.captured) (by
    apply List.mem_append_right
    exact List.mem_map.mpr ⟨batch.captured, List.mem_map.mpr ⟨batch, batchMember, rfl⟩, rfl⟩)
  have ordered : (batch.captured.files.map Prod.fst).Nodup := by
    exact sorted_strings_nodup canonical
  have sourceFound := slot_of_unique_member ordered fileMember
  have getSet : (readSets (frozen capture))[index + 4]? = some (readSet batch.captured) := by
    simpa [readSets, frozen] using congrArg (Option.map (readSet ∘ RawBatch.captured)) selected
  have sourceExact : sourceSlot (readSets (frozen capture))
      ⟨index + 4, file.1, 1, "raw/" ++ batch.expected.inventoryLabel ++ "/" ++ file.1⟩ = some file.2 := by
    simp only [sourceSlot, getSet]
    exact sourceFound
  refine ⟨by simp, ?_, by simp [sourceExact]⟩
  rw [sourceExact]
  simp [sourceSlot, retainedLabel, found, readSets, frozen, readSet, retained]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteInventoryAdmission.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteInventoryAdmission.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2766654d41cae1efbcc98c39867930654a3b347e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
