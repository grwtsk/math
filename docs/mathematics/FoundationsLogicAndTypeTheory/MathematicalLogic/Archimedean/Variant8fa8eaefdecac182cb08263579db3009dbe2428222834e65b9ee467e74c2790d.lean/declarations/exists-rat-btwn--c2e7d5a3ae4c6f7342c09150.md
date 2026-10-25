# exists_rat_btwn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1be8b68f-ff1d-44c7-5ee5-16423e3ec1e8",
  "kind": "theorem",
  "lexical_name": "exists_rat_btwn",
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
  "slug": "exists-rat-btwn--c2e7d5a3ae4c6f7342c09150",
  "source": {
    "blob": "fd1dfc6934599b13c1edfd27be3ecb0ee67b2833",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 271,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2e7d5a3ae4c6f7342c091503eb9cfa172ea966df4178d1c0b22042231ad20ec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1be8b68f-ff1d-44c7-5ee5-16423e3ec1e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_rat_btwn {x y : α} (h : x < y) : ∃ q : ℚ, x < q ∧ (q : α) < y := by
  cases' exists_nat_gt (y - x)⁻¹ with n nh
  cases' exists_floor (x * n) with z zh
  refine' ⟨(z + 1 : ℤ) / n, _⟩
  have n0' := (inv_pos.2 (sub_pos.2 h)).trans nh
  have n0 := Nat.cast_pos.1 n0'
  rw [Rat.cast_div_of_ne_zero, Rat.cast_coe_nat, Rat.cast_coe_int, div_lt_iff n0']
  refine' ⟨(lt_div_iff n0').2 <| (lt_iff_lt_of_le_iff_le (zh _)).1 (lt_add_one _), _⟩
  rw [Int.cast_add, Int.cast_one]
  refine' lt_of_le_of_lt (add_le_add_right ((zh _).1 le_rfl) _) _
  rwa [← lt_sub_iff_add_lt', ← sub_mul, ← div_lt_iff' (sub_pos.2 h), one_div]
  · rw [Rat.coe_int_den, Nat.cast_one]
    exact one_ne_zero
  · intro H
    rw [Rat.coe_nat_num, Int.cast_ofNat, Nat.cast_eq_zero] at H
    subst H
    cases n0
  · rw [Rat.coe_nat_den, Nat.cast_one]
    exact one_ne_zero
#align exists_rat_btwn exists_rat_btwn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd1dfc6934599b13c1edfd27be3ecb0ee67b2833` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
