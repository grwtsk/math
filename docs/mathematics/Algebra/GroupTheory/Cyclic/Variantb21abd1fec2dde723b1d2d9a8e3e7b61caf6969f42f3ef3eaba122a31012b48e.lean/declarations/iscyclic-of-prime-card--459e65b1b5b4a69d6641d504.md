# isCyclic_of_prime_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cc43473-3b3e-9fd1-e88d-568bea2bdd16",
  "kind": "theorem",
  "lexical_name": "isCyclic_of_prime_card",
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
  "slug": "iscyclic-of-prime-card--459e65b1b5b4a69d6641d504",
  "source": {
    "blob": "ab4df74739cd427e9035d6118afbba657142a311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 123,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:459e65b1b5b4a69d6641d50478a1cf7783750d8748684e33cf3c47d019c06528",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cc43473-3b3e-9fd1-e88d-568bea2bdd16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCyclic_of_prime_card {α : Type u} [Group α] [Fintype α] {p : ℕ} [hp : Fact p.Prime]
    (h : Fintype.card α = p) : IsCyclic α :=
  ⟨by
    obtain ⟨g, hg⟩ : ∃ g : α, g ≠ 1 := Fintype.exists_ne_of_one_lt_card (h.symm ▸ hp.1.one_lt) 1
    classical
      -- for Fintype (Subgroup.zpowers g)
      have : Fintype.card (Subgroup.zpowers g) ∣ p := by
        rw [← h]
        apply card_subgroup_dvd_card
      rw [Nat.dvd_prime hp.1] at this
      cases' this with that that
      · rw [Fintype.card_eq_one_iff] at that
        cases' that with t ht
        suffices g = 1 by contradiction
        have hgt :=
          ht
            ⟨g, by
              change g ∈ Subgroup.zpowers g
              exact Subgroup.mem_zpowers g⟩
        rw [← ht 1] at hgt
        change (⟨_, _⟩ : Subgroup.zpowers g) = ⟨_, _⟩ at hgt
        simpa using hgt
      · use g
        intro x
        rw [← h] at that
        rw [Subgroup.eq_top_of_card_eq _ that]
        exact Subgroup.mem_top _⟩
#align is_cyclic_of_prime_card isCyclic_of_prime_card
#align is_add_cyclic_of_prime_card isAddCyclic_of_prime_card

@[to_additive addOrderOf_eq_card_of_forall_mem_zmultiples]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab4df74739cd427e9035d6118afbba657142a311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
