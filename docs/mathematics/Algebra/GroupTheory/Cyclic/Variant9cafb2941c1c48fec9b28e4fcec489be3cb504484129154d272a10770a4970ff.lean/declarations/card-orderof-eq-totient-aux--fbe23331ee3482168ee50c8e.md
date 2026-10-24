# card_orderOf_eq_totient_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e69b239a-0e19-9807-a0b1-a1b96d812bbb",
  "kind": "theorem",
  "lexical_name": "card_orderOf_eq_totient_aux₁",
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
  "slug": "card-orderof-eq-totient-aux--fbe23331ee3482168ee50c8e",
  "source": {
    "blob": "ecf625e54b46b367425daf33ac8da34d2308bc83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 94,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbe23331ee3482168ee50c8e9a8d7ea39776c4d52a301a30a0a8cd5fe060f605",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e69b239a-0e19-9807-a0b1-a1b96d812bbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem card_orderOf_eq_totient_aux₁ {d : ℕ} (hd : d ∣ Fintype.card α)
    (hpos : 0 < #{a : α | orderOf a = d}) : #{a : α | orderOf a = d} = φ d := by
  induction d using Nat.strong_induction_on with | _ d IH
  rcases Decidable.eq_or_ne d 0 with (rfl | hd0)
  · cases Fintype.card_ne_zero (eq_zero_of_zero_dvd hd)
  rcases Finset.card_pos.1 hpos with ⟨a, ha'⟩
  have ha : orderOf a = d := (mem_filter.1 ha').2
  have h1 :
    (∑ m ∈ d.properDivisors, #{a : α | orderOf a = m}) =
      ∑ m ∈ d.properDivisors, φ m := by
    refine Finset.sum_congr rfl fun m hm => ?_
    simp only [mem_properDivisors] at hm
    refine IH m hm.2 (hm.1.trans hd) (Finset.card_pos.2 ⟨a ^ (d / m), ?_⟩)
    rw [mem_filter_univ, orderOf_pow a, ha, Nat.gcd_eq_right (div_dvd_of_dvd hm.1),
      Nat.div_div_self hm.1 hd0]
  have h2 :
    (∑ m ∈ d.divisors, #{a : α | orderOf a = m}) =
      ∑ m ∈ d.divisors, φ m := by
    rw [sum_card_orderOf_eq_card_pow_eq_one hd0, sum_totient,
      ← ha, card_pow_eq_one_eq_orderOf_aux hn a]
  simpa [← cons_self_properDivisors hd0, ← h1] using h2

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecf625e54b46b367425daf33ac8da34d2308bc83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
