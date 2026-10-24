# sum_fixedLengthDigits_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7297495a-bfcf-43de-7d21-9931b73cabfa",
  "kind": "theorem",
  "lexical_name": "sum_fixedLengthDigits_sum",
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
  "slug": "sum-fixedlengthdigits-sum--f3611799da71ebf6df1291c9",
  "source": {
    "blob": "fed898353b2b5c6cad438795bcd5217b7cae5e4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 523,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2a8172e35f44d9d45011204697f74b4c1dadc4ec2a0f96aac9c1540d229e0255.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3611799da71ebf6df1291c9984e9bcdd3ce9d7ada2e791ee0d57005e0e9f039",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2a8172e35f44d9d45011204697f74b4c1dadc4ec2a0f96aac9c1540d229e0255.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7297495a-bfcf-43de-7d21-9931b73cabfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_fixedLengthDigits_sum {b : ℕ} (hb : 1 < b) (l : ℕ) :
    ∑ L ∈ fixedLengthDigits hb l, L.sum = l * b ^ (l - 1) * b.choose 2 := by
  induction l with
  | zero => simp
  | succ l hr =>
      by_cases hl : l = 0
      · simp [hl, fixedLengthDigits_one, Finset.sum_range_id, choose_two_right]
      rw [fixedLengthDigits_succ_eq_disjiUnion, Finset.sum_disjiUnion]
      simp only [consFixedLengthDigits, cons.injEq, true_and, implies_true, Set.injOn_of_eq_iff_eq,
        Finset.sum_image, sum_cons]
      rw [Finset.sum_comm]
      simp_rw [Finset.sum_add_distrib, Finset.sum_const, Finset.sum_nsmul, Finset.sum_range_id, hr,
        nsmul_eq_mul, Finset.card_range, add_tsub_cancel_right, cast_id, card_fixedLengthDigits,
        choose_two_right]
      rw [show b ^ l = b * b ^ (l - 1) by rw [← Nat.pow_succ', Nat.sub_one, Nat.succ_pred hl]]
      ring

end List

/--
The formula for the sum of the sum of the digits in base `b` over the natural integers `< b ^ l`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2a8172e35f44d9d45011204697f74b4c1dadc4ec2a0f96aac9c1540d229e0255.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2a8172e35f44d9d45011204697f74b4c1dadc4ec2a0f96aac9c1540d229e0255.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fed898353b2b5c6cad438795bcd5217b7cae5e4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
