# card_orderOf_eq_totient_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64b0b5a2-491e-bf51-6ad5-5c3c5cb7b0c1",
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
  "slug": "card-orderof-eq-totient-aux--63e107065891b0b16d303a3c",
  "source": {
    "blob": "ab4df74739cd427e9035d6118afbba657142a311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 344,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63e107065891b0b16d303a3cb5c7459e7b07238bad9d1e4fb80f7da60cebb543",
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

Occurrence: `result:64b0b5a2-491e-bf51-6ad5-5c3c5cb7b0c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem card_orderOf_eq_totient_aux₁ :
    ∀ {d : ℕ},
      d ∣ Fintype.card α →
        0 < (univ.filter fun a : α => orderOf a = d).card →
          (univ.filter fun a : α => orderOf a = d).card = φ d := by
  intro d hd hpos
  induction' d using Nat.strongRec' with d IH
  rcases Decidable.eq_or_ne d 0 with (rfl | hd0)
  · cases Fintype.card_ne_zero (eq_zero_of_zero_dvd hd)
  rcases card_pos.1 hpos with ⟨a, ha'⟩
  have ha : orderOf a = d := (mem_filter.1 ha').2
  have h1 :
    (∑ m in d.properDivisors, (univ.filter fun a : α => orderOf a = m).card) =
      ∑ m in d.properDivisors, φ m := by
    refine' Finset.sum_congr rfl fun m hm => _
    simp only [mem_filter, mem_range, mem_properDivisors] at hm
    refine' IH m hm.2 (hm.1.trans hd) (Finset.card_pos.2 ⟨a ^ (d / m), _⟩)
    simp only [mem_filter, mem_univ, orderOf_pow a, ha, true_and_iff,
      Nat.gcd_eq_right (div_dvd_of_dvd hm.1), Nat.div_div_self hm.1 hd0]
  have h2 :
    (∑ m in d.divisors, (univ.filter fun a : α => orderOf a = m).card) =
      ∑ m in d.divisors, φ m := by
    rw [← filter_dvd_eq_divisors hd0, sum_card_orderOf_eq_card_pow_eq_one hd0,
      filter_dvd_eq_divisors hd0, sum_totient, ← ha, card_pow_eq_one_eq_orderOf_aux hn a]
  simpa [← cons_self_properDivisors hd0, ← h1] using h2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab4df74739cd427e9035d6118afbba657142a311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
