# le_or_disjoint_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:419e4e1b-ab03-a5d0-e624-e951ee02fb68",
  "kind": "theorem",
  "lexical_name": "le_or_disjoint_of_coprime",
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
  "slug": "le-or-disjoint-of-coprime--9c0afab21b1761bf7ecf7302",
  "source": {
    "blob": "fd3698d4f1049d776ffb2485c0a03a9ee8e17956",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 320,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c0afab21b1761bf7ecf73025bc9b23925ae8b06375f2b7df37a62c876023eae",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:419e4e1b-ab03-a5d0-e624-e951ee02fb68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_or_disjoint_of_coprime [hp : Fact p.Prime] {P : Subgroup G} (hP : IsPGroup p P)
    {H : Subgroup G} [H.Normal] (h_cop : (Nat.card H).Coprime H.index) :
    P ≤ H ∨ Disjoint H P := by
  by_cases h1 : Nat.card H = 0
  · rw [h1, Nat.coprime_zero_left, Subgroup.index_eq_one] at h_cop
    rw [h_cop]
    exact Or.inl le_top
  by_cases h2 : H.index = 0
  · rw [h2, Nat.coprime_zero_right, Subgroup.card_eq_one] at h_cop
    rw [h_cop]
    exact Or.inr disjoint_bot_left
  have : Finite G := by
    apply Nat.finite_of_card_ne_zero
    rw [← H.card_mul_index]
    exact mul_ne_zero h1 h2
  have h3 : (Nat.card H).Coprime (Nat.card P) ∨ H.index.Coprime (Nat.card P) := by
    obtain ⟨k, hk⟩ := hP.exists_card_eq
    refine hk ▸ Or.imp hp.out.coprime_pow_of_not_dvd hp.out.coprime_pow_of_not_dvd ?_
    contrapose! h_cop
    exact Nat.Prime.not_coprime_iff_dvd.mpr ⟨p, hp.out, h_cop⟩
  refine h3.symm.imp (fun h4 ↦ ?_) (fun h4 ↦ ?_)
  · rw [← Subgroup.relindex_eq_one]
    exact Nat.eq_one_of_dvd_coprimes h4 (H.relindex_dvd_index_of_normal P)
      (Subgroup.relindex_dvd_card H P)
  · exact disjoint_iff.mpr (Subgroup.inf_eq_bot_of_coprime h4)

section P2comm

variable [Fact p.Prime] {n : ℕ}

open Subgroup

/-- The cardinality of the `center` of a `p`-group is `p ^ k` where `k` is positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd3698d4f1049d776ffb2485c0a03a9ee8e17956` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
