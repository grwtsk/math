# IsProper.lintegral_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c3707be-2c23-8abc-7480-696644858897",
  "kind": "lemma",
  "lexical_name": "IsProper.lintegral_mul",
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
  "slug": "isproper-lintegral-mul--8cbaa0d93aaf3bbae7cbc43e",
  "source": {
    "blob": "8403b187f6de49405ce22158d2b15d1aee8e6a84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 132,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cbaa0d93aaf3bbae7cbc43ec2ed0e6111f813a010db5942989aeb6bde189a13",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c3707be-2c23-8abc-7480-696644858897`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsProper.lintegral_mul (hπ : IsProper π) (h𝓑𝓧 : 𝓑 ≤ 𝓧) (hf : Measurable[𝓧] f)
    (hg : Measurable[𝓑] g) (x₀ : X) :
    ∫⁻ x, g x * f x ∂(π x₀) = g x₀ * ∫⁻ x, f x ∂(π x₀) := by
  refine hg.ennreal_induction ?_ ?_ ?_
  · rintro c A hA
    simp_rw [← smul_indicator_one_apply, smul_mul_assoc, smul_eq_mul]
    rw [lintegral_const_mul, hπ.lintegral_indicator_mul h𝓑𝓧 hf hA]
    · measurability
  · rintro g₁ g₂ - _ hg₂_meas hg₁ hg₂
    simp only [Pi.add_apply, mul_add, add_mul]
    rw [lintegral_add_right, hg₁, hg₂]
    · exact (hg₂_meas.mono h𝓑𝓧 le_rfl).mul hf
  · rintro g' hg'_meas hg'_mono hg'
    simp_rw [ENNReal.iSup_mul]
    rw [lintegral_iSup (fun n ↦ ((hg'_meas _).mono h𝓑𝓧 le_rfl).mul hf)
      (hg'_mono.mul_const (zero_le _))]
    simp_rw [hg']

end ProbabilityTheory.Kernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8403b187f6de49405ce22158d2b15d1aee8e6a84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
