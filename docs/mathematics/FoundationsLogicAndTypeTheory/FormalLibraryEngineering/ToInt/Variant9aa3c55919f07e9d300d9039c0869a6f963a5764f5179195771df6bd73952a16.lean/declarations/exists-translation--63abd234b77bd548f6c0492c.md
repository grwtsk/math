# exists_translation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:067534c9-0de1-08d3-ef81-be457d65459d",
  "kind": "theorem",
  "lexical_name": "exists_translation",
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
  "slug": "exists-translation--63abd234b77bd548f6c0492c",
  "source": {
    "blob": "606492d1ae65186fc637645db8b677103f8e62e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63abd234b77bd548f6c0492cf7351027add33e486198505c2efbbbbceafbfb9a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:067534c9-0de1-08d3-ef81-be457d65459d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_translation : ∃ tr : Fin n → ℤ, ∀ i j, val i ≤ val j ↔ tr i ≤ tr j := by
  let li := List.ofFn val
  let sli := li.mergeSort
  have (i : Fin n) : ∃ j : Fin sli.length, sli[j] = val i := by
    apply List.get_of_mem
    rw [List.Perm.mem_iff (List.mergeSort_perm _ _)]
    simp [li]
  use fun i ↦ (this i).choose
  intro i j
  simp only [Fin.getElem_fin, Int.ofNat_le]
  by_cases h_eq : val i = val j
  · simp [h_eq]
  generalize_proofs _ hi hj
  rw [← hi.choose_spec, ← hj.choose_spec] at h_eq
  conv_lhs => rw [← hi.choose_spec, ← hj.choose_spec]
  have := li.pairwise_mergeSort (le := fun a b ↦ decide (a ≤ b))
      (fun a b c ↦ by simpa using le_trans) (by simpa using le_total)
  rw [List.pairwise_iff_get] at this
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · contrapose! h
    exact lt_of_le_of_ne (by simpa using (this hj.choose hi.choose (by simpa)))
      (fun h ↦ h_eq (h.symm))
  · simpa using this hi.choose hj.choose (by apply lt_of_le_of_ne h; contrapose h_eq; simp [h_eq])

/-- Auxiliary definition used by the `order` tactic to transfer facts in a linear order to `ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `606492d1ae65186fc637645db8b677103f8e62e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
