# fermat_primeFactors_one_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a89e18be1143bcabb78ed0ac8dbe1b98ecf1e396",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7bb0e87-5c31-72af-58a1-67ad84d798bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3303ace5-c13d-1e19-b701-59927db14280",
  "kind": "lemma",
  "lexical_name": "fermat_primeFactors_one_lt",
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
  "slug": "fermat-primefactors-one-lt--4f1f5b1b3f0df34efa182b90",
  "source": {
    "blob": "a89e18be1143bcabb78ed0ac8dbe1b98ecf1e396",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 173,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f1f5b1b3f0df34efa182b900cf2d20b8b3a153589910e64b7fc5713f953d7ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3303ace5-c13d-1e19-b701-59927db14280`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fermat_primeFactors_one_lt (n p : ℕ) (hn : 1 < n) (hp : p.Prime)
    (hpdvd : p ∣ fermatNumber n) :
    ∃ k, p = k * 2 ^ (n + 2) + 1 := by
  have : Fact p.Prime := Fact.mk hp
  have hp2 : p ≠ 2 := by
    exact ((even_pow.mpr ⟨even_two, pow_ne_zero n two_ne_zero⟩).add_one).ne_two_of_dvd_nat hpdvd
  have hp8 : p % 8 = 1 := by
    obtain ⟨k, rfl⟩ := pow_pow_add_primeFactors_one_lt hp hp2 hpdvd
    obtain ⟨n, rfl⟩ := Nat.exists_eq_add_of_le' hn
    rw [add_assoc, pow_add, ← mul_assoc, ← mod_add_mod, mul_mod]
    norm_num
  obtain ⟨a, ha⟩ := (exists_sq_eq_two_iff hp2).mpr (Or.inl hp8)
  suffices h : p ∣ a.val ^ (2 ^ (n + 1)) + 1 by
    exact pow_pow_add_primeFactors_one_lt hp hp2 h
  rw [fermatNumber] at hpdvd
  rw [← natCast_zmod_eq_zero_iff_dvd, Nat.cast_add _ 1, Nat.cast_one, Nat.cast_pow] at hpdvd ⊢
  rwa [natCast_val, ZMod.cast_id, pow_succ', pow_mul, sq, ← ha]


-- TODO: move to NumberTheory.Mersenne, once we have that.
/-!
# Primality of Mersenne numbers `Mₙ = a ^ n - 1`
-/

/-- Prime `a ^ n - 1` implies `a = 2` and prime `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a89e18be1143bcabb78ed0ac8dbe1b98ecf1e396` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
