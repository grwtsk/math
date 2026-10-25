# ciSup_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e980f7daf72048a53f496a7a7028e4566d76fba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 403,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dcadfd90-c785-3630-fdbb-163305ae99ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:564d59b8-46dc-b89e-c4b1-2135f0749b2a",
  "kind": "theorem",
  "lexical_name": "ciSup_mul",
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
  "slug": "cisup-mul--0d245ea4cf175e53363bbeee",
  "source": {
    "blob": "3e980f7daf72048a53f496a7a7028e4566d76fba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 403,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d245ea4cf175e53363bbeee0f0bba62aae479b3cd31bea99ec00a160155396c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:564d59b8-46dc-b89e-c4b1-2135f0749b2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ciSup_mul (c : Cardinal.{v}) : (⨆ i, f i) * c = ⨆ i, f i * c := by
  cases isEmpty_or_nonempty ι; · simp
  obtain rfl | h0 := eq_or_ne c 0; · simp
  by_cases hf : BddAbove (range f); swap
  · have hfc : ¬ BddAbove (range (f · * c)) := fun bdd ↦ hf
      ⟨⨆ i, f i * c, forall_mem_range.mpr fun i ↦ (le_mul_right h0).trans (le_ciSup bdd i)⟩
    simp [iSup, csSup_of_not_bddAbove, hf, hfc]
  have (i : ι) : f i * c ≤ (⨆ i, f i) * c := by grw [← le_ciSup hf i]
  refine le_antisymm ?_ (ciSup_le' this)
  have bdd : BddAbove (range (f · * c)) := ⟨_, forall_mem_range.mpr this⟩
  obtain hs | hs := lt_or_ge (⨆ i, f i) ℵ₀
  · obtain ⟨i, hi⟩ := exists_eq_ciSup_of_not_isSuccLimit hf (not_isSuccLimit_of_lt_aleph0 hs)
    exact hi ▸ le_ciSup bdd i
  rw [mul_eq_max_of_aleph0_le_left hs h0, max_le_iff]
  obtain ⟨i, hi⟩ := exists_lt_of_lt_ciSup' (one_lt_aleph0.trans_le hs)
  exact ⟨ciSup_mono bdd fun i ↦ le_mul_right h0,
    (le_mul_left (zero_lt_one.trans hi).ne').trans (le_ciSup bdd i)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e980f7daf72048a53f496a7a7028e4566d76fba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
