# angular_plancherel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52f1c3dd72eb7a155f31a572700ad6701a0729fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a70498b99a95b48b6d9949f8a476f4e6b7a22eacb42d7c972348db9947ea45c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c685f663-032c-73c5-df2c-4c0ea33587bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c79483c2-6cf0-396f-a2c1-845f5abea6da",
  "kind": "theorem",
  "lexical_name": "angular_plancherel",
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
  "slug": "angular-plancherel--38cbdaef35590a523d021cca",
  "source": {
    "blob": "52f1c3dd72eb7a155f31a572700ad6701a0729fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLinePlancherel/Varianta70498b99a95b48b6d9949f8a476f4e6b7a22eacb42d7c972348db9947ea45c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38cbdaef35590a523d021ccafab77557c8ff55d10127a58013f51376f1a6e3eb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLinePlancherel/Varianta70498b99a95b48b6d9949f8a476f4e6b7a22eacb42d7c972348db9947ea45c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c79483c2-6cf0-396f-a2c1-845f5abea6da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angular_plancherel (f : FullH) (hf : Integrable (f : ℝ → ℂ))
    (G : ℝ → ℂ) (hG : ∀ ξ : ℝ, 𝓕 (f : ℝ → ℂ) ξ = G (2 * Real.pi * ξ)) :
    Integrable (fun t : ℝ => ‖G t‖ ^ 2) ∧
      ‖f‖ ^ 2 = (1 / (2 * Real.pi)) * ∫ t : ℝ, ‖G t‖ ^ 2 := by
  have hπ : 0 < 2 * Real.pi := by positivity
  obtain ⟨hi, hn⟩ := fourier_integral_norm_sq f hf
  have he (t : ℝ) : G t = 𝓕 (f : ℝ → ℂ) ((2 * Real.pi)⁻¹ * t) := by
    rw [hG]
    congr 1
    field_simp
  have hGi : Integrable (fun t : ℝ => ‖G t‖ ^ 2) := by
    simpa only [he] using hi.comp_mul_left' (inv_ne_zero hπ.ne')
  refine ⟨hGi, ?_⟩
  rw [← hn]
  simp_rw [hG]
  simpa only [smul_eq_mul, one_div, abs_of_pos (inv_pos.mpr hπ)] using
    Measure.integral_comp_mul_left (fun t : ℝ => ‖G t‖ ^ 2) (2 * Real.pi)

end
end FullLinePlancherelScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLinePlancherel/Varianta70498b99a95b48b6d9949f8a476f4e6b7a22eacb42d7c972348db9947ea45c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLinePlancherel/Varianta70498b99a95b48b6d9949f8a476f4e6b7a22eacb42d7c972348db9947ea45c4.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52f1c3dd72eb7a155f31a572700ad6701a0729fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
