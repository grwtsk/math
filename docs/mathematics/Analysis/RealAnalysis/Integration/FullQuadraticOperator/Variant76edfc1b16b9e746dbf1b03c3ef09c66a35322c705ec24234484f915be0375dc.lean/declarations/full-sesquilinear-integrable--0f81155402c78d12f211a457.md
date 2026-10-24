# full_sesquilinear_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a1edfa74e59acbb63af5e65023726b7fee1288a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:acc116a6-f33b-79b5-303a-2c555b353eea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a26fdf39-3e70-bb32-eccc-f90a6887f74e",
  "kind": "theorem",
  "lexical_name": "full_sesquilinear_integrable",
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
  "slug": "full-sesquilinear-integrable--0f81155402c78d12f211a457",
  "source": {
    "blob": "3a1edfa74e59acbb63af5e65023726b7fee1288a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 191,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f81155402c78d12f211a4573c7d587dcd2df045b032b35995130d16871789c1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a26fdf39-3e70-bb32-eccc-f90a6887f74e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_sesquilinear_integrable (A : ℝ) (f g : Hilbert)
    (hf : GammaFormDomain f) (hg : GammaFormDomain g) :
    Integrable (fun ξ ↦ (spectralMultiplier A ξ : ℂ) * conj (f ξ) * g ξ) volume := by
  have hm : AEStronglyMeasurable
      (fun ξ ↦ (spectralMultiplier A ξ : ℂ) * conj (f ξ) * g ξ) :=
    (Complex.continuous_ofReal.comp (spectral_multiplier_continuous A)).aestronglyMeasurable.mul
      (Complex.continuous_conj.comp_aestronglyMeasurable (Lp.aestronglyMeasurable f)) |>.mul
        (Lp.aestronglyMeasurable g)
  apply ((full_absolute_quadratic_integrable A f hf).add
    (full_absolute_quadratic_integrable A g hg)).mono' hm
  filter_upwards [] with ξ
  simp only [Pi.add_apply, norm_mul, Complex.norm_real, Real.norm_eq_abs, Complex.norm_conj]
  have hfg : ‖f ξ‖ * ‖g ξ‖ ≤ Complex.normSq (f ξ) + Complex.normSq (g ξ) := by
    simp only [Complex.normSq_eq_norm_sq]
    nlinarith [sq_nonneg (‖f ξ‖ - ‖g ξ‖), sq_nonneg ‖f ξ‖, sq_nonneg ‖g ξ‖]
  calc
    _ = |spectralMultiplier A ξ| * (‖f ξ‖ * ‖g ξ‖) := by ring
    _ ≤ |spectralMultiplier A ξ| * (Complex.normSq (f ξ) + Complex.normSq (g ξ)) :=
      mul_le_mul_of_nonneg_left hfg (abs_nonneg _)
    _ = _ := by ring

/-- The real complete multiplier gives Hermitian symmetry.
Genuine integrability on the common domain is proved separately. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a1edfa74e59acbb63af5e65023726b7fee1288a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
