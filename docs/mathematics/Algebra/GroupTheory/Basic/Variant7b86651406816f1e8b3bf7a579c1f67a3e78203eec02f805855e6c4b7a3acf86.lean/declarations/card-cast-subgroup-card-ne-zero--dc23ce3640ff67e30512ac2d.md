# card_cast_subgroup_card_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a672370e-75ea-f817-8f73-aacf7ce212b1",
  "kind": "theorem",
  "lexical_name": "card_cast_subgroup_card_ne_zero",
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
  "slug": "card-cast-subgroup-card-ne-zero--dc23ce3640ff67e30512ac2d",
  "source": {
    "blob": "719e419a79cc536ca864c3bf1e92572c473e8e4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 124,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant7b86651406816f1e8b3bf7a579c1f67a3e78203eec02f805855e6c4b7a3acf86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc23ce3640ff67e30512ac2d3e7e0383e1bafb3250238504d8c5773ec73fa800",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant7b86651406816f1e8b3bf7a579c1f67a3e78203eec02f805855e6c4b7a3acf86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a672370e-75ea-f817-8f73-aacf7ce212b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_cast_subgroup_card_ne_zero [Ring K] [NoZeroDivisors K] [Nontrivial K]
    (G : Subgroup Kˣ) [Fintype G] : (Fintype.card G : K) ≠ 0 := by
  let n := Fintype.card G
  intro nzero
  have ⟨p, char_p⟩ := CharP.exists K
  have hd : p ∣ n := (CharP.cast_eq_zero_iff K p n).mp nzero
  cases CharP.char_is_prime_or_zero K p with
  | inr pzero =>
    exact (Fintype.card_pos).ne' <| Nat.eq_zero_of_zero_dvd <| pzero ▸ hd
  | inl pprime =>
    have fact_pprime := Fact.mk pprime
    -- G has an element x of order p by Cauchy's theorem
    have ⟨x, hx⟩ := exists_prime_orderOf_dvd_card p hd
    -- F has an element u (= ↑↑x) of order p
    let u := ((x : Kˣ) : K)
    have hu : orderOf u = p := by rwa [orderOf_units, Subgroup.orderOf_coe]
    -- u ^ p = 1 implies (u - 1) ^ p = 0 and hence u = 1 ...
    have h : u = 1 := by
      rw [← sub_left_inj, sub_self 1]
      apply eq_zero_of_pow_eq_zero (n := p)
      rw [sub_pow_char_of_commute, one_pow, ← hu, pow_orderOf_eq_one, sub_self]
      exact Commute.one_right u
    -- ... meaning x didn't have order p after all, contradiction
    apply pprime.one_lt.ne
    rw [← hu, h, orderOf_one]

/-- The sum of a nontrivial subgroup of the units of a field is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant7b86651406816f1e8b3bf7a579c1f67a3e78203eec02f805855e6c4b7a3acf86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant7b86651406816f1e8b3bf7a579c1f67a3e78203eec02f805855e6c4b7a3acf86.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `719e419a79cc536ca864c3bf1e92572c473e8e4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
