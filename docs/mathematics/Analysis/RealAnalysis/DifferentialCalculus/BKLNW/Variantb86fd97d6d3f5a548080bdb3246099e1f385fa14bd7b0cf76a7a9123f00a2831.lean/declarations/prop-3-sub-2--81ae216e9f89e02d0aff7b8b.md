# prop_3_sub_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0414f29-fcdc-b3cc-0379-95a99de29244",
  "kind": "theorem",
  "lexical_name": "prop_3_sub_2",
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
  "slug": "prop-3-sub-2--81ae216e9f89e02d0aff7b8b",
  "source": {
    "blob": "ffde19a257af38792c1e302adf6bb58acc6c98a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 310,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81ae216e9f89e02d0aff7b8b9b989673294e81b6bf04909d2a5142bc5629daae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0414f29-fcdc-b3cc-0379-95a99de29244`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_3_sub_2 (n : ℕ) (hn : n ≥ 4) : StrictAntiOn f (Set.Ico (2^n) (2^(n + 1))) := by
  have hlog2 : (0 : ℝ) < log 2 := log_pos one_lt_two
  have hfloor : ∀ x ∈ Set.Ico (2^n : ℝ) (2^(n+1)), ⌊log x / log 2⌋₊ = n := fun x ⟨hlo, hhi⟩ ↦ by
    rw [Nat.floor_eq_iff <| div_nonneg (log_pos <| lt_of_lt_of_le (by
      norm_cast; exact Nat.one_lt_two_pow (by omega)) hlo).le hlog2.le, le_div_iff₀ hlog2,
        div_lt_iff₀ hlog2]
    refine ⟨?_, ?_⟩
    · calc (n : ℝ) * log 2 = log ((2 : ℝ)^n) := (log_pow 2 n).symm
        _ ≤ log x := log_le_log (by positivity) hlo
    · calc log x < log ((2 : ℝ)^(n+1)) := log_lt_log (lt_of_lt_of_le (by positivity : (0 : ℝ) < 2^n) hlo) hhi
        _ = (↑n + 1) * log 2 := by rw [log_pow]; push_cast; ring
  intro a ha b hb hab
  simp only [f, hfloor a ha, hfloor b hb]
  refine sum_lt_sum (fun k hk ↦ ?_) ⟨4, mem_Icc.mpr ⟨by omega, by omega⟩, ?_⟩
  · rcases eq_or_ne k 3 with rfl | hk3
    · simp
    · have hk' : 3 < k := by simp only [mem_Icc] at hk; omega
      exact (rpow_lt_rpow_of_neg (lt_of_lt_of_le (by positivity) ha.1) hab
        (by have : (k:ℝ) > 3 := mod_cast hk'; field_simp; linarith)).le
  · exact rpow_lt_rpow_of_neg (lt_of_lt_of_le (by positivity) ha.1) hab (by norm_num)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffde19a257af38792c1e302adf6bb58acc6c98a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
