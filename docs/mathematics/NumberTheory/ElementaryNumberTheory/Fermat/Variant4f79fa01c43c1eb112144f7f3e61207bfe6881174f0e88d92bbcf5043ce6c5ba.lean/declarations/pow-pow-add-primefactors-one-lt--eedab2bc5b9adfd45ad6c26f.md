# pow_pow_add_primeFactors_one_lt

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
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9befd68-b359-5a3d-667a-f1f4777cd14f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98b2a21c-3dc1-5be0-68cc-47d5c49ecc20",
  "kind": "lemma",
  "lexical_name": "pow_pow_add_primeFactors_one_lt",
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
  "slug": "pow-pow-add-primefactors-one-lt--eedab2bc5b9adfd45ad6c26f",
  "source": {
    "blob": "a89e18be1143bcabb78ed0ac8dbe1b98ecf1e396",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 153,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eedab2bc5b9adfd45ad6c26f672d5892244fc5217dbb49c254ed012ea2c5f062",
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

Occurrence: `result:98b2a21c-3dc1-5be0-68cc-47d5c49ecc20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_pow_add_primeFactors_one_lt {a n p : ℕ} (hp : p.Prime) (hp2 : p ≠ 2)
    (hpdvd : p ∣ a ^ (2 ^ n) + 1) :
    ∃ k, p = k * 2 ^ (n + 1) + 1 := by
  have : Fact (2 < p) := Fact.mk (lt_of_le_of_ne hp.two_le hp2.symm)
  have : Fact p.Prime := Fact.mk hp
  have ha1 : (a : ZMod p) ^ (2 ^ n) = -1 := by
    rw [eq_neg_iff_add_eq_zero]
    exact_mod_cast (natCast_zmod_eq_zero_iff_dvd (a ^ (2 ^ n) + 1) p).mpr hpdvd
  have ha0 : (a : ZMod p) ≠ 0 := by
    intro h
    rw [h, zero_pow (pow_ne_zero n two_ne_zero), zero_eq_neg] at ha1
    exact one_ne_zero ha1
  have ha : orderOf (a : ZMod p) = 2 ^ (n + 1) := by
    apply orderOf_eq_prime_pow
    · rw [ha1]
      exact neg_one_ne_one
    · rw [pow_succ, pow_mul, ha1, neg_one_sq]
  simpa [ha, dvd_def, Nat.sub_eq_iff_eq_add hp.one_le, mul_comm] using orderOf_dvd_card_sub_one ha0

-- Prime factors of `Fₙ = 2 ^ (2 ^ n) + 1`, `1 < n`, are of form `k * 2 ^ (n + 2) + 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a89e18be1143bcabb78ed0ac8dbe1b98ecf1e396` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
