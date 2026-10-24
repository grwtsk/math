# unitProfile_eq_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba1c72cc9860f2a027a994b6bac2d2e779a31f1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b12cb511fdd452e14bc73dad559a346ae807b383e10a6849daba328168f04bd5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4c90c67-f1e8-2689-ea55-3bf4993a96cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b3b3653-24d2-7980-bead-9d710d91d9b4",
  "kind": "theorem",
  "lexical_name": "unitProfile_eq_indicator",
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
  "slug": "unitprofile-eq-indicator--1f35f2769e55c0515058a497",
  "source": {
    "blob": "ba1c72cc9860f2a027a994b6bac2d2e779a31f1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 23,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/B12cb511fdd452e14bc7EstimateUnitProfileMass/Variantb12cb511fdd452e14bc73dad559a346ae807b383e10a6849daba328168f04bd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f35f2769e55c0515058a4979f077a8316a42d0487fe5de37102d5a35f566b74",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/B12cb511fdd452e14bc7EstimateUnitProfileMass/Variantb12cb511fdd452e14bc73dad559a346ae807b383e10a6849daba328168f04bd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b3b3653-24d2-7980-bead-9d710d91d9b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitProfile_eq_indicator (A : ℝ) (hA : 0 < A) :
    unitProfile A = (Icc (-1 : ℝ) 1).indicator
      (fun s ↦ (unitSecond s / A ^ 2 - unitBump s / 4) /
        Real.sqrt (sourceNormalization A)) := by
  funext s
  have hmem : A * s ∈ Icc (-A) A ↔ s ∈ Icc (-1 : ℝ) 1 := by
    constructor
    · rintro ⟨hl, hr⟩
      exact ⟨(mul_le_mul_iff_right₀ hA).mp (by simpa only [mul_neg_one] using hl),
        (mul_le_mul_iff_right₀ hA).mp (by simpa only [mul_one] using hr)⟩
    · rintro ⟨hl, hr⟩
      exact ⟨by simpa only [mul_neg_one] using (mul_le_mul_iff_right₀ hA).mpr hl,
        by simpa only [mul_one] using (mul_le_mul_iff_right₀ hA).mpr hr⟩
  unfold unitProfile
  rw [normalizedTest_eq_indicator A hA]
  simp only [indicator_apply, hmem]
  by_cases hs : s ∈ Icc (-1 : ℝ) 1
  · simp only [hs, ite_true]
    dsimp [normalizedInterior, secondInterior, bumpInterior, unitSecond, unitBump]
    rw [mul_div_cancel_left₀ s hA.ne']
    have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
    field_simp [hA.ne', Real.sqrt_ne_zero'.mpr hA, Real.sqrt_ne_zero'.mpr hZ]
  · simp [hs]

/-- Finite integral of the actual source bump interior. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/B12cb511fdd452e14bc7EstimateUnitProfileMass/Variantb12cb511fdd452e14bc73dad559a346ae807b383e10a6849daba328168f04bd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/B12cb511fdd452e14bc7EstimateUnitProfileMass/Variantb12cb511fdd452e14bc73dad559a346ae807b383e10a6849daba328168f04bd5.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba1c72cc9860f2a027a994b6bac2d2e779a31f1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
