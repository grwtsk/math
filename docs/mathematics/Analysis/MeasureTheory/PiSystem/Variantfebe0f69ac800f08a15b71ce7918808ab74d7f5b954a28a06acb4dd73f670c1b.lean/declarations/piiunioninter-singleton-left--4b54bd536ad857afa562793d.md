# piiUnionInter_singleton_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27d560a2-ce88-f8ff-2335-c9a461200fe8",
  "kind": "theorem",
  "lexical_name": "piiUnionInter_singleton_left",
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
  "slug": "piiunioninter-singleton-left--4b54bd536ad857afa562793d",
  "source": {
    "blob": "3f58d006d5570e35dfb85d57c9a3424fd85c5b0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 417,
    "path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b54bd536ad857afa562793d14f35957e382e0c550ba73be859752c06280ee02",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27d560a2-ce88-f8ff-2335-c9a461200fe8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem piiUnionInter_singleton_left (s : ι → Set α) (S : Set ι) :
    piiUnionInter (fun i => ({s i} : Set (Set α))) S =
      { s' : Set α | ∃ (t : Finset ι) (_ : ↑t ⊆ S), s' = ⋂ i ∈ t, s i } := by
  ext1 s'
  simp_rw [piiUnionInter, Set.mem_singleton_iff, exists_prop, Set.mem_setOf_eq]
  refine' ⟨fun h => _, fun ⟨t, htS, h_eq⟩ => ⟨t, htS, s, fun _ _ => rfl, h_eq⟩⟩
  obtain ⟨t, htS, f, hft_eq, rfl⟩ := h
  refine' ⟨t, htS, _⟩
  congr! 3
  apply hft_eq
  assumption
#align pi_Union_Inter_singleton_left piiUnionInter_singleton_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f58d006d5570e35dfb85d57c9a3424fd85c5b0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
