# HasPrimeInInterval.iff_theta_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1e97a91adcba4fe274cbb67c931e9bb414eb650",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ed50389-db68-360c-a102-d8a8672cbbf9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c32847f-3d9e-0765-cfcd-52ad31772585",
  "kind": "lemma",
  "lexical_name": "HasPrimeInInterval.iff_theta_ge",
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
  "slug": "hasprimeininterval-iff-theta-ge--811be77465c6a40fb0d7a577",
  "source": {
    "blob": "d1e97a91adcba4fe274cbb67c931e9bb414eb650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:811be77465c6a40fb0d7a57753eac43e3c428ee4c14912abdf374093a842d33c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c32847f-3d9e-0765-cfcd-52ad31772585`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasPrimeInInterval.iff_theta_ge (x h : ℝ) :
    HasPrimeInInterval x h ↔ θ (x + h) > θ x := by
  constructor
  · rintro ⟨p, hpprime, hxp, hpxh⟩
    let s : Finset ℕ := filter Nat.Prime (Icc 0 ⌊x⌋₊)
    let t : Finset ℕ := filter Nat.Prime (Icc 0 ⌊x + h⌋₊)
    have hs : s ⊆ t := by
      intro q hq
      have hq' : q ∈ filter Nat.Prime (Icc 0 ⌊x⌋₊) := by simpa [s] using hq
      have hxxh : x ≤ x + h := le_of_lt (lt_of_lt_of_le hxp hpxh)
      rw [mem_filter] at hq' ⊢
      have hqIcc : q ∈ Icc 0 ⌊x + h⌋₊ := by
        exact mem_Icc.mpr ⟨(mem_Icc.mp hq'.1).1,
          le_trans (mem_Icc.mp hq'.1).2 (Nat.floor_mono hxxh)⟩
      exact ⟨hqIcc, hq'.2⟩
    have hp_in_t : p ∈ t := by
      have : p ∈ filter Nat.Prime (Icc 0 ⌊x + h⌋₊) := by
        exact Finset.mem_filter.mpr <| by
          refine ⟨mem_Icc.mpr ?_, hpprime⟩
          exact ⟨Nat.zero_le p, Nat.le_floor hpxh⟩
      simpa [t] using this
    have hp_notin_s : p ∉ s := by
      intro hpins
      have hpins' : p ∈ filter Nat.Prime (Icc 0 ⌊x⌋₊) := by simpa [s] using hpins
      rw [mem_filter, mem_Icc] at hpins'
      have hx_nn : 0 ≤ x := by
        have hfloor_pos : 0 < ⌊x⌋₊ := lt_of_lt_of_le hpprime.pos hpins'.1.2
        exact le_trans (by norm_num : (0 : ℝ) ≤ 1) (Nat.floor_pos.mp hfloor_pos)
      exact (not_le_of_gt hxp) ((Nat.cast_le.2 hpins'.1.2).trans (Nat.floor_le hx_nn))
    have hnonneg : ∀ q ∈ t, q ∉ s → 0 ≤ Real.log q := by
      intro q hq _
      have hq' : q ∈ filter Nat.Prime (Icc 0 ⌊x + h⌋₊) := by simpa [t] using hq
      rw [mem_filter] at hq'
      exact Real.log_nonneg (Nat.one_le_cast.2 hq'.2.one_le)
    have hsum_lt : (∑ q ∈ s, Real.log q) < ∑ q ∈ t, Real.log q := by
      exact Finset.sum_lt_sum_of_subset hs hp_in_t hp_notin_s
        (Real.log_pos (Nat.one_lt_cast.2 hpprime.one_lt)) hnonneg
    simpa [Chebyshev.theta_eq_sum_Icc, s, t] using hsum_lt
  · intro htheta
    have hxh : x < x + h := by
      by_contra hle
      have hmono : θ (x + h) ≤ θ x := Chebyshev.theta_mono (le_of_not_gt hle)
      linarith
    have hprime : HasPrimeInInterval x ((x + h) - x) :=
      theta_pos_implies_prime_in_interval hxh (by linarith [htheta])
    simpa using hprime

@[blueprint
  "etheta-pi"
  (title := "Upper bound on Etheta implies prime in short interval")
  (statement := /--
  There is a prime in $(x, x+h]$ if $x E_\theta(x) + (x+h) E_\theta(x+h) < h$. -/)
  (proof := /-- Lower bound $\theta(x+h) - \theta(x)$ using
  $\theta(x+h) \geq x+h (1 - E_\theta(x+h))$ and $\theta(x) \leq x (1 + E_\theta(x))$
  and apply Lemma \ref{theta-inc}. -/)
  (latexEnv := "lemma")
  (discussion := 906)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e97a91adcba4fe274cbb67c931e9bb414eb650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
