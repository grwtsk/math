# zero_mem_tangentCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c86e9a1c2ba086a6af497a8eada09eb109ebacb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 267,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/8226b8e2e352e6272e2377f242b557f202e327f663b7d7fe8fc8c0b049d36cba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1256bb53-ca6d-2b58-8980-bf1698e7e5c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d31fa70-1ce5-ed46-4f88-9aa5ac2d8a23",
  "kind": "theorem",
  "lexical_name": "zero_mem_tangentCone",
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
  "slug": "zero-mem-tangentcone--6213d8709f4dae7e1f577a7a",
  "source": {
    "blob": "8c86e9a1c2ba086a6af497a8eada09eb109ebacb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 267,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant8226b8e2e352e6272e2377f242b557f202e327f663b7d7fe8fc8c0b049d36cba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6213d8709f4dae7e1f577a7a3cd9a4c6786755d4b8f496e2a63618e6a0d2edcd",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TangentCone/Variant8226b8e2e352e6272e2377f242b557f202e327f663b7d7fe8fc8c0b049d36cba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d31fa70-1ce5-ed46-4f88-9aa5ac2d8a23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_mem_tangentCone {s : Set E} {x : E} (hx : x ∈ closure s) :
    0 ∈ tangentConeAt 𝕜 s x := by
  /- Take a sequence `d n` tending to `0` such that `x + d n ∈ s`. Taking `c n` of the order
  of `1 / (d n) ^ (1/2)`, then `c n` tends to infinity, but `c n • d n` tends to `0`. By definition,
  this shows that `0` belongs to the tangent cone. -/
  obtain ⟨u, -, hu, u_lim⟩ :
      ∃ u, StrictAnti u ∧ (∀ (n : ℕ), 0 < u n ∧ u n < 1) ∧ Tendsto u atTop (𝓝 (0 : ℝ)) :=
    exists_seq_strictAnti_tendsto' one_pos
  choose u_pos u_lt_one using hu
  choose v hvs hvu using fun n ↦ Metric.mem_closure_iff.mp hx _ (mul_pos (u_pos n) (u_pos n))
  let d n := v n - x
  let ⟨r, hr⟩ := exists_one_lt_norm 𝕜
  have A n := exists_nat_pow_near (one_le_inv_iff₀.mpr ⟨u_pos n, (u_lt_one n).le⟩) hr
  choose m hm_le hlt_m using A
  set c := fun n ↦ r ^ (m n + 1)
  have c_lim : Tendsto (fun n ↦ ‖c n‖) atTop atTop := by
    simp only [c, norm_pow]
    refine tendsto_atTop_mono (fun n ↦ (hlt_m n).le) <| .inv_tendsto_nhdsGT_zero ?_
    exact tendsto_nhdsWithin_iff.mpr ⟨u_lim, .of_forall u_pos⟩
  refine ⟨c, d, .of_forall <| by simpa [d], c_lim, ?_⟩
  have Hle n : ‖c n • d n‖ ≤ ‖r‖ * u n := by
    specialize u_pos n
    calc
      ‖c n • d n‖ ≤ (u n)⁻¹ * ‖r‖ * (u n * u n) := by
        simp only [c, norm_smul, norm_pow, pow_succ, norm_mul, d, ← dist_eq_norm']
        gcongr
        exacts [hm_le n, (hvu n).le]
      _ = ‖r‖ * u n := by field_simp [mul_assoc]
  refine squeeze_zero_norm Hle ?_
  simpa using tendsto_const_nhds.mul u_lim

/-- If `x` is not an accumulation point of `s, then the tangent cone of `s` at `x`
is a subset of `{0}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TangentCone/Variant8226b8e2e352e6272e2377f242b557f202e327f663b7d7fe8fc8c0b049d36cba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant8226b8e2e352e6272e2377f242b557f202e327f663b7d7fe8fc8c0b049d36cba.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c86e9a1c2ba086a6af497a8eada09eb109ebacb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
