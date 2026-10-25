# canonicalEnumeration_checked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "105673657fa98ef916163b9ebcf82c6b86211f43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 632,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/taxonomy/integration/formal/lean/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificateCorrespondence/Basic.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ff47528-c1f4-883c-babe-ce79f2bea742",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3c92ba2-4b4e-4f01-cb51-f3bdbbd9760f",
  "kind": "theorem",
  "lexical_name": "canonicalEnumeration_checked",
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
  "slug": "canonicalenumeration-checked--7eb81337a6c98442884ff6b2",
  "source": {
    "blob": "105673657fa98ef916163b9ebcf82c6b86211f43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 632,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant810681e6d5ac40eee7780224a9a837de464ff3e0a7a748a30bc299ac39ecfb56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7eb81337a6c98442884ff6b204d2cc1e6d431912b25a9ef191e309a553c01c56",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant810681e6d5ac40eee7780224a9a837de464ff3e0a7a748a30bc299ac39ecfb56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3c92ba2-4b4e-4f01-cb51-f3bdbbd9760f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 632–662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalEnumeration_checked {state : Outputs} {reference : List Output}
    (valid : Invariant state) (unique : (reference.map outputKey).Nodup)
    (sorted : (reference.map outputKey).Pairwise targetLess)
    (inventory : ∀ row, row ∈ reference ↔ row ∈ records state.targets) :
    enumerationCheck state (canonicalEnumeration state reference) = true := by
  have keys : (reference.map outputKey).Perm (state.targets.map Prod.fst) := by
    apply (List.perm_ext_iff_of_nodup unique valid.1).mpr
    intro key
    rw [← records_keys]
    constructor
    · intro member
      obtain ⟨row, member, same⟩ := List.mem_map.mp member
      exact List.mem_map.mpr ⟨row, (inventory row).mp member, same⟩
    · intro member
      obtain ⟨row, member, same⟩ := List.mem_map.mp member
      exact List.mem_map.mpr ⟨row, (inventory row).mpr member, same⟩
  have projectedKeys : (canonicalEnumeration state reference).map Prod.fst = reference.map outputKey := by
    simp [canonicalEnumeration, List.map_map, Function.comp_def]
  have sorted' : (reference.map outputKey).Pairwise keyLt := sorted.imp (fun h => h)
  simp only [enumerationCheck, Bool.and_eq_true, decide_eq_true_eq]
  refine ⟨⟨by simpa [projectedKeys] using unique, by simpa [projectedKeys] using keys,
    by simpa [projectedKeys] using sorted'⟩, ?_⟩
  apply List.all_eq_true.mpr
  intro pair member
  obtain ⟨row, present, rfl⟩ := List.mem_map.mp member
  obtain ⟨slot, found⟩ := reference_target_lookup valid inventory present
  simp [targetSlot, found]

/-- Acceptance transports as well as successful-result facts: the finite Lean
producer accepts every admitted source postcondition, with an explicit canonical
enumeration whose values are target slots rather than literal object indices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant810681e6d5ac40eee7780224a9a837de464ff3e0a7a748a30bc299ac39ecfb56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant810681e6d5ac40eee7780224a9a837de464ff3e0a7a748a30bc299ac39ecfb56.lean#L632).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `105673657fa98ef916163b9ebcf82c6b86211f43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
