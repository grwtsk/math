# summable_dirichlet_fourier_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24400a16-4cfe-5d51-3786-6f8ea1670786",
  "kind": "lemma",
  "lexical_name": "summable_dirichlet_fourier_bound",
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
  "slug": "summable-dirichlet-fourier-bound--eeb0d0cf11666faf2ba17153",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 549,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeb0d0cf11666faf2ba17153a49e047c6eb30ee1059f154aaf1cd71abc24f2fb",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24400a16-4cfe-5d51-3786-6f8ea1670786`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 549–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma summable_dirichlet_fourier_bound
    {a : ℕ → ℂ} {T β : ℝ} (hT : 0 < T) (hβ : 1 < β)
    (ha : Summable (fun n ↦ ‖a n‖ / (n * log n ^ β)))
    {φ : ℝ → ℂ}
    (hφ_Fourier : ∃ C : ℝ, ∀ y : ℝ, y ≠ 0 → ‖𝓕 φ y‖ ≤ C / |y| ^ β)
    (x : ℝ) (hx : 0 < x) :
    Summable (fun (n : ℕ+) ↦ ‖(x : ℂ)‖ * (‖a n‖ / (n : ℝ)) * ‖𝓕 φ ((T / (2 * π)) * log (n / x))‖) := by
  apply summable_of_isBigO ((summable_pnat_iff_summable_nat (f := fun n ↦ ‖a n‖ / (n * log n ^ β))).mpr ha)
  have h_bigO_phi := fourier_decay_isO_log_rpow hβ hT hx hφ_Fourier
  have h_prod := (Asymptotics.isBigO_const_mul_self ‖(x : ℂ)‖ (fun n : ℕ+ ↦ ‖a n‖ / (n : ℝ)) Filter.atTop).mul h_bigO_phi
  let b (n : ℕ+) := ‖(x : ℂ)‖ * (‖a n‖ / (n : ℝ)) * ‖𝓕 φ ((T / (2 * π)) * log (↑n / x))‖
  have h_bigO_b : (fun n ↦ b n) =O[Filter.atTop] (fun n ↦ ‖a n‖ / (n * log n ^ β)) := by
    dsimp [b]
    apply (Asymptotics.isBigO_congr Filter.EventuallyEq.rfl _).mpr h_prod
    filter_upwards [Filter.eventually_ge_atTop (2 : ℕ+)] with n hn
    have h_log_pos : 0 < log (n : ℝ) :=
      log_pos (by exact_mod_cast (show 1 < (n : ℕ) from hn))
    rw [rpow_neg h_log_pos.le]; field_simp [h_log_pos.ne']
  rwa [pnat_atTop_eq_cofinite] at h_bigO_b

/-- Absolute convergence of the Dirichlet-Fourier series -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
