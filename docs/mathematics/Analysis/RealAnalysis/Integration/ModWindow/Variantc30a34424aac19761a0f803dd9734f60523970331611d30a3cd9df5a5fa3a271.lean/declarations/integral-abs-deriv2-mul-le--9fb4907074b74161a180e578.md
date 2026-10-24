# integral_abs_deriv2_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "401612063d52225f560f886499cc0e07a3c7ba67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 267,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1452534-cb1e-4758-45e2-6902b0859760",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76c4776a-f9f8-8d84-a4b9-1bdbe7e38704",
  "kind": "theorem",
  "lexical_name": "integral_abs_deriv2_mul_le",
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
  "slug": "integral-abs-deriv2-mul-le--9fb4907074b74161a180e578",
  "source": {
    "blob": "401612063d52225f560f886499cc0e07a3c7ba67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 267,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fb4907074b74161a180e578a4ed720a54be52eae52276ec449d8ed1542472c1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76c4776a-f9f8-8d84-a4b9-1bdbe7e38704`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_deriv2_mul_le {F G : ℝ → ℝ} {L δ A' B' : ℝ} (hδ : 0 < δ)
    (hA' : 0 ≤ A') (hB' : 0 ≤ B')
    (hF : ContDiffOn ℝ 2 F (Ioo (-(L / 2 + δ)) (L / 2 + δ)))
    (hF0 : ∀ u, |u| ≤ L / 2 → |F u| ≤ 1) (hF1 : ∀ u, |u| ≤ L / 2 → |deriv F u| ≤ A')
    (hF2 : ∀ u, |u| ≤ L / 2 → |deriv (deriv F) u| ≤ B')
    (hG : ContDiff ℝ 2 G) (hGcs : HasCompactSupport G) (hGzero : ∀ u, L / 2 < |u| → G u = 0)
    (hH : ContDiff ℝ 2 (fun u => F u * G u)) (hHcs : HasCompactSupport (fun u => F u * G u)) :
    ∫ u, |deriv (deriv (fun u => F u * G u)) u|
      ≤ B' * (∫ u, |G u|) + 2 * A' * (∫ u, |deriv G u|) + ∫ u, |deriv (deriv G) u| := by
  set U : Set ℝ := Ioo (-(L / 2 + δ)) (L / 2 + δ) with hUdef
  have hU : IsOpen U := isOpen_Ioo
  set H : ℝ → ℝ := fun u => F u * G u with hHdef
  -- pointwise bound
  have hpt : ∀ u, |deriv (deriv H) u| ≤ B' * |G u| + 2 * A' * |deriv G u| + |deriv (deriv G) u| := by
    intro u
    rcases le_or_gt |u| (L / 2) with hu | hu
    · have huU : u ∈ U := by
        simp only [hUdef, mem_Ioo]; constructor <;> linarith [neg_abs_le u, le_abs_self u]
      rw [deriv2_mul_eq hU hF hG.contDiffOn huU]
      have h0 := hF0 u hu; have h1 := hF1 u hu; have h2 := hF2 u hu
      calc |deriv (deriv F) u * G u + 2 * (deriv F u * deriv G u) + F u * deriv (deriv G) u|
          ≤ |deriv (deriv F) u * G u| + |2 * (deriv F u * deriv G u)| + |F u * deriv (deriv G) u| :=
            abs_add_three _ _ _
        _ ≤ B' * |G u| + 2 * A' * |deriv G u| + |deriv (deriv G) u| := by
            rw [abs_mul, abs_mul, abs_mul, abs_mul, abs_two]
            have hg0 := abs_nonneg (G u); have hg1 := abs_nonneg (deriv G u)
            have hg2 := abs_nonneg (deriv (deriv G) u)
            have e1 : |deriv (deriv F) u| * |G u| ≤ B' * |G u| := mul_le_mul_of_nonneg_right h2 hg0
            have e2 : 2 * (|deriv F u| * |deriv G u|) ≤ 2 * A' * |deriv G u| := by
              nlinarith [mul_le_mul_of_nonneg_right h1 hg1]
            have e3 : |F u| * |deriv (deriv G) u| ≤ |deriv (deriv G) u| := by
              nlinarith [mul_le_mul_of_nonneg_right h0 hg2]
            linarith
    · have hV : IsOpen {v : ℝ | L / 2 < |v|} := continuous_abs.isOpen_preimage _ isOpen_Ioi
      have hz : ∀ v ∈ {v : ℝ | L / 2 < |v|}, H v = 0 := fun v hv => by
        simp only [hHdef, hGzero v hv, mul_zero]
      rw [(deriv2_eq_zero_of_eqOn hV hz hu).2, abs_zero]
      positivity
  -- integrability
  have hH2c : Continuous (deriv (deriv H)) := (hH.deriv' (n := 1)).continuous_deriv le_rfl
  have hG1c : Continuous (deriv G) := (hG.deriv' (n := 1)).continuous
  have hG2c : Continuous (deriv (deriv G)) := (hG.deriv' (n := 1)).continuous_deriv le_rfl
  have iH : Integrable (fun u => |deriv (deriv H) u|) := integrable_abs_of_cs hH2c hHcs.deriv.deriv
  have iG : Integrable (fun u => |G u|) := integrable_abs_of_cs hG.continuous hGcs
  have iG1 : Integrable (fun u => |deriv G u|) := integrable_abs_of_cs hG1c hGcs.deriv
  have iG2 : Integrable (fun u => |deriv (deriv G) u|) := integrable_abs_of_cs hG2c hGcs.deriv.deriv
  have iR : Integrable (fun u => B' * |G u| + 2 * A' * |deriv G u| + |deriv (deriv G) u|) :=
    ((iG.const_mul B').add (iG1.const_mul (2 * A'))).add iG2
  calc ∫ u, |deriv (deriv H) u|
      ≤ ∫ u, (B' * |G u| + 2 * A' * |deriv G u| + |deriv (deriv G) u|) := integral_mono iH iR hpt
    _ = B' * (∫ u, |G u|) + 2 * A' * (∫ u, |deriv G u|) + ∫ u, |deriv (deriv G) u| := by
        have s1 : ∫ u, (B' * |G u| + 2 * A' * |deriv G u| + |deriv (deriv G) u|)
            = (∫ u, (B' * |G u| + 2 * A' * |deriv G u|)) + ∫ u, |deriv (deriv G) u| :=
          integral_add ((iG.const_mul B').add (iG1.const_mul (2 * A'))) iG2
        have s2 : ∫ u, (B' * |G u| + 2 * A' * |deriv G u|)
            = (∫ u, B' * |G u|) + ∫ u, 2 * A' * |deriv G u| :=
          integral_add (iG.const_mul B') (iG1.const_mul (2 * A'))
        rw [s1, s2, integral_const_mul, integral_const_mul]

/-! ### the L¹ size of the taper and its square -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401612063d52225f560f886499cc0e07a3c7ba67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
