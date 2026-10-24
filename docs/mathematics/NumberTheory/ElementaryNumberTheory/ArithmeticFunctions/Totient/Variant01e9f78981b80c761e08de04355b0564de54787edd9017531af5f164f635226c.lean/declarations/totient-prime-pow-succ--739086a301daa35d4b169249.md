# totient_prime_pow_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c94929f1903663ff9019ab796e45d205c1d83093",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9bbf38ea-b528-5fa3-ecca-596c1dcdeeb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2445b914-bc07-5205-e8d1-cf6ec2a157b7",
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
  "slug": "totient-prime-pow-succ--739086a301daa35d4b169249",
  "source": {
    "blob": "c94929f1903663ff9019ab796e45d205c1d83093",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 189,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:739086a301daa35d4b169249a81952bf576a0abfca8f1dad21842ff3a18b3df4",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2445b914-bc07-5205-e8d1-cf6ec2a157b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totient_prime_pow_succ {p : ℕ} (hp : p.Prime) (n : ℕ) : φ (p ^ (n + 1)) = p ^ n * (p - 1) :=
  calc
    φ (p ^ (n + 1)) = ((range (p ^ (n + 1))).filter (coprime (p ^ (n + 1)))).card :=
      totient_eq_card_coprime _
    _ = (range (p ^ (n + 1)) \ (range (p ^ n)).image (· * p)).card :=
      (congr_arg card
        (by
          rw [sdiff_eq_filter]
          apply filter_congr
          simp only [mem_range, mem_filter, coprime_pow_left_iff n.succ_pos, mem_image, not_exists,
            hp.coprime_iff_not_dvd]
          intro a ha
          constructor
          · intro hap b h; rcases h with ⟨_, rfl⟩
            exact hap (dvd_mul_left _ _)
          · rintro h ⟨b, rfl⟩
            rw [pow_succ'] at ha
            exact h b ⟨lt_of_mul_lt_mul_left ha (zero_le _), mul_comm _ _⟩))
    _ = _ := by
      have h1 : Function.Injective (· * p) := mul_left_injective₀ hp.ne_zero
      have h2 : (range (p ^ n)).image (· * p) ⊆ range (p ^ (n + 1)) := fun a => by
        simp only [mem_image, mem_range, exists_imp]
        rintro b ⟨h, rfl⟩
        rw [pow_succ]
        exact (mul_lt_mul_right hp.pos).2 h
      rw [card_sdiff h2, card_image_of_injOn (h1.injOn _), card_range, card_range, ←
        one_mul (p ^ n), pow_succ', ← tsub_mul, one_mul, mul_comm]
#align nat.totient_prime_pow_succ Nat.totient_prime_pow_succ

/-- When `p` is prime, then the totient of `p ^ n` is `p ^ (n - 1) * (p - 1)` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c94929f1903663ff9019ab796e45d205c1d83093` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
