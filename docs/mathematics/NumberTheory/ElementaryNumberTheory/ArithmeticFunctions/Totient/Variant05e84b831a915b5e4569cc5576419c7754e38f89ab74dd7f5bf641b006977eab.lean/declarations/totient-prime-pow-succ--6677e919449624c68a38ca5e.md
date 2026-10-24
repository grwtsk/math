# totient_prime_pow_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a7dd271-0de8-09ec-80a4-d437ef2f29da",
  "kind": "theorem",
  "lexical_name": "totient_prime_pow_succ",
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
  "slug": "totient-prime-pow-succ--6677e919449624c68a38ca5e",
  "source": {
    "blob": "1adf8f725fd231a0df73efdb6bf812ee0865c6d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 190,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6677e919449624c68a38ca5ecac93868c7ab476a87848d0c8d0a508602e9aa92",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a7dd271-0de8-09ec-80a4-d437ef2f29da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totient_prime_pow_succ {p : ℕ} (hp : p.Prime) (n : ℕ) : φ (p ^ (n + 1)) = p ^ n * (p - 1) :=
  calc
    φ (p ^ (n + 1)) = #{a ∈ range (p ^ (n + 1)) | (p ^ (n + 1)).Coprime a} :=
      totient_eq_card_coprime _
    _ = #(range (p ^ (n + 1)) \ (range (p ^ n)).image (· * p)) :=
      congr_arg card
        (by
          rw [sdiff_eq_filter]
          apply filter_congr
          simp only [mem_range, coprime_pow_left_iff n.succ_pos, mem_image, not_exists,
            hp.coprime_iff_not_dvd]
          intro a ha
          constructor
          · intro hap b h; rcases h with ⟨_, rfl⟩
            exact hap (dvd_mul_left _ _)
          · rintro h ⟨b, rfl⟩
            rw [pow_succ'] at ha
            exact h b ⟨lt_of_mul_lt_mul_left ha (zero_le _), mul_comm _ _⟩)
    _ = _ := by
      have h1 : Function.Injective (· * p) := mul_left_injective₀ hp.ne_zero
      have h2 : (range (p ^ n)).image (· * p) ⊆ range (p ^ (n + 1)) := fun a => by
        simp only [mem_image, mem_range, exists_imp]
        rintro b ⟨h, rfl⟩
        rw [Nat.pow_succ]
        exact (mul_lt_mul_iff_left₀ hp.pos).2 h
      rw [card_sdiff_of_subset h2, Finset.card_image_of_injective _ h1, card_range, card_range, ←
        one_mul (p ^ n), pow_succ', ← tsub_mul, one_mul, mul_comm]

/-- When `p` is prime, then the totient of `p ^ n` is `p ^ (n - 1) * (p - 1)` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1adf8f725fd231a0df73efdb6bf812ee0865c6d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
