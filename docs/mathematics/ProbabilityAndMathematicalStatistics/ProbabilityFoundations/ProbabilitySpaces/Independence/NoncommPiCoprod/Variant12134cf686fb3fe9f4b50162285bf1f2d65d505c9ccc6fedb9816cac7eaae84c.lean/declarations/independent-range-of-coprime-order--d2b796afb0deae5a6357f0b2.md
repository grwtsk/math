# independent_range_of_coprime_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bec1f196e3583436e814144165a09a420e500458",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35de0491-eb69-0379-9d5e-0236b339f9a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9af26134-621f-1c48-709a-78320ad887d1",
  "kind": "theorem",
  "lexical_name": "independent_range_of_coprime_order",
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
  "slug": "independent-range-of-coprime-order--d2b796afb0deae5a6357f0b2",
  "source": {
    "blob": "bec1f196e3583436e814144165a09a420e500458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 235,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2b796afb0deae5a6357f0b2d72b0ab5513718cd81cbe4570f5ad1c27b66bbf2",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9af26134-621f-1c48-709a-78320ad887d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem independent_range_of_coprime_order [Finite ι] [∀ i, Fintype (H i)]
    (hcoprime : ∀ i j, i ≠ j → Nat.coprime (Fintype.card (H i)) (Fintype.card (H j))) :
    CompleteLattice.Independent fun i => (ϕ i).range := by
  cases nonempty_fintype ι
  classical
    rintro i
    rw [disjoint_iff_inf_le]
    rintro f ⟨hxi, hxp⟩
    dsimp at hxi hxp
    rw [iSup_subtype', ← noncommPiCoprod_range] at hxp
    rotate_left
    · intro _ _ hj
      apply hcomm
      exact hj ∘ Subtype.ext
    cases' hxp with g hgf
    cases' hxi with g' hg'f
    have hxi : orderOf f ∣ Fintype.card (H i) := by
      rw [← hg'f]
      exact (orderOf_map_dvd _ _).trans orderOf_dvd_card_univ
    have hxp : orderOf f ∣ ∏ j : { j // j ≠ i }, Fintype.card (H j) := by
      rw [← hgf, ← Fintype.card_pi]
      exact (orderOf_map_dvd _ _).trans orderOf_dvd_card_univ
    change f = 1
    rw [← pow_one f, ← orderOf_dvd_iff_pow_eq_one]
    -- porting note: ouch, had to replace an ugly `convert`
    obtain ⟨c, hc⟩ := Nat.dvd_gcd hxp hxi
    use c
    rw [← hc]
    symm
    rw [← Nat.coprime_iff_gcd_eq_one]
    apply Nat.coprime_prod_left
    intro j _
    apply hcoprime
    exact j.2
#align monoid_hom.independent_range_of_coprime_order MonoidHom.independent_range_of_coprime_order
#align add_monoid_hom.independent_range_of_coprime_order AddMonoidHom.independent_range_of_coprime_order

end MonoidHom

end FamilyOfGroups

namespace Subgroup

-- We have a family of subgroups
variable {G : Type*} [Group G]

variable {ι : Type*} [hdec : DecidableEq ι] [hfin : Fintype ι] {H : ι → Subgroup G}

-- Elements of `Π (i : ι), H i` are called `f` and `g` here
variable (f g : ∀ i : ι, H i)

section CommutingSubgroups

-- We assume that the elements of different subgroups commute
variable (hcomm : ∀ i j : ι, i ≠ j → ∀ x y : G, x ∈ H i → y ∈ H j → Commute x y)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bec1f196e3583436e814144165a09a420e500458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
