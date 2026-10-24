# lpNorm_smul_measure_of_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b2bce9d-50bb-c7a2-3bc1-63463d7ea0ab",
  "kind": "lemma",
  "lexical_name": "lpNorm_smul_measure_of_ne_top",
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
  "slug": "lpnorm-smul-measure-of-ne-top--5db58cb0b7636afa82176e71",
  "source": {
    "blob": "54c2683f0b3e0613206faa219f2b20000dce3f60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 240,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5db58cb0b7636afa82176e7118725cf29a65e0d4248cdc2910af1eef72fe45a5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b2bce9d-50bb-c7a2-3bc1-63463d7ea0ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lpNorm_smul_measure_of_ne_top (hp : p ≠ ∞) {f : α → E} (c : ℝ≥0) :
    lpNorm f p (c • μ) = c ^ p.toReal⁻¹ • lpNorm f p μ := by
  by_cases hf : AEStronglyMeasurable f μ
  · simp [← toReal_eLpNorm, hf, eLpNorm_smul_measure_of_ne_top' hp]
    simp [ENNReal.smul_def, NNReal.smul_def]
  obtain rfl | hp₀ := eq_or_ne p 0
  · simp
  obtain rfl | hc := eq_or_ne c 0
  · rw [NNReal.zero_rpow (by simp [ENNReal.toReal_eq_zero_iff, *])]
    simp
  rw [lpNorm_of_not_aestronglyMeasurable hf, lpNorm_of_not_aestronglyMeasurable fun h ↦ hf <| by
    simpa [hc] using h.smul_measure c⁻¹]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54c2683f0b3e0613206faa219f2b20000dce3f60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
