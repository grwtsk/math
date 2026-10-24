# strong_law_aux6

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ddcf1107b0499008db6ae482ac58dbc3c446b02",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 599,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c5023d6-5857-5aac-1b6f-5ac80105b130",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:298ae966-3f54-7eed-081b-d442d0a1cd49",
  "kind": "theorem",
  "lexical_name": "strong_law_aux6",
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
  "slug": "strong-law-aux6--a402d71a5e672c2db4cf2277",
  "source": {
    "blob": "0ddcf1107b0499008db6ae482ac58dbc3c446b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 599,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a402d71a5e672c2db4cf2277970b93077b2b24f8a1dd6c2d880f5c5e34d2adfa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:298ae966-3f54-7eed-081b-d442d0a1cd49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strong_law_aux6 {c : ℝ} (c_one : 1 < c) :
    ∀ᵐ ω, Tendsto (fun n : ℕ => (∑ i in range ⌊c ^ n⌋₊, X i ω) / ⌊c ^ n⌋₊) atTop (𝓝 𝔼[X 0]) := by
  have H : ∀ n : ℕ, (0 : ℝ) < ⌊c ^ n⌋₊ := by
    intro n
    refine' zero_lt_one.trans_le _
    simp only [Nat.one_le_cast, Nat.one_le_floor_iff, one_le_pow_of_one_le c_one.le n]
  filter_upwards [strong_law_aux4 X hint hindep hident hnonneg c_one,
    strong_law_aux5 X hint hident hnonneg] with ω hω h'ω
  rw [← tendsto_sub_nhds_zero_iff, ← Asymptotics.isLittleO_one_iff ℝ]
  have L : (fun n : ℕ => ∑ i in range ⌊c ^ n⌋₊, X i ω - ⌊c ^ n⌋₊ * 𝔼[X 0]) =o[atTop] fun n =>
      (⌊c ^ n⌋₊ : ℝ) := by
    have A : Tendsto (fun n : ℕ => ⌊c ^ n⌋₊) atTop atTop :=
      tendsto_nat_floor_atTop.comp (tendsto_pow_atTop_atTop_of_one_lt c_one)
    convert hω.sub (h'ω.comp_tendsto A) using 1
    ext1 n
    simp only [Function.comp_apply, sub_sub_sub_cancel_left]
  convert L.mul_isBigO (isBigO_refl (fun n : ℕ => (⌊c ^ n⌋₊ : ℝ)⁻¹) atTop) using 1 <;>
  (ext1 n; field_simp [(H n).ne'])
#align probability_theory.strong_law_aux6 ProbabilityTheory.strong_law_aux6

/-- `Xᵢ` satisfies the strong law of large numbers along all integers. This follows from the
corresponding fact along the sequences `c^n`, and the fact that any integer can be sandwiched
between `c^n` and `c^(n+1)` with comparably small error if `c` is close enough to `1`
(which is formalized in `tendsto_div_of_monotone_of_tendsto_div_floor_pow`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ddcf1107b0499008db6ae482ac58dbc3c446b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
