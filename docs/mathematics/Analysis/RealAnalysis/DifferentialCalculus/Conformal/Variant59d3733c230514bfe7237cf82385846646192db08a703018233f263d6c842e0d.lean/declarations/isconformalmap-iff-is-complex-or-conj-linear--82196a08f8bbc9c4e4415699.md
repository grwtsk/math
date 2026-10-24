# isConformalMap_iff_is_complex_or_conj_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84cfbbc806bc830dc50311927aae4cc6b0cc3e0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c8b4370-b678-5cb0-a3fc-72893b2aba6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c68668e-e996-558a-30a6-7d54ee731f07",
  "kind": "theorem",
  "lexical_name": "isConformalMap_iff_is_complex_or_conj_linear",
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
  "slug": "isconformalmap-iff-is-complex-or-conj-linear--82196a08f8bbc9c4e4415699",
  "source": {
    "blob": "84cfbbc806bc830dc50311927aae4cc6b0cc3e0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82196a08f8bbc9c4e4415699cb4a7d8092aadd51cae8178915f39f81bcce6ef5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c68668e-e996-558a-30a6-7d54ee731f07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isConformalMap_iff_is_complex_or_conj_linear :
    IsConformalMap g ↔
      ((∃ map : ℂ →L[ℂ] ℂ, map.restrictScalars ℝ = g) ∨
          ∃ map : ℂ →L[ℂ] ℂ, map.restrictScalars ℝ = g ∘L ↑conjCLE) ∧
        g ≠ 0 := by
  constructor
  · exact fun h => ⟨h.is_complex_or_conj_linear, h.ne_zero⟩
  · rintro ⟨⟨map, rfl⟩ | ⟨map, hmap⟩, h₂⟩
    · refine isConformalMap_complex_linear ?_
      contrapose! h₂ with w
      simp only [w, restrictScalars_zero]
    · have minor₁ : g = map.restrictScalars ℝ ∘L ↑conjCLE := by
        ext1
        simp only [hmap, coe_comp', ContinuousLinearEquiv.coe_coe, Function.comp_apply,
          conjCLE_apply, starRingEnd_self_apply]
      rw [minor₁] at h₂ ⊢
      refine isConformalMap_complex_linear_conj ?_
      contrapose! h₂ with w
      simp only [w, restrictScalars_zero, zero_comp]

end ConformalIntoComplexPlane

/-! ### Conformality of real-differentiable complex maps -/

section Conformality
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {z : ℂ} {f : ℂ → E}

/-- A real differentiable function of the complex plane into some complex normed space `E` is
conformal at a point `z` if it is holomorphic at that point with a nonvanishing differential.
This is a version of the Cauchy-Riemann equations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant59d3733c230514bfe7237cf82385846646192db08a703018233f263d6c842e0d.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84cfbbc806bc830dc50311927aae4cc6b0cc3e0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
