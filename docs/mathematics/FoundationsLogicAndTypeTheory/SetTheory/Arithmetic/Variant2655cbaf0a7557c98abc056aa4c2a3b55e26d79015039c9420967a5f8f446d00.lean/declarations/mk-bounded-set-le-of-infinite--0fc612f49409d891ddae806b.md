# mk_bounded_set_le_of_infinite

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
      "line": 765,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f96527b1-c8f6-2c94-d92a-a06bc0439125",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c706d59-2670-5c6b-b600-5a161021e157",
  "kind": "theorem",
  "lexical_name": "mk_bounded_set_le_of_infinite",
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
  "slug": "mk-bounded-set-le-of-infinite--0fc612f49409d891ddae806b",
  "source": {
    "blob": "3e980f7daf72048a53f496a7a7028e4566d76fba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 797,
    "line": 765,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fc612f49409d891ddae806b26cf0e131a209cf29b9c439ae525b28f33042cc0",
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

Occurrence: `result:9c706d59-2670-5c6b-b600-5a161021e157`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 765–797.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_bounded_set_le_of_infinite (α : Type u) [Infinite α] (c : Cardinal) :
    #{ t : Set α // #t ≤ c } ≤ #α ^ c := by
  rw [← add_one_eq (aleph0_le_mk α)]
  induction c using Cardinal.inductionOn with | _ β
  fapply mk_le_of_surjective
  · intro f
    use Sum.inl ⁻¹' range f
    refine le_trans (mk_preimage_of_injective _ _ fun x y => Sum.inl.inj) ?_
    apply mk_range_le
  rintro ⟨s, ⟨g⟩⟩
  classical
  use fun y => if h : ∃ x : s, g x = y then Sum.inl (Classical.choose h).val
               else Sum.inr (ULift.up 0)
  apply Subtype.ext; ext x
  constructor
  · rintro ⟨y, h⟩
    dsimp only at h
    by_cases h' : ∃ z : s, g z = y
    · rw [dite_eq_left h'] at h
      cases Sum.inl.inj h
      exact (Classical.choose h').2
    · rw [dite_eq_right h'] at h
      cases h
  · intro h
    have : ∃ z : s, g z = g ⟨x, h⟩ := ⟨⟨x, h⟩, rfl⟩
    use g ⟨x, h⟩
    dsimp only
    rw [dite_eq_left this]
    congr
    suffices Classical.choose this = ⟨x, h⟩ from congr_arg Subtype.val this
    apply g.2
    exact Classical.choose_spec this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean#L765).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e980f7daf72048a53f496a7a7028e4566d76fba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
