# X_pow_sub_C_irreducible_of_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91c3b8660f316cc860b3d749068a787b60e747f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce3d5202-d419-0247-836e-a4ff89447247",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:731fac7f-e4f5-3233-62c6-f45294a5804a",
  "kind": "theorem",
  "lexical_name": "X_pow_sub_C_irreducible_of_odd",
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
  "slug": "x-pow-sub-c-irreducible-of-odd--1cacf9669922671130ea2c4e",
  "source": {
    "blob": "91c3b8660f316cc860b3d749068a787b60e747f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 114,
    "path": "GRWTSK/Algebra/KummerExtension/Variant7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cacf9669922671130ea2c4ea220b9d60b7126e0b2674ac72e9b7a6a97a3fa2e",
  "verification": {
    "reference": "docs/verification/Algebra/KummerExtension/Variant7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:731fac7f-e4f5-3233-62c6-f45294a5804a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem X_pow_sub_C_irreducible_of_odd
    {n : ℕ} (hn : Odd n) {a : K} (ha : ∀ p : ℕ, p.Prime → p ∣ n → ∀ b : K, b ^ p ≠ a) :
    Irreducible (X ^ n - C a) := by
  induction n using induction_on_primes generalizing K a with
  | zero => simp [← Nat.not_even_iff_odd] at hn
  | one => simpa using irreducible_X_sub_C a
  | prime_mul p n hp IH =>
    rw [mul_comm]
    apply X_pow_mul_sub_C_irreducible
      (X_pow_sub_C_irreducible_of_prime hp (ha p hp (dvd_mul_right _ _)))
    intro E _ _ x hx
    have : IsIntegral K x := not_not.mp fun h ↦ by
      simpa only [degree_zero, degree_X_pow_sub_C hp.pos,
        WithBot.natCast_ne_bot] using congr_arg degree (hx.symm.trans (dite_eq_right h))
    apply IH (Nat.odd_mul.mp hn).2
    intro q hq hqn b hb
    apply ha q hq (dvd_mul_of_dvd_right hqn p) (Algebra.norm _ b)
    rw [← map_pow, hb, ← adjoin.powerBasis_gen this,
      Algebra.PowerBasis.norm_gen_eq_coeff_zero_minpoly]
    simp [minpoly_gen, hx, hp.ne_zero.symm, (Nat.odd_mul.mp hn).1.neg_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerExtension/Variant7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerExtension/Variant7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91c3b8660f316cc860b3d749068a787b60e747f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
