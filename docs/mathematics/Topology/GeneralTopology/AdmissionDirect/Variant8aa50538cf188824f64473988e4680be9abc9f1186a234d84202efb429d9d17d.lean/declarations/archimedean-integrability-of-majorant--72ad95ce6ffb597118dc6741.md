# archimedean_integrability_of_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1446dafab483f9ad9fbaa3c3d9d50f56a10cfa2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8aa50538cf188824f64473988e4680be9abc9f1186a234d84202efb429d9d17d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5189d61-d97e-4738-9ae3-482b8cda84db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7f569cc-8acf-d9a5-4a6c-bfa1c314511a",
  "kind": "theorem",
  "lexical_name": "archimedean_integrability_of_majorant",
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
  "slug": "archimedean-integrability-of-majorant--72ad95ce6ffb597118dc6741",
  "source": {
    "blob": "c1446dafab483f9ad9fbaa3c3d9d50f56a10cfa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/AdmissionDirect/Variant8aa50538cf188824f64473988e4680be9abc9f1186a234d84202efb429d9d17d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72ad95ce6ffb597118dc6741d21c7cdfb7b8d49da6e412ff30ed905c9c3dd9b4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AdmissionDirect/Variant8aa50538cf188824f64473988e4680be9abc9f1186a234d84202efb429d9d17d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7f569cc-8acf-d9a5-4a6c-bfa1c314511a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem archimedean_integrability_of_majorant (h : LogarithmicMajorantObligation) :
    ArchimedeanIntegrabilityObligation := by
  obtain ⟨C₀, C₁, _, _, hbound⟩ := h
  intro A hA
  have hc := BridgeFourier.sourceFourier_continuous
    (normalizedTest_integrable A (by linarith))
  have hm : AEStronglyMeasurable (archimedeanIntegrand explicitSecondDerivative A) volume :=
    (actual_multiplier_continuous.mul (Complex.continuous_normSq.comp hc)).aestronglyMeasurable
  have hmajor := ((BridgeFourier.actual_fourier_square_integrable A hA).const_mul C₀).add
    ((BridgeFourier.actual_logarithmic_fourier_integrable A hA).const_mul C₁)
  apply hmajor.mono' hm
  filter_upwards [] with ξ
  dsimp only [archimedeanIntegrand]
  rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (Complex.normSq_nonneg _)]
  calc
    |archimedeanMultiplier ξ| *
        Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ξ) ≤
      (C₀ + C₁ * Real.log (1 + 4 * ξ ^ 2)) *
        Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ξ) :=
      mul_le_mul_of_nonneg_right (hbound ξ) (Complex.normSq_nonneg _)
    _ = _ := by simp only [Pi.add_apply]; ring

/-- A proved eventual majorant would close B3.1 after checked compact control.
The analytic premise remains explicit; this theorem alone does not close it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AdmissionDirect/Variant8aa50538cf188824f64473988e4680be9abc9f1186a234d84202efb429d9d17d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AdmissionDirect/Variant8aa50538cf188824f64473988e4680be9abc9f1186a234d84202efb429d9d17d.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1446dafab483f9ad9fbaa3c3d9d50f56a10cfa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
