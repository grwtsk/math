# fourier_translation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f70ea4b77edb395fb06179e4f56f8af9d7d48ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 341,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/738b2abc5e1880a35e8e155ca71bc17920345e06dc3dc593e70c56b0c8d69765.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59a63baf-d99e-6960-10cd-21c65d7798b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6bdb2573-0fdb-e266-0d44-5e0c50bcf2e5",
  "kind": "theorem",
  "lexical_name": "fourier_translation",
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
  "slug": "fourier-translation--b189a2fdb3bdbe9eb35a58ad",
  "source": {
    "blob": "3f70ea4b77edb395fb06179e4f56f8af9d7d48ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 341,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant738b2abc5e1880a35e8e155ca71bc17920345e06dc3dc593e70c56b0c8d69765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b189a2fdb3bdbe9eb35a58ad0977b87c017216d0e93393e38106cb11f5958a4c",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant738b2abc5e1880a35e8e155ca71bc17920345e06dc3dc593e70c56b0c8d69765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bdb2573-0fdb-e266-0d44-5e0c50bcf2e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_translation (u : ℝ) (f : ComplexL2) :
    𝓕 (translation u f) = translationPhaseMultiplier u (𝓕 f) := by
  let P := fun f : ComplexL2 =>
    𝓕 (translation u f) = translationPhaseMultiplier u (𝓕 f)
  apply DenseRange.induction_on (p:=P)
    (SchwartzMap.denseRange_toLpCLM (E:=ℝ) (F:=ℂ) (p:=2)
      (μ:=volume) ENNReal.ofNat_ne_top) f
  · exact isClosed_eq
      ((Lp.fourierTransformₗᵢ ℝ ℂ).continuous.comp (translation u).continuous)
      ((translationPhaseMultiplier u).continuous.comp (Lp.fourierTransformₗᵢ ℝ ℂ).continuous)
  intro φ
  change 𝓕 (translation u (φ.toLp 2)) = translationPhaseMultiplier u (𝓕 (φ.toLp 2))
  rw [translation_toLp,SchwartzMap.toLp_fourier_eq,SchwartzMap.toLp_fourier_eq]
  apply Lp.ext
  filter_upwards [SchwartzMap.coeFn_toLp (𝓕 (φ.compSubConstCLM ℂ u)) 2,
    translationPhaseMultiplier_coe_ae u ((𝓕 φ).toLp 2),
    SchwartzMap.coeFn_toLp (𝓕 φ) 2] with ξ h1 h2 h3
  rw [h1,h2,h3]
  exact fourier_translation_function u φ ξ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant738b2abc5e1880a35e8e155ca71bc17920345e06dc3dc593e70c56b0c8d69765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant738b2abc5e1880a35e8e155ca71bc17920345e06dc3dc593e70c56b0c8d69765.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f70ea4b77edb395fb06179e4f56f8af9d7d48ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
