# calE_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1580,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09b4eb27-9422-4f84-6403-47eac000f88c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d55db6d4-3f25-2361-2b82-b472e6b617f5",
  "kind": "theorem",
  "lexical_name": "calE_tendsto_zero",
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
  "slug": "cale-tendsto-zero--69537d2d8270826d2fb128d1",
  "source": {
    "blob": "3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1633,
    "line": 1580,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69537d2d8270826d2fb128d128a7bd283da92c51450d57b73529511ee7639293",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d55db6d4-3f25-2361-2b82-b472e6b617f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1580–1633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem calE_tendsto_zero (P : Params) (hlam : 0 < P.lam) (hlam1 : P.lam ≤ 1) (hw : 0 ≤ P.w) :
    Tendsto P.calE atTop (𝓝 0) := by
  have h1 : Tendsto (fun T => P.w / P.L T) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop (tendsto_L_atTop P hlam)
  have h2 : Tendsto (fun T : ℝ => Real.log T ^ 2 / T) atTop (𝓝 0) := by
    have := Real.tendsto_pow_log_div_mul_add_atTop 1 0 2 one_ne_zero
    simpa using this
  have h3 : Tendsto (fun T => Real.log (l T) / l T) atTop (𝓝 0) := by
    have : Tendsto (fun x : ℝ => Real.log x / x) atTop (𝓝 0) := by
      simpa using Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 one_ne_zero
    exact this.comp tendsto_l_atTop
  have h4 := tendsto_rpow_halflam_sub_one P hlam1
  have hsum : Tendsto (fun T => P.w / P.L T + (Real.log T ^ 2 / T + Real.log (l T) / l T)
      + T ^ (P.lam / 2 - 1)) atTop (𝓝 0) := by
    simpa using (h1.add (h2.add h3)).add h4
  refine tendsto_of_tendsto_of_tendsto_of_le_of_le' tendsto_const_nhds hsum
    (eventually_calE_nonneg P hlam hw) ?_
  filter_upwards [eventually_one_le_l, eventually_ge_atTop (2 * π)] with T hl hT2π
  have hT : 0 < T := lt_of_lt_of_le (by positivity) hT2π
  have hlpos : 0 < l T := by linarith
  have hlogl : 0 ≤ Real.log (l T) := Real.log_nonneg hl
  have hlogl' : Real.log (l T) ≤ l T := by linarith [Real.log_le_sub_one_of_pos hlpos]
  have hllog : l T ≤ Real.log T := by
    rw [log_eq_l_add hT]
    have : 0 ≤ Real.log (2 * π) := Real.log_nonneg (by linarith [Real.pi_gt_three])
    linarith
  have hX := X_le_T P hlam1 hT2π
  have hXpos : 0 ≤ P.X T := (Real.exp_pos _).le
  -- the middle term
  have hmid : (l T ^ 2 + P.X T) * Real.log (l T) / (T * l T)
      ≤ Real.log T ^ 2 / T + Real.log (l T) / l T := by
    have e : (l T ^ 2 + P.X T) * Real.log (l T) / (T * l T)
        = l T * Real.log (l T) / T + P.X T * Real.log (l T) / (T * l T) := by
      field_simp
    rw [e]
    gcongr ?_ + ?_
    · -- l log l / T ≤ (log T)²/T
      apply div_le_div_of_nonneg_right _ hT.le
      calc l T * Real.log (l T) ≤ l T * l T := mul_le_mul_of_nonneg_left hlogl' hlpos.le
        _ ≤ Real.log T * Real.log T := mul_le_mul hllog hllog hlpos.le (hlpos.le.trans hllog)
        _ = Real.log T ^ 2 := by ring
    · -- X log l /(T l) ≤ log l / l
      rw [div_le_div_iff₀ (by positivity) hlpos]
      calc P.X T * Real.log (l T) * l T ≤ T * Real.log (l T) * l T := by gcongr
        _ = Real.log (l T) * (T * l T) := by ring
  simp only [Params.calE]
  linarith

end CalE

end Assembly
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean#L1580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
