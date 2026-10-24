# varphi_fourier_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3eda0585-dfce-edc6-7743-cd27c7776e2e",
  "kind": "theorem",
  "lexical_name": "varphi_fourier_decay",
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
  "slug": "varphi-fourier-decay--d4c301a3b1cccb6e7e3724da",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5285,
    "line": 5273,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4c301a3b1cccb6e7e3724dab4093f4167d16805c1e7b9e4fb3faa964d1aa173",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3eda0585-dfce-edc6-7743-cd27c7776e2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5273–5285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem varphi_fourier_decay (ν ε : ℝ) (hlam : ν ≠ 0) : IsBigO Filter.atTop (fun x:ℝ ↦ (𝓕 (ϕ_pm ν ε) x).re) (fun x:ℝ ↦ 1 / x ^ 2)  := by
  let C := (eVariationOn (deriv (ϕ_pm ν ε)) Set.univ).toReal / (2 * π) ^ 2
  have h_bound : ∀ x > 0, ‖𝓕 (ϕ_pm ν ε) x‖ ≤ C * ‖1 / x ^ 2‖ := by
    intro x hx
    have h_pd := prelim_decay_3 (ϕ_pm ν ε) (varphi_integ ν ε hlam) (varphi_abs ν ε hlam) (varphi_deriv_tv ν ε hlam) x (ne_of_gt hx)
    rw [mul_pow, ← div_div, norm_of_nonneg hx.le] at h_pd
    rw [Real.norm_eq_abs, abs_of_pos (by positivity), one_div]
    exact h_pd
  apply Asymptotics.IsBigO.of_bound C
  filter_upwards [Filter.eventually_gt_atTop (0 : ℝ)] with x hx
  have h_re_le_norm : ‖(𝓕 (ϕ_pm ν ε) x).re‖ ≤ ‖𝓕 (ϕ_pm ν ε) x‖ := Complex.abs_re_le_norm _
  exact h_re_le_norm.trans (h_bound x hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L5273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
