# IsConstructible.induction_of_isTopologicalBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97b75b14b02033ef3d206a9f27720ec1b71f72ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62383858-05ae-fa66-bca6-c78031006d87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71294a79-efee-77c5-df47-c1a399a3f076",
  "kind": "lemma",
  "lexical_name": "IsConstructible.induction_of_isTopologicalBasis",
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
  "slug": "isconstructible-induction-of-istopologicalbasis--22ea9a062463c89a11fa47ba",
  "source": {
    "blob": "97b75b14b02033ef3d206a9f27720ec1b71f72ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 321,
    "path": "GRWTSK/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22ea9a062463c89a11fa47bad96bff2502503b7bc68fe40a9b130bf1545f3269",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71294a79-efee-77c5-df47-c1a399a3f076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsConstructible.induction_of_isTopologicalBasis {ι : Type*} [Nonempty ι] (b : ι → Set X)
    (basis : IsTopologicalBasis (range b)) (isCompact_basis : ∀ i, IsCompact (b i))
    (sdiff : ∀ i s (hs : Set.Finite s), P (b i \ ⋃ j ∈ s, b j)
      (((isCompact_basis _).isConstructible (basis.isOpen ⟨i, rfl⟩)).sdiff <| .biUnion hs fun _ _ ↦
        ((isCompact_basis _).isConstructible (basis.isOpen ⟨_, rfl⟩))))
    (union : ∀ s hs t ht, P s hs → P t ht → P (s ∪ t) (hs.union ht))
    (s : Set X) (hs : IsConstructible s) : P s hs := by
  induction s, hs using BooleanSubalgebra.closure_sdiff_sup_induction with
  | isSublattice =>
    exact ⟨fun s hs t ht ↦ ⟨hs.1.union ht.1, hs.2.union ht.2⟩,
      fun s hs t ht ↦ ⟨hs.1.inter ht.1, hs.2.inter_isOpen ht.2 ht.1⟩⟩
  | bot_mem => exact ⟨isOpen_empty, .empty⟩
  | top_mem => exact ⟨isOpen_univ, .univ⟩
  | sdiff U hU V hV =>
    have := isCompact_open_iff_eq_finite_iUnion_of_isTopologicalBasis _ basis isCompact_basis
    obtain ⟨s, hs, rfl⟩ := (this _).1 ⟨hU.2.isCompact, hU.1⟩
    obtain ⟨t, ht, rfl⟩ := (this _).1 ⟨hV.2.isCompact, hV.1⟩
    simp_rw [iUnion_diff]
    induction s, hs using Set.Finite.induction_on with
    | empty => simpa using sdiff (Classical.arbitrary _) {Classical.arbitrary _}
    | @insert i s hi hs ih =>
      simp_rw [biUnion_insert]
      exact union _ _ _
        (.biUnion hs fun i _ ↦ ((isCompact_basis _).isConstructible (basis.isOpen ⟨i, rfl⟩)).sdiff
          <| .biUnion ht fun j _ ↦ (isCompact_basis _).isConstructible (basis.isOpen ⟨_, rfl⟩))
        (sdiff _ _ ht)
        (ih ⟨isOpen_biUnion fun  _ _ ↦ basis.isOpen ⟨_, rfl⟩, .biUnion hs
          fun i _ ↦ (isCompact_basis _).isRetrocompact (basis.isOpen ⟨i, rfl⟩)⟩)
  | sup s _ t _ hs' ht' => exact union _ _ _ _ hs' ht'

end CompactSpace

/-! ### Locally constructible sets -/

/-- A set in a topological space is locally constructible, if every point has a neighborhood on
which the set is constructible. -/
@[stacks 005G]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97b75b14b02033ef3d206a9f27720ec1b71f72ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
