# pow_sum_div_card_le_sum_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:811de03d-0fed-28cf-527c-7d7b80fef01d",
  "kind": "theorem",
  "lexical_name": "pow_sum_div_card_le_sum_pow",
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
  "slug": "pow-sum-div-card-le-sum-pow--cb0eae1d65e27083dd87ae18",
  "source": {
    "blob": "f9a9d66478fec1cc87ce306165fa388dfefc4a68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 81,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb0eae1d65e27083dd87ae18d63af166b2612d4ed820a097c9ab19620211eca0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:811de03d-0fed-28cf-527c-7d7b80fef01d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_sum_div_card_le_sum_pow {f : ι → ℝ} (n : ℕ) (hf : ∀ a ∈ s, 0 ≤ f a) :
    (∑ x in s, f x) ^ (n + 1) / (s.card : ℝ) ^ n ≤ ∑ x in s, f x ^ (n + 1) := by
  rcases s.eq_empty_or_nonempty with (rfl | hs)
  · simp_rw [Finset.sum_empty, zero_pow' _ (Nat.succ_ne_zero n), zero_div]; rfl
  · have hs0 : 0 < (s.card : ℝ) := Nat.cast_pos.2 hs.card_pos
    suffices (∑ x in s, f x / s.card) ^ (n + 1) ≤ ∑ x in s, f x ^ (n + 1) / s.card by
      rwa [← Finset.sum_div, ← Finset.sum_div, div_pow, pow_succ' (s.card : ℝ), ← div_div,
        div_le_iff hs0, div_mul, div_self hs0.ne', div_one] at this
    have :=
      @ConvexOn.map_sum_le ℝ ℝ ℝ ι _ _ _ _ _ _ (Set.Ici 0) (fun x => x ^ (n + 1)) s
        (fun _ => 1 / s.card) ((↑) ∘ f) (convexOn_pow (n + 1)) ?_ ?_ fun i hi =>
        Set.mem_Ici.2 (hf i hi)
    · simpa only [inv_mul_eq_div, one_div, Algebra.id.smul_eq_mul] using this
    · simp only [one_div, inv_nonneg, Nat.cast_nonneg, imp_true_iff]
    · simpa only [one_div, Finset.sum_const, nsmul_eq_mul] using mul_inv_cancel hs0.ne'
#align real.pow_sum_div_card_le_sum_pow Real.pow_sum_div_card_le_sum_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variante748e2bd6bdeff8263f688c50c34c649adbe477fa11e74380eaed1b614a4f5e5.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a9d66478fec1cc87ce306165fa388dfefc4a68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
