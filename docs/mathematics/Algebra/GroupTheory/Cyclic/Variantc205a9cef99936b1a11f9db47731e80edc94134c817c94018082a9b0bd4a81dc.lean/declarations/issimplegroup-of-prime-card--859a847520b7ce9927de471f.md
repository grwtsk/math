# isSimpleGroup_of_prime_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb93a05c1b79c927c778756bad363f3dd5d0d421",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 431,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:165ae67b-d294-5967-4de9-959bd5b5252a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17e3c547-227a-bf7f-ddd1-b8727f7d448d",
  "kind": "theorem",
  "lexical_name": "isSimpleGroup_of_prime_card",
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
  "slug": "issimplegroup-of-prime-card--859a847520b7ce9927de471f",
  "source": {
    "blob": "cb93a05c1b79c927c778756bad363f3dd5d0d421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 431,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:859a847520b7ce9927de471fc81f01f2b9e39c9e743d3edd7942905d1df9b821",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17e3c547-227a-bf7f-ddd1-b8727f7d448d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSimpleGroup_of_prime_card {α : Type u} [Group α] [Fintype α] {p : ℕ} [hp : Fact p.Prime]
    (h : Fintype.card α = p) : IsSimpleGroup α :=
  have : Nontrivial α := by
    have h' := Nat.Prime.one_lt (Fact.out (p := p.Prime))
    rw [← h] at h'
    exact Fintype.one_lt_card_iff_nontrivial.1 h'
  ⟨fun H _ => by
    classical
      have hcard := card_subgroup_dvd_card H
      rw [h, dvd_prime (Fact.out (p := p.Prime))] at hcard
      refine' hcard.imp (fun h1 => _) fun hp => _
      · haveI := Fintype.card_le_one_iff_subsingleton.1 (le_of_eq h1)
        apply eq_bot_of_subsingleton
      · exact eq_top_of_card_eq _ (hp.trans h.symm)⟩
#align is_simple_group_of_prime_card isSimpleGroup_of_prime_card
#align is_simple_add_group_of_prime_card isSimpleAddGroup_of_prime_card

end Cyclic

section QuotientCenter

open Subgroup

variable {G : Type*} {H : Type*} [Group G] [Group H]

/-- A group is commutative if the quotient by the center is cyclic.
  Also see `commGroup_of_cycle_center_quotient` for the `CommGroup` instance. -/
@[to_additive commutative_of_add_cyclic_center_quotient
      "A group is commutative if the quotient by the center is cyclic.
      Also see `addCommGroup_of_cycle_center_quotient` for the `AddCommGroup` instance."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb93a05c1b79c927c778756bad363f3dd5d0d421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
