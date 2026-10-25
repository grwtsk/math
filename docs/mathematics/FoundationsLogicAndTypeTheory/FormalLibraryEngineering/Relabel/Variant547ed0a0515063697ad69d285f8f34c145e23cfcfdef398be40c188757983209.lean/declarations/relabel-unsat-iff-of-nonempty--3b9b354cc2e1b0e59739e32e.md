# relabel_unsat_iff_of_Nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "834745e4d18aa0ea2b5ed547818475c007f99fcf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/547ed0a0515063697ad69d285f8f34c145e23cfcfdef398be40c188757983209.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37fb295e-99f4-404f-4828-b84ecc1109bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a81ba091-7da1-2424-ab80-10a6d88153c1",
  "kind": "theorem",
  "lexical_name": "relabel_unsat_iff_of_Nonempty",
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
  "slug": "relabel-unsat-iff-of-nonempty--3b9b354cc2e1b0e59739e32e",
  "source": {
    "blob": "834745e4d18aa0ea2b5ed547818475c007f99fcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relabel/Variant547ed0a0515063697ad69d285f8f34c145e23cfcfdef398be40c188757983209.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b9b354cc2e1b0e59739e32e531b466fce26a565316240f347dd2e3a4043222e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relabel/Variant547ed0a0515063697ad69d285f8f34c145e23cfcfdef398be40c188757983209.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a81ba091-7da1-2424-ab80-10a6d88153c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relabel_unsat_iff_of_Nonempty [Nonempty α] {aig : AIG α} {r : α → β} {hidx1} {hidx2}
    (hinj : ∀ x y, x ∈ aig → y ∈ aig → r x = r y → x = y) :
    (aig.relabel r).UnsatAt idx invert hidx1 ↔ aig.UnsatAt idx invert hidx2 := by
  constructor
  · intro h assign
    let g : β → α := fun b =>
      have em := Classical.propDecidable
      if h : ∃ a, a ∈ aig ∧ r a = b then h.choose else Classical.choice inferInstance
    have h' := unsat_relabel g h
    specialize h' assign
    simp only [denote_relabel] at h'
    rw [← h']
    apply denote_congr
    · intro a hmem
      simp only [Function.comp_apply, g]
      split
      next h =>
        rcases Exists.choose_spec h with ⟨_, heq⟩
        specialize hinj _ _ (by assumption) (by assumption) heq
        simp [hinj]
      next h =>
        simp only [not_exists, not_and] at h
        specialize h a hmem
        contradiction
  · apply unsat_relabel

/--
`relabel` preserves unsatisfiablility.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relabel/Variant547ed0a0515063697ad69d285f8f34c145e23cfcfdef398be40c188757983209.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relabel/Variant547ed0a0515063697ad69d285f8f34c145e23cfcfdef398be40c188757983209.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `834745e4d18aa0ea2b5ed547818475c007f99fcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
