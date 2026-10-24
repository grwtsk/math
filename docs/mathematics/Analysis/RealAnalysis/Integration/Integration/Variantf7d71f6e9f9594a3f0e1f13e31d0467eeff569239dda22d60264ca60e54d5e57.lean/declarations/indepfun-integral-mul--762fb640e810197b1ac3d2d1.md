# IndepFun.integral_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "086aa988b14ec0f3ccc6a1ecb63843e8b14b2db4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d80c835-32cb-1839-5d7d-32bdbf6f710a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6501ca2-52d9-02eb-ec2e-6e9791d6c37d",
  "kind": "theorem",
  "lexical_name": "IndepFun.integral_mul",
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
  "slug": "indepfun-integral-mul--762fb640e810197b1ac3d2d1",
  "source": {
    "blob": "086aa988b14ec0f3ccc6a1ecb63843e8b14b2db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 269,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:762fb640e810197b1ac3d2d1bb660a24f802e9d02847c14e9f1e0c228a29fbd8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6501ca2-52d9-02eb-ec2e-6e9791d6c37d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IndepFun.integral_mul (hXY : IndepFun X Y μ) (hX : AEStronglyMeasurable X μ)
    (hY : AEStronglyMeasurable Y μ) : integral μ (X * Y) = integral μ X * integral μ Y := by
  by_cases h'X : X =ᵐ[μ] 0
  · have h' : X * Y =ᵐ[μ] 0 := by
      filter_upwards [h'X] with ω hω
      simp [hω]
    simp only [integral_congr_ae h'X, integral_congr_ae h', Pi.zero_apply, integral_const,
      Algebra.id.smul_eq_mul, mul_zero, zero_mul]
  by_cases h'Y : Y =ᵐ[μ] 0
  · have h' : X * Y =ᵐ[μ] 0 := by
      filter_upwards [h'Y] with ω hω
      simp [hω]
    simp only [integral_congr_ae h'Y, integral_congr_ae h', Pi.zero_apply, integral_const,
      Algebra.id.smul_eq_mul, mul_zero, zero_mul]
  by_cases h : Integrable (X * Y) μ
  · have HX : Integrable X μ := hXY.integrable_left_of_integrable_mul h hX hY h'Y
    have HY : Integrable Y μ := hXY.integrable_right_of_integrable_mul h hX hY h'X
    exact hXY.integral_mul_of_integrable HX HY
  · rw [integral_undef h]
    have I : ¬(Integrable X μ ∧ Integrable Y μ) := by
      rintro ⟨HX, HY⟩
      exact h (hXY.integrable_mul HX HY)
    rw [not_and_or] at I
    rcases I with I | I <;> simp [integral_undef I]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `086aa988b14ec0f3ccc6a1ecb63843e8b14b2db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
