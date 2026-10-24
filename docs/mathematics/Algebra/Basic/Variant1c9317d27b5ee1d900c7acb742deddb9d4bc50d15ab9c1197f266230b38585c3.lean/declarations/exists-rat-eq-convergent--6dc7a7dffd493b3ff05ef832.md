# exists_rat_eq_convergent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfe64641-382b-8128-ab4c-5fa40b77fa2e",
  "kind": "theorem",
  "lexical_name": "exists_rat_eq_convergent",
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
  "slug": "exists-rat-eq-convergent--6dc7a7dffd493b3ff05ef832",
  "source": {
    "blob": "c9cd5466562cd3e81ed18a7605a7d47563c95592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 550,
    "path": "GRWTSK/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dc7a7dffd493b3ff05ef832d0800f85de1946d6b42897cbd0c09a3cc9d4f205",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfe64641-382b-8128-ab4c-5fa40b77fa2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_rat_eq_convergent {q : ℚ} (h : |ξ - q| < 1 / (2 * (q.den : ℝ) ^ 2)) :
    ∃ n, q = ξ.convergent n := by
  refine q.num_div_den ▸ exists_rat_eq_convergent' ⟨?_, fun hd => ?_, ?_⟩
  · exact isCoprime_iff_nat_coprime.mpr (natAbs_natCast q.den ▸ q.reduced)
  · rw [← q.den_eq_one_iff.mp (Nat.cast_eq_one.mp hd)] at h
    simpa only [Rat.den_intCast, Nat.cast_one, one_pow, mul_one] using (abs_lt.mp h).1
  · obtain ⟨hq₀, hq₁⟩ := aux₀ (Nat.cast_pos.mpr q.pos)
    replace hq₁ := mul_pos hq₀ hq₁
    have hq₂ : (0 : ℝ) < 2 * (q.den * q.den) := mul_pos zero_lt_two (mul_pos hq₀ hq₀)
    rw [cast_natCast] at *
    rw [(by norm_cast : (q.num / q.den : ℝ) = (q.num / q.den : ℚ)), Rat.num_div_den]
    exact h.trans (by rw [← one_div, sq, one_div_lt_one_div hq₂ hq₁, ← sub_pos]; ring_nf; exact hq₀)

end Real
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9cd5466562cd3e81ed18a7605a7d47563c95592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
