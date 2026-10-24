# pows_small_primes_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df9edde3-b5b3-b30d-65da-4ae9d98ba0db",
  "kind": "theorem",
  "lexical_name": "pows_small_primes_le",
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
  "slug": "pows-small-primes-le--f6793bce52968bf734c7ee1c",
  "source": {
    "blob": "3a09a10fcf49da99210c3489b775fc36a274b40a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 432,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6793bce52968bf734c7ee1cee1c857ccc87b97999fc824d4ea6a6fcb69416b8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df9edde3-b5b3-b30d-65da-4ae9d98ba0db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pows_small_primes_le (N : ℕ) :
    (((Finset.Ico 1 (Nat.ceil (Real.sqrt N))) ×ˢ Finset.range (Nat.log 2 N + 1)).image
      (fun p ↦ p.1 ^ p.2)).card ≤
        (N : ℝ) ^ (1/2 : ℝ) * (1 + Real.log N / Real.log 2) := calc
  _ ≤ (((Finset.Ico 1 (Nat.ceil (Real.sqrt N))) ×ˢ
      Finset.range (Nat.log 2 N + 1)).card : ℝ) := by
    norm_cast
    exact Finset.card_image_le
  _ ≤ _ := by
    simp only [Finset.card_product, Nat.card_Ico, Finset.card_range, Nat.cast_mul, Nat.cast_add,
      Nat.cast_one]
    by_cases hN : N = 0
    · simp [hN]
    have : 1 ≤ Nat.ceil (Real.sqrt N) := by
      simp only [Nat.one_le_ceil_iff, Real.sqrt_pos, Nat.cast_pos]
      omega
    gcongr ?_ * ?_
    · rw [← Real.sqrt_eq_rpow, Nat.cast_sub this, Nat.cast_one]
      have := Nat.ceil_lt_add_one (show 0 ≤ Real.sqrt N by positivity)
      linarith
    rw [← Real.natFloor_logb_natCast, Real.log_div_log, Nat.cast_two, add_comm,
      add_le_add_iff_left]
    apply Nat.floor_le
    apply Real.logb_nonneg one_lt_two
    norm_cast; omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a09a10fcf49da99210c3489b775fc36a274b40a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
