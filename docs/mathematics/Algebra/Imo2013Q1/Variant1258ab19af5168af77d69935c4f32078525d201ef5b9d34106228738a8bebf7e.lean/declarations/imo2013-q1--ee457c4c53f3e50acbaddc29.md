# imo2013_q1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afa0cb36-e64b-4852-2764-84b7463a0c9a",
  "kind": "theorem",
  "lexical_name": "imo2013_q1",
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
  "slug": "imo2013-q1--ee457c4c53f3e50acbaddc29",
  "source": {
    "blob": "cea0e76c8f98e7d69043715749f56cf8ae194418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 51,
    "path": "GRWTSK/Algebra/Imo2013Q1/Variant1258ab19af5168af77d69935c4f32078525d201ef5b9d34106228738a8bebf7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee457c4c53f3e50acbaddc29ac7522660f7e3e842618b27b9507a406d897d8f3",
  "verification": {
    "reference": "docs/verification/Algebra/Imo2013Q1/Variant1258ab19af5168af77d69935c4f32078525d201ef5b9d34106228738a8bebf7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afa0cb36-e64b-4852-2764-84b7463a0c9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imo2013_q1 (n : ℕ+) (k : ℕ) :
    ∃ m : ℕ → ℕ+, (1 : ℚ) + (2 ^ k - 1) / n = ∏ i ∈ Finset.range k, (1 + 1 / (m i : ℚ)) := by
  revert n
  induction' k with pk hpk
  · intro n; use fun (_ : ℕ) => (1 : ℕ+); simp
  -- For the base case, any m works.
  intro n
  obtain ⟨t, ht : ↑n = t + t⟩ | ⟨t, ht : ↑n = 2 * t + 1⟩ := (n : ℕ).even_or_odd
  · -- even case
    rw [← two_mul] at ht
    rcases t with - | t
    -- Eliminate the zero case to simplify later calculations.
    · exfalso; rw [Nat.mul_zero] at ht; exact PNat.ne_zero n ht
    -- Now we have ht : ↑n = 2 * (t + 1).
    let t_succ : ℕ+ := ⟨t + 1, t.succ_pos⟩
    obtain ⟨pm, hpm⟩ := hpk t_succ
    let m i := if i < pk then pm i else ⟨2 * t + 2 ^ pk.succ, arith_lemma pk t⟩
    use m
    have hmpk : (m pk : ℚ) = 2 * t + 2 ^ pk.succ := by
      have : m pk = ⟨2 * t + 2 ^ pk.succ, _⟩ := if_neg (irrefl pk); simp [this]
    calc
      ((1 : ℚ) + (2 ^ pk.succ - 1) / (n : ℚ) : ℚ)= 1 + (2 * 2 ^ pk - 1) / (2 * (t + 1) : ℕ) := by
        rw [ht, pow_succ']
      _ = (1 + 1 / (2 * t + 2 * 2 ^ pk)) * (1 + (2 ^ pk - 1) / (↑t + 1)) := by
        field_simp
        ring
      _ = (1 + 1 / (2 * t + 2 ^ pk.succ)) * (1 + (2 ^ pk - 1) / t_succ) := by
        simp [pow_succ', PNat.mk_coe, t_succ]
      _ = (∏ i ∈ Finset.range pk, (1 + 1 / (m i : ℚ))) * (1 + 1 / m pk) := by
        rw [prod_lemma, hpm, ← hmpk, mul_comm]
      _ = ∏ i ∈ Finset.range pk.succ, (1 + 1 / (m i : ℚ)) := by rw [← Finset.prod_range_succ _ pk]
  · -- odd case
    let t_succ : ℕ+ := ⟨t + 1, t.succ_pos⟩
    obtain ⟨pm, hpm⟩ := hpk t_succ
    let m i := if i < pk then pm i else ⟨2 * t + 1, Nat.succ_pos _⟩
    use m
    have hmpk : (m pk : ℚ) = 2 * t + 1 := by
      have : m pk = ⟨2 * t + 1, _⟩ := if_neg (irrefl pk)
      simp [this]
    calc
      ((1 : ℚ) + (2 ^ pk.succ - 1) / ↑n : ℚ) = 1 + (2 * 2 ^ pk - 1) / (2 * t + 1 : ℕ) := by
        rw [ht, pow_succ']
      _ = (1 + 1 / (2 * t + 1)) * (1 + (2 ^ pk - 1) / (t + 1)) := by
        field_simp
        ring
      _ = (1 + 1 / (2 * t + 1)) * (1 + (2 ^ pk - 1) / t_succ) := by norm_cast
      _ = (∏ i ∈ Finset.range pk, (1 + 1 / (m i : ℚ))) * (1 + 1 / ↑(m pk)) := by
        rw [prod_lemma, hpm, ← hmpk, mul_comm]
      _ = ∏ i ∈ Finset.range pk.succ, (1 + 1 / (m i : ℚ)) := by rw [← Finset.prod_range_succ _ pk]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2013Q1/Variant1258ab19af5168af77d69935c4f32078525d201ef5b9d34106228738a8bebf7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2013Q1/Variant1258ab19af5168af77d69935c4f32078525d201ef5b9d34106228738a8bebf7e.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cea0e76c8f98e7d69043715749f56cf8ae194418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
