# log_ratio_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8485411d-fff7-a46d-a3e9-284354682657",
  "kind": "theorem",
  "lexical_name": "log_ratio_tendsto_zero",
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
  "slug": "log-ratio-tendsto-zero--75bff165f16692f356b6b654",
  "source": {
    "blob": "b39d6cf29e119cfff1a261c954d91201d85c2137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 292,
    "path": "GRWTSK/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75bff165f16692f356b6b654466535ca8f5467799d550e38c0111fb54609f3d0",
  "verification": {
    "reference": "docs/verification/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8485411d-fff7-a46d-a3e9-284354682657`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_ratio_tendsto_zero (q : ℕ → ℕ) (hq : ∀ n, 0 < q n)
    (htop : Tendsto q atTop atTop) {C : ℝ} (hC : 0 < C)
    (hbound : ∀ n, (q (n + 1) : ℝ) ≤ C * (q n : ℝ)) :
    Tendsto (fun n ↦ Real.log (q (n + 1) : ℝ) / (q n : ℝ)) atTop (𝓝 0) := by
  have hr : Tendsto (fun n ↦ (q n : ℝ)) atTop atTop :=
    tendsto_natCast_atTop_atTop.comp htop
  have hlog : Tendsto (fun n ↦ Real.log (q n : ℝ) / (q n : ℝ)) atTop (𝓝 0) := by
    simpa [Function.comp_def] using
      (Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 one_ne_zero).comp hr
  have hup : Tendsto (fun n ↦ (Real.log C + Real.log (q n : ℝ)) / (q n : ℝ))
      atTop (𝓝 0) := by
    simpa only [add_div, add_zero] using (tendsto_const_nhds.div_atTop hr).add hlog
  apply tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds hup
  · intro n
    exact div_nonneg (Real.log_nonneg (by exact_mod_cast Nat.succ_le_of_lt (hq (n + 1))))
      (Nat.cast_nonneg _)
  · intro n
    have hn : (0 : ℝ) < q n := by exact_mod_cast hq n
    have hs : (0 : ℝ) < q (n + 1) := by exact_mod_cast hq (n + 1)
    have he := Real.log_le_log hs (hbound n)
    rw [Real.log_mul (ne_of_gt hC) (ne_of_gt hn)] at he
    exact div_le_div_of_nonneg_right he (le_of_lt hn)

/-- The bounded-ratio result uses the complete extended exponent, without a
real-valued fallback for infinite limsup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b39d6cf29e119cfff1a261c954d91201d85c2137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
