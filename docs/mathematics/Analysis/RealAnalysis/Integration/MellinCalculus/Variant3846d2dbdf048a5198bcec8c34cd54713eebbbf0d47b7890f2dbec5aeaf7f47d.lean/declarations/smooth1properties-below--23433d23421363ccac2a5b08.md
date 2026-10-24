# Smooth1Properties_below

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cceeef84-1906-5295-349c-bab815f363f2",
  "kind": "lemma",
  "lexical_name": "Smooth1Properties_below",
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
  "slug": "smooth1properties-below--23433d23421363ccac2a5b08",
  "source": {
    "blob": "57ff0ec1a5d72f2045d3e6c141a3287e476528ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 627,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant3846d2dbdf048a5198bcec8c34cd54713eebbbf0d47b7890f2dbec5aeaf7f47d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23433d23421363ccac2a5b08392debb9e4559b5798bbb5eba1710d13e07cd560",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MellinCalculus/Variant3846d2dbdf048a5198bcec8c34cd54713eebbbf0d47b7890f2dbec5aeaf7f47d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cceeef84-1906-5295-349c-bab815f363f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 627–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Smooth1Properties_below {ν : ℝ → ℝ} (suppν : ν.support ⊆ Icc (1 / 2) 2)
    (mass_one : ∫ x in Ioi 0, ν x / x = 1) :
    ∃ (c : ℝ), 0 < c ∧ c = Real.log 2 ∧
      ∀ (ε x) (_ : 0 < ε), 0 < x → x ≤ 1 - c * ε → Smooth1 ν ε x = 1 := by
  set c := Real.log 2; use c
  refine ⟨log_pos (by norm_num), rfl, ?_⟩
  intro ε x εpos xpos hx
  have hx2 := Smooth1Properties_below_aux hx εpos
  rewrite [← DeltaSpikeMass mass_one εpos]
  unfold Smooth1 MellinConvolution
  calc
    _ = ∫ (y : ℝ) in Ioi 0,
        indicator (Ioc 0 1) (fun y ↦ DeltaSpike ν ε (x / y) / ↑y) y := ?_
    _ = ∫ (y : ℝ) in Ioi 0, DeltaSpike ν ε (x / y) / y := ?_
    _ = _ := integral_comp_div_I0i_haar (fun y ↦ DeltaSpike ν ε y) xpos
  · rw [setIntegral_congr_fun (by simp)]
    intro y hy
    by_cases h : y ≤ 1 <;> simp [indicator, mem_Ioi.mp hy, h]
  · rw [setIntegral_congr_fun (by simp)]
    intro y hy
    have : y ≠ 0 := by
      rintro rfl
      simp at hy
    simp only [indicator_apply_eq_self, mem_Ioc, not_and, not_le, div_eq_zero_iff, this, or_false]
    intro hy2; replace hy2 := hy2 <| mem_Ioi.mp hy
    apply DeltaSpikeSupport εpos ?_ suppν
    · simp only [mem_Icc, not_and, not_le]; intro
      linarith [(by apply (div_lt_iff₀ (by linarith)).mpr; nlinarith : x / y < 2 ^ (-ε))]
    · rw [le_div_iff₀ (by linarith), zero_mul]; exact xpos.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MellinCalculus/Variant3846d2dbdf048a5198bcec8c34cd54713eebbbf0d47b7890f2dbec5aeaf7f47d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant3846d2dbdf048a5198bcec8c34cd54713eebbbf0d47b7890f2dbec5aeaf7f47d.lean#L627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57ff0ec1a5d72f2045d3e6c141a3287e476528ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
