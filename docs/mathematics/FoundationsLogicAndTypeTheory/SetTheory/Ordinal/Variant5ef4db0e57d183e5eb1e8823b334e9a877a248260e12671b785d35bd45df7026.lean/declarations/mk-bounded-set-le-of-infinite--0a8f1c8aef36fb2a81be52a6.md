# mk_bounded_set_le_of_infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04a7faba-fc62-ef35-1b3c-962482e2cdee",
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
  "slug": "mk-bounded-set-le-of-infinite--0a8f1c8aef36fb2a81be52a6",
  "source": {
    "blob": "d113b35b3d19c5d27cea94671fea561b0543b5e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1124,
    "line": 1091,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a8f1c8aef36fb2a81be52a6986fd8cd1868045a48c42d5b3a49136e59d892dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04a7faba-fc62-ef35-1b3c-962482e2cdee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1091–1124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_bounded_set_le_of_infinite (α : Type u) [Infinite α] (c : Cardinal) :
    #{ t : Set α // #t ≤ c } ≤ #α ^ c := by
  refine' le_trans _ (by rw [← add_one_eq (aleph0_le_mk α)])
  induction' c using Cardinal.inductionOn with β
  fapply mk_le_of_surjective
  · intro f
    use Sum.inl ⁻¹' range f
    refine' le_trans (mk_preimage_of_injective _ _ fun x y => Sum.inl.inj) _
    apply mk_range_le
  rintro ⟨s, ⟨g⟩⟩
  use fun y => if h : ∃ x : s, g x = y then Sum.inl (Classical.choose h).val
               else Sum.inr (ULift.up 0)
  apply Subtype.eq; ext x
  constructor
  · rintro ⟨y, h⟩
    dsimp only at h
    by_cases h' : ∃ z : s, g z = y
    · rw [dif_pos h'] at h
      cases Sum.inl.inj h
      exact (Classical.choose h').2
    · rw [dif_neg h'] at h
      cases h
  · intro h
    have : ∃ z : s, g z = g ⟨x, h⟩ := ⟨⟨x, h⟩, rfl⟩
    use g ⟨x, h⟩
    dsimp only
    rw [dif_pos this]
    congr
    suffices : Classical.choose this = ⟨x, h⟩
    exact congr_arg Subtype.val this
    apply g.2
    exact Classical.choose_spec this
#align cardinal.mk_bounded_set_le_of_infinite Cardinal.mk_bounded_set_le_of_infinite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean#L1091).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d113b35b3d19c5d27cea94671fea561b0543b5e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
