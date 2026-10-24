# rotation_paired_fourier_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c154cd5aa3fdb7b51cfd0b9f6a8e207ccfcc107",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 437,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a970f4282ffdd84dea7f4376b130b2467a3425c22282837c8bafdb085ce1ee84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84978d03-a677-b4a8-70b2-6c7c52145f25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8894c4a-2914-c009-ef62-1f08d86af760",
  "kind": "theorem",
  "lexical_name": "rotation_paired_fourier_mass",
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
  "slug": "rotation-paired-fourier-mass--29b89df0a632eefa4fd5bd45",
  "source": {
    "blob": "3c154cd5aa3fdb7b51cfd0b9f6a8e207ccfcc107",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 437,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Varianta970f4282ffdd84dea7f4376b130b2467a3425c22282837c8bafdb085ce1ee84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29b89df0a632eefa4fd5bd45a80e88aa8d605a70284d9288aebd9fc310aabbd7",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Varianta970f4282ffdd84dea7f4376b130b2467a3425c22282837c8bafdb085ce1ee84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8894c4a-2914-c009-ef62-1f08d86af760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rotation_paired_fourier_mass {q : ComplexL2} (hq : reflection q = q)
    (c s : ℝ) (hu : c ^ 2 + s ^ 2 = 1) :
    ∀ᵐ ξ ∂volume, ξ ≠ 0 →
      ‖(𝓕 (rotationMap c s q) : ComplexL2) ξ‖ ^ 2 +
        ‖(𝓕 (rotationMap c s q) : ComplexL2) (-ξ)‖ ^ 2 =
      ‖(𝓕 q : ComplexL2) ξ‖ ^ 2 + ‖(𝓕 q : ComplexL2) (-ξ)‖ ^ 2 := by
  filter_upwards [rotation_even_fourier_coe_ae hq c s,
    (LinearIsometryEquiv.neg ℝ (E := ℝ)).measurePreserving.quasiMeasurePreserving.ae
      (rotation_even_fourier_coe_ae hq c s),even_fourier_coe_ae hq] with ξ hp hm he hξ
  change (𝓕 (rotationMap c s q) : ComplexL2) (-ξ) =
    ((c : ℂ)+(s : ℂ)*signSymbol (-ξ))*(𝓕 q : ComplexL2) (-ξ) at hm
  rw [hp,hm,he]
  rcases lt_or_gt_of_ne hξ with hn | hn
  · simp only [signSymbol,if_pos hn,if_neg (by linarith : ¬ -ξ < 0)]
    simp only [mul_neg,mul_one,← Complex.ofReal_neg,← Complex.ofReal_add,
      norm_mul,Complex.norm_real,Real.norm_eq_abs,mul_pow,sq_abs]
    linear_combination 2*‖(𝓕 q : ComplexL2) ξ‖ ^ 2*hu
  · simp only [signSymbol,if_neg (by linarith : ¬ ξ < 0),if_pos (by linarith : -ξ < 0)]
    simp only [mul_neg,mul_one,← Complex.ofReal_neg,← Complex.ofReal_add,
      norm_mul,Complex.norm_real,Real.norm_eq_abs,mul_pow,sq_abs]
    linear_combination 2*‖(𝓕 q : ComplexL2) ξ‖ ^ 2*hu

/-- Norm preservation and a vanished spectral half coexist at equal unit-circle coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Varianta970f4282ffdd84dea7f4376b130b2467a3425c22282837c8bafdb085ce1ee84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Varianta970f4282ffdd84dea7f4376b130b2467a3425c22282837c8bafdb085ce1ee84.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c154cd5aa3fdb7b51cfd0b9f6a8e207ccfcc107` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
