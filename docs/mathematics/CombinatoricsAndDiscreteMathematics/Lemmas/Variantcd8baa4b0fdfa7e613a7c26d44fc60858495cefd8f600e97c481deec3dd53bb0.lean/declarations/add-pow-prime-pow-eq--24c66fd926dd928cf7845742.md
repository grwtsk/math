# add_pow_prime_pow_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f8d4c02-195a-b2ad-6c0a-6bdb5124a565",
  "kind": "lemma",
  "lexical_name": "add_pow_prime_pow_eq'",
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
  "slug": "add-pow-prime-pow-eq--24c66fd926dd928cf7845742",
  "source": {
    "blob": "1278a7b7db64f949251c165cf50ea55e21fd3cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variantcd8baa4b0fdfa7e613a7c26d44fc60858495cefd8f600e97c481deec3dd53bb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24c66fd926dd928cf7845742eedccc8f616fb55187f942a94eae420949144fab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lemmas/Variantcd8baa4b0fdfa7e613a7c26d44fc60858495cefd8f600e97c481deec3dd53bb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f8d4c02-195a-b2ad-6c0a-6bdb5124a565`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma add_pow_prime_pow_eq' (h : Commute x y) (n : ℕ) :
    (x + y) ^ p ^ n =
      x ^ p ^ n + y ^ p ^ n +
        p * ∑ k ∈ Ioo 0 (p ^ n), x ^ k * y ^ (p ^ n - k) * ↑((p ^ n).choose k / p) := calc
  _ = ∑ k ∈ Icc 0 (p ^ n), x ^ k * y ^ (p ^ n - k) * (p ^ n).choose k := by
    rw [h.add_pow, ← Nat.Ico_zero_eq_range, Ico_add_one_right_eq_Icc]
  _ = x ^ p ^ n + y ^ p ^ n + ∑ k ∈ Ioo 0 (p ^ n), x ^ k * y ^ (p ^ n - k) * (p ^ n).choose k := by
    simp_rw [Icc_eq_cons_Ico zero_le, Ico_eq_cons_Ioo (pow_pos hp.pos _)]
    simp [-cons_eq_insert, add_assoc]
  _ = _ := by
    simp_rw [mul_sum]
    congr! 2 with k hk
    obtain ⟨hk₀, hk⟩ := mem_Ioo.1 hk
    -- The maths is over now. We just commute things to their place.
    rw [Nat.cast_comm, mul_assoc (_ * _)]
    norm_cast
    rw [Nat.div_mul_cancel (hp.dvd_choose_pow _ _)] <;> lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lemmas/Variantcd8baa4b0fdfa7e613a7c26d44fc60858495cefd8f600e97c481deec3dd53bb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variantcd8baa4b0fdfa7e613a7c26d44fc60858495cefd8f600e97c481deec3dd53bb0.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1278a7b7db64f949251c165cf50ea55e21fd3cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
