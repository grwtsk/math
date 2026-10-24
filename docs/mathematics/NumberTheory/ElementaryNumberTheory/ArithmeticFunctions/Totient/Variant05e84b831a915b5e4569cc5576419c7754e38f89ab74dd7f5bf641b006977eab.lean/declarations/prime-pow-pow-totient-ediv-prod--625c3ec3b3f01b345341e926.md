# prime_pow_pow_totient_ediv_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4245eaf2-eeef-ea37-be92-f92e0d291369",
  "kind": "theorem",
  "lexical_name": "prime_pow_pow_totient_ediv_prod",
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
  "slug": "prime-pow-pow-totient-ediv-prod--625c3ec3b3f01b345341e926",
  "source": {
    "blob": "1adf8f725fd231a0df73efdb6bf812ee0865c6d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 430,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:625c3ec3b3f01b345341e926acff58fbbd508354ec74add01d0061009ef1edb7",
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

Occurrence: `result:4245eaf2-eeef-ea37-be92-f92e0d291369`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_pow_pow_totient_ediv_prod {p k : ℕ} (hp : p.Prime) (hk : 0 < k) :
      (p ^ k : ℕ) ^ φ (p ^ k) / ∏ q ∈ (p ^ k).primeFactors, q ^ (φ (p ^ k) / (q - 1)) =
        p ^ (p ^ (k - 1) * ((p - 1) * k - 1)) := by
  have h : p ^ (k - 1) ≤ k * (p ^ (k - 1) * (p - 1)) := by
    rw [mul_left_comm]
    refine le_mul_of_one_le_right (Nat.zero_le _) ?_
    exact Right.one_le_mul hk <| Nat.le_sub_one_of_lt <| hp.one_lt
  simp_rw [Nat.totient_prime_pow hp hk, Nat.primeFactors_prime_pow hk.ne' hp, Finset.prod_singleton,
    Nat.mul_div_left _ (Nat.sub_pos_of_lt hp.one_lt), ← pow_mul]
  rw [Nat.pow_div h hp.pos]
  simp_rw [Nat.sub_mul, one_mul, Nat.mul_sub, mul_one]
  ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1adf8f725fd231a0df73efdb6bf812ee0865c6d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
