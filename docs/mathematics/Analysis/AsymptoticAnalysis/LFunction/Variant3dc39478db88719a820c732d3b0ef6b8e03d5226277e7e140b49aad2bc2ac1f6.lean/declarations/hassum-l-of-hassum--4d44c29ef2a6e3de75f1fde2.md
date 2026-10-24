# hasSum_L_of_hasSum_Λ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4fa54a4-3ee3-15d7-b6d7-5f0ee0336587",
  "kind": "lemma",
  "lexical_name": "hasSum_L_of_hasSum_Λ",
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
  "slug": "hassum-l-of-hassum--4d44c29ef2a6e3de75f1fde2",
  "source": {
    "blob": "c58fc569d4ed2d17edbd9b21baf027a71597504a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 145,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LFunction/Variant3dc39478db88719a820c732d3b0ef6b8e03d5226277e7e140b49aad2bc2ac1f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d44c29ef2a6e3de75f1fde2ffbd549bdda2a43f797f82de71392a73a7fcac0b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LFunction/Variant3dc39478db88719a820c732d3b0ef6b8e03d5226277e7e140b49aad2bc2ac1f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4fa54a4-3ee3-15d7-b6d7-5f0ee0336587`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma hasSum_L_of_hasSum_Λ (hs : 0 < s.re)
    (hΛ : HasSum (fun n ↦ π ^ (-s) * Gamma s *
      (qExpansion (h Γ) f).coeff n / ↑(2 * n / h Γ : ℝ) ^ s) (Λ hk f s)) :
    HasSum (fun i ↦ (qExpansion (h Γ) f).coeff i / ↑i ^ s) (h Γ ^ (-s) * L hk f s) := by
  convert! hΛ.mul_right (2 / Gammaℂ s * h Γ ^ (-s)) using 1
  · ext n
    generalize (PowerSeries.coeff n) (qExpansion (h Γ) f) = p
    rw [Gammaℂ, ← div_div, ← div_div, div_self two_ne_zero, one_div, cpow_neg (2 * _), inv_inv,
      ← ofReal_ofNat, mul_cpow_ofReal_nonneg two_pos.le Real.pi_pos.le]
    simp only [ofReal_div, ofReal_mul, ofReal_ofNat, ofReal_natCast]
    have : (2 * n / h Γ : ℂ) ^ s = 2 ^ s * n ^ s / h Γ ^ s := by
      rw [← ofReal_ofNat, ← ofReal_natCast, ← ofReal_mul,
        div_cpow_ofReal_nonneg (by grind) Γ.strictWidthInfty_nonneg, ofReal_mul,
        mul_cpow_ofReal_nonneg zero_le_two n.cast_nonneg]
    rw [this, cpow_neg, cpow_neg]
    have := Gamma_ne_zero_of_re_pos hs
    have := cpow_ne_zero_iff (y := s).mpr (.inl <| ofReal_ne_zero.mpr Γ.strictWidthInfty_pos.ne')
    field_simp
  · grind [L]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LFunction/Variant3dc39478db88719a820c732d3b0ef6b8e03d5226277e7e140b49aad2bc2ac1f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LFunction/Variant3dc39478db88719a820c732d3b0ef6b8e03d5226277e7e140b49aad2bc2ac1f6.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c58fc569d4ed2d17edbd9b21baf027a71597504a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
