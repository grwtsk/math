# xi_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "401f1318bdac29d95211200b7315ce03b0c8f64d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 542,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15c79ddf-28c6-2a56-0d0e-835fee05b1cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7480ac8c-501a-2218-558e-9f7537653b99",
  "kind": "theorem",
  "lexical_name": "xi_two",
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
  "slug": "xi-two--c34d52979fbc8c3b6e125dad",
  "source": {
    "blob": "401f1318bdac29d95211200b7315ce03b0c8f64d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 542,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c34d52979fbc8c3b6e125dada9c837910a1c95ea6815afbba4f73247a17fe02d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7480ac8c-501a-2218-558e-9f7537653b99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_two : xi 2 = (Real.pi : ℂ) / 6 := by
  rw [xi_eq 2 (by norm_num) (by norm_num)]
  have hΓ : Complex.Gammaℝ 2 ≠ 0 := by
    rw [Complex.Gammaℝ_def]
    refine mul_ne_zero ?_ ?_
    · exact Complex.cpow_ne_zero_iff.mpr (Or.inl (by
        exact_mod_cast Real.pi_ne_zero))
    · rw [show (2:ℂ)/2 = 1 by norm_num, Complex.Gamma_one]
      norm_num
  have hz : riemannZeta 2 = completedRiemannZeta 2 / Complex.Gammaℝ 2 :=
    riemannZeta_def_of_ne_zero (by norm_num)
  have hΛ2 : completedRiemannZeta 2 = Complex.Gammaℝ 2 * riemannZeta 2 := by
    rw [hz]
    field_simp
  rw [hΛ2]
  have hΓval : Complex.Gammaℝ 2 = 1 / (Real.pi : ℂ) := by
    rw [Complex.Gammaℝ_def, show (2:ℂ)/2 = 1 by norm_num, Complex.Gamma_one, mul_one,
      show (-(2:ℂ))/2 = -1 by norm_num]
    rw [Complex.cpow_neg_one]
    norm_num
  have hζ2 : riemannZeta 2 = (Real.pi : ℂ) ^ 2 / 6 := riemannZeta_two
  rw [hΓval, hζ2]
  field_simp
  ring

/-- Γ(x) ≤ 24 on [1/4, 5] (recurrence to [2,4] + monotonicity on [2,∞) + Γ(4) = 6, Γ(5) = 24). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401f1318bdac29d95211200b7315ce03b0c8f64d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
