# Char.card_pow_char_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f4d86b1ec4214cd32489b59eb870d1fc0a0bf04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae1d6ebd-076c-e542-fd16-90320d5c2b9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:767fd3f2-0288-a2de-0db3-9440c88c286b",
  "kind": "theorem",
  "lexical_name": "Char.card_pow_char_pow",
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
  "slug": "char-card-pow-char-pow--dfa829640f82599b04c4dc1a",
  "source": {
    "blob": "9f4d86b1ec4214cd32489b59eb870d1fc0a0bf04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 198,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfa829640f82599b04c4dc1a8e5e4807b2cef738ea0db55e287ade497b6a6adb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:767fd3f2-0288-a2de-0db3-9440c88c286b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Char.card_pow_char_pow {χ : MulChar R R'} (hχ : IsQuadratic χ) (ψ : AddChar R R') (p n : ℕ)
    [fp : Fact p.Prime] [hch : CharP R' p] (hp : IsUnit (p : R)) (hp' : p ≠ 2)
    (hg : gaussSum χ ψ ^ 2 = χ (-1) * Fintype.card R) :
    (χ (-1) * Fintype.card R) ^ (p ^ n / 2) = χ ((p : R) ^ n) := by
  have : gaussSum χ ψ ≠ 0 := by
    intro hf; rw [hf, zero_pow (by norm_num : 0 < 2), eq_comm, mul_eq_zero] at hg
    exact not_isUnit_prime_of_dvd_card p
        ((CharP.cast_eq_zero_iff R' p _).mp <| hg.resolve_left (isUnit_one.neg.map χ).ne_zero) hp
  rw [← hg]; apply mul_right_cancel₀ this
  rw [← hχ.gaussSum_frob_iter p n hp ψ, ← pow_mul, mul_comm, ← pow_succ,
    Nat.two_mul_div_two_add_one_of_odd (fp.1.eq_two_or_odd'.resolve_left hp').pow]
#align char.card_pow_char_pow Char.card_pow_char_pow

/-- When `F` and `F'` are finite fields and `χ : F → F'` is a nontrivial quadratic character,
then `(χ(-1) * #F)^(#F'/2) = χ(#F')`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f4d86b1ec4214cd32489b59eb870d1fc0a0bf04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
