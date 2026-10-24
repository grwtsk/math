# AnalyticAt.analyticOrderAt_deriv_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44631256-c9b6-0fc0-4512-9bed5666cf41",
  "kind": "theorem",
  "lexical_name": "AnalyticAt.analyticOrderAt_deriv_add_one",
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
  "slug": "analyticat-analyticorderat-deriv-add-one--a8036a11b1227ffe907165f0",
  "source": {
    "blob": "91c0435f282bf65f8d121392325982d509863ccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 270,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8036a11b1227ffe907165f00363a47d589966f58c69a8eafb61732aef36bd60",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44631256-c9b6-0fc0-4512-9bed5666cf41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticAt.analyticOrderAt_deriv_add_one {x : 𝕜} (hf : AnalyticAt 𝕜 f x)
    [CompleteSpace E] [CharZero 𝕜] :
    analyticOrderAt (deriv f) x + 1 = analyticOrderAt (f · - f x) x := by
  generalize h : analyticOrderAt (f · - f x) x = r
  cases r with
  | top =>
    suffices analyticOrderAt (deriv f) x = ⊤ by simp_all
    simp only [analyticOrderAt_eq_top, sub_eq_zero] at h ⊢
    obtain ⟨U, hUf, hUo, hUx⟩ := eventually_nhds_iff.mp h
    filter_upwards [hUo.mem_nhds hUx] with y hy
    simp [(eventuallyEq_of_mem (hUo.mem_nhds hy) hUf).deriv_eq]
  | coe r =>
    have hrne : r ≠ 0 := by
      intro hr
      rw [hr, ENat.natCast_zero, AnalyticAt.analyticOrderAt_eq_zero (by fun_prop)] at h
      grind
    obtain ⟨s, rfl⟩ := Nat.exists_add_one_eq.mpr (Nat.pos_of_ne_zero hrne)
    rw [Nat.cast_succ]
    congr 1
    rw [analyticOrderAt_eq_natCast (by fun_prop)] at h
    obtain ⟨F, hFa, hFne, hfF⟩ := h
    simp only [sub_eq_iff_eq_add] at hfF
    obtain ⟨U, hUf, hUo, hUx⟩ := eventually_nhds_iff.mp (hfF.and hFa.eventually_analyticAt)
    have : ∀ y ∈ U, deriv f y =
        (y - x) ^ (s + 1) • deriv F y + (s + 1) • (y - x) ^ s • F y := by
      intro y hy
      rw [EventuallyEq.deriv_eq (eventually_of_mem (hUo.mem_nhds hy) (fun u hu ↦ (hUf u hu).1)),
        deriv_add_const, deriv_fun_smul (by fun_prop) (hUf y hy).2.differentiableAt]
      simp [mul_smul, add_smul, Nat.cast_smul_eq_nsmul]
    rw [analyticOrderAt_congr (eventually_of_mem (hUo.mem_nhds hUx) this)]
    have : analyticOrderAt (fun y ↦ (s + 1) • (y - x) ^ s • F y) x = s := by
      rw [analyticOrderAt_eq_natCast]
      · refine ⟨fun z ↦ (↑(s + 1) : 𝕜) • F z, hFa.fun_const_smul, ?_, .of_forall fun y ↦ ?_⟩
        · simpa using ⟨by norm_cast, hFne⟩
        · simpa only [Nat.cast_smul_eq_nsmul] using smul_comm ..
      · simp_rw [← Nat.cast_smul_eq_nsmul 𝕜]
        fun_prop
    rwa [← Pi.add_def, analyticOrderAt_add_eq_right_of_lt]
    rw [this, ← ENat.add_one_le_iff (ENat.natCast_ne_top _), ← Nat.cast_add_one,
      natCast_le_analyticOrderAt (by fun_prop)]
    exact ⟨deriv F, hFa.deriv, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91c0435f282bf65f8d121392325982d509863ccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
