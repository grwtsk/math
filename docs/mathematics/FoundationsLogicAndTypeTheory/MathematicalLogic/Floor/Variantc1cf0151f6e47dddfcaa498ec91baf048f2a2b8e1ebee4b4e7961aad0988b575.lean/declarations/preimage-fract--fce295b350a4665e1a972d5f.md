# preimage_fract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83480b78d40f711d6cd5d98414a5a6a621ecf0f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1058,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1cf0151f6e47dddfcaa498ec91baf048f2a2b8e1ebee4b4e7961aad0988b575.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16fb82f0-5fa3-8e13-d7b3-da1cd70f13c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86921f1f-b98b-2451-369e-5ae18a32b9ee",
  "kind": "theorem",
  "lexical_name": "preimage_fract",
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
  "slug": "preimage-fract--fce295b350a4665e1a972d5f",
  "source": {
    "blob": "83480b78d40f711d6cd5d98414a5a6a621ecf0f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1067,
    "line": 1058,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Floor/Variantc1cf0151f6e47dddfcaa498ec91baf048f2a2b8e1ebee4b4e7961aad0988b575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fce295b350a4665e1a972d5f90e0cc4b170d781739e288fbf98e5bd5a39f238a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Floor/Variantc1cf0151f6e47dddfcaa498ec91baf048f2a2b8e1ebee4b4e7961aad0988b575.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86921f1f-b98b-2451-369e-5ae18a32b9ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1058–1067.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_fract (s : Set α) :
    fract ⁻¹' s = ⋃ m : ℤ, (fun x => x - (m:α)) ⁻¹' (s ∩ Ico (0 : α) 1) := by
  ext x
  simp only [mem_preimage, mem_iUnion, mem_inter_iff]
  refine' ⟨fun h => ⟨⌊x⌋, h, fract_nonneg x, fract_lt_one x⟩, _⟩
  rintro ⟨m, hms, hm0, hm1⟩
  obtain rfl : ⌊x⌋ = m := floor_eq_iff.2 ⟨sub_nonneg.1 hm0, sub_lt_iff_lt_add'.1 hm1⟩
  exact hms
#align int.preimage_fract Int.preimage_fract

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Floor/Variantc1cf0151f6e47dddfcaa498ec91baf048f2a2b8e1ebee4b4e7961aad0988b575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Floor/Variantc1cf0151f6e47dddfcaa498ec91baf048f2a2b8e1ebee4b4e7961aad0988b575.lean#L1058).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83480b78d40f711d6cd5d98414a5a6a621ecf0f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
