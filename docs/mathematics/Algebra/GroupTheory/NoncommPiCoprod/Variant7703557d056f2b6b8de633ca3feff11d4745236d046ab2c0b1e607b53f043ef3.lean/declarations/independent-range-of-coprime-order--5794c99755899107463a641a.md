# independent_range_of_coprime_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33d4b60a80c3869367fa33d7a328c388142cf70b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e19ba959-f056-7580-dfe8-e0fbc42ce35d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed950257-1b4a-0cd6-c95b-3d411dcacdca",
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
  "slug": "independent-range-of-coprime-order--5794c99755899107463a641a",
  "source": {
    "blob": "33d4b60a80c3869367fa33d7a328c388142cf70b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 248,
    "path": "GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5794c99755899107463a641a8ec10f733ea67d67397829610e99b164b1c1550d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed950257-1b4a-0cd6-c95b-3d411dcacdca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem independent_range_of_coprime_order
    (hcomm : Pairwise fun i j : ι => ∀ (x : H i) (y : H j), Commute (ϕ i x) (ϕ j y))
    [Finite ι] [∀ i, Fintype (H i)]
    (hcoprime : Pairwise fun i j => Nat.Coprime (Fintype.card (H i)) (Fintype.card (H j))) :
    iSupIndep fun i => (ϕ i).range := by
  cases nonempty_fintype ι
  letI := Classical.decEq ι
  rintro i
  rw [disjoint_iff_inf_le]
  rintro f ⟨hxi, hxp⟩
  dsimp at hxi hxp
  rw [iSup_subtype', ← noncommPiCoprod_range] at hxp
  rotate_left
  · intro _ _ hj
    apply hcomm
    exact hj ∘ Subtype.ext
  obtain ⟨g, hgf⟩ := hxp
  obtain ⟨g', hg'f⟩ := hxi
  have hxi : orderOf f ∣ Fintype.card (H i) := by
    rw [← hg'f]
    exact (orderOf_map_dvd _ _).trans orderOf_dvd_card
  have hxp : orderOf f ∣ ∏ j : { j // j ≠ i }, Fintype.card (H j) := by
    rw [← hgf, ← Fintype.card_pi]
    exact (orderOf_map_dvd _ _).trans orderOf_dvd_card
  change f = 1
  rw [← pow_one f, ← orderOf_dvd_iff_pow_eq_one]
  obtain ⟨c, hc⟩ := Nat.dvd_gcd hxp hxi
  use c
  rw [← hc]
  symm
  rw [← Nat.coprime_iff_gcd_eq_one, Nat.coprime_fintype_prod_left_iff, Subtype.forall]
  intro j h
  exact hcoprime h

end MonoidHom

end FamilyOfGroups

namespace Subgroup

-- We have a family of subgroups
variable {G : Type*} [Group G]
variable {ι : Type*} {H : ι → Subgroup G}

section CommutingSubgroups

-- We assume that the elements of different subgroups commute
-- with `hcomm : Pairwise fun i j : ι => ∀ x y : G, x ∈ H i → y ∈ H j → Commute x y`

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33d4b60a80c3869367fa33d7a328c388142cf70b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
