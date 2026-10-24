# IsTopologicalBasis.exists_countable_biUnion_of_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a893b2b-0d82-6645-649d-1c32da391d19",
  "kind": "lemma",
  "lexical_name": "IsTopologicalBasis.exists_countable_biUnion_of_isOpen",
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
  "slug": "istopologicalbasis-exists-countable-biunion-of-isopen--8317242ddb24d3ff6c0f6687",
  "source": {
    "blob": "8e32269e1b118c37cde52145c937508870dc9845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1006,
    "line": 983,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variantdb39dd93d59a2b6551de1fb46b607016ac6d15d31f778c600da9d2f486e54fb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8317242ddb24d3ff6c0f668770e8ebf4148f220a4af95c959031ada781f39f1c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variantdb39dd93d59a2b6551de1fb46b607016ac6d15d31f778c600da9d2f486e54fb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a893b2b-0d82-6645-649d-1c32da391d19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 983–1006.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsTopologicalBasis.exists_countable_biUnion_of_isOpen [SecondCountableTopology α]
    {t : Set (Set α)} (ht : IsTopologicalBasis t) {u : Set α} (hu : IsOpen u) :
    ∃ s ⊆ t, s.Countable ∧ u = ⋃ a ∈ s, a := by
  have A : ∀ x ∈ u, ∃ a ∈ t, x ∈ a ∧ a ⊆ u :=
    fun x hx ↦ ht.exists_subset_of_mem_open hx hu
  choose! a hat xa au using A
  obtain ⟨T, T_count, hT⟩ : ∃ T : Set u, T.Countable ∧ ⋃ i ∈ T, a i = ⋃ (i : u), a i := by
    apply isOpen_iUnion_countable _
    rintro ⟨x, hx⟩
    exact ht.isOpen (hat x hx)
  refine ⟨(fun (x : u) ↦ a x) '' T, ?_, T_count.image _, ?_⟩
  · simp only [image_subset_iff]
    rintro ⟨x, xu⟩ -
    exact hat x xu
  rw [biUnion_image, hT]
  apply Subset.antisymm
  · intro x hx
    simp
    grind
  · simp
    grind

/-- In a second countable topological space, any topological basis contains a countable subset
which is also a topological basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variantdb39dd93d59a2b6551de1fb46b607016ac6d15d31f778c600da9d2f486e54fb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variantdb39dd93d59a2b6551de1fb46b607016ac6d15d31f778c600da9d2f486e54fb9.lean#L983).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e32269e1b118c37cde52145c937508870dc9845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
