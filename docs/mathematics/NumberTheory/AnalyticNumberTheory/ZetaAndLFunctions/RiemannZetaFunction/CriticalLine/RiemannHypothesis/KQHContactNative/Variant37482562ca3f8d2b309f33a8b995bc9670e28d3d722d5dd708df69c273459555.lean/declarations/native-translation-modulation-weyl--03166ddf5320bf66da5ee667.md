# native_translation_modulation_weyl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fec49443-2035-fc7b-45c5-489cf5d7346a",
  "kind": "theorem",
  "lexical_name": "native_translation_modulation_weyl",
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
  "slug": "native-translation-modulation-weyl--03166ddf5320bf66da5ee667",
  "source": {
    "blob": "962c44d46f43545c0c180b5a3a83bcd63fdd7291",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHContactNative/Variant37482562ca3f8d2b309f33a8b995bc9670e28d3d722d5dd708df69c273459555.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03166ddf5320bf66da5ee667e61e5f840f66134236e5ba3f6486f7d815efeb3d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHContactNative/Variant37482562ca3f8d2b309f33a8b995bc9670e28d3d722d5dd708df69c273459555.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fec49443-2035-fc7b-45c5-489cf5d7346a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_translation_modulation_weyl (s v : ℝ) (f : ComplexL2) :
    translation s (translationPhaseMultiplier v f) =
      (Real.fourierChar (v*s) : ℂ) • translationPhaseMultiplier v (translation s f) := by
  apply Lp.ext
  filter_upwards [translation_coe_ae s (translationPhaseMultiplier v f),
    (measurePreserving_sub_right volume s).quasiMeasurePreserving.ae
      (translationPhaseMultiplier_coe_ae v f),
    translationPhaseMultiplier_coe_ae v (translation s f), translation_coe_ae s f,
    Lp.coeFn_smul (Real.fourierChar (v*s) : ℂ)
      (translationPhaseMultiplier v (translation s f))] with x ht hm hmt htf hs
  change (translationPhaseMultiplier v f) (x-s) = translationPhase v (x-s)*f (x-s) at hm
  rw [ht, hm, hs, hmt, htf, native_modulation_phase]
  simp [smul_eq_mul, mul_assoc]

end FormalResearch.PositiveAtlas.KQHContactNative
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHContactNative/Variant37482562ca3f8d2b309f33a8b995bc9670e28d3d722d5dd708df69c273459555.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHContactNative/Variant37482562ca3f8d2b309f33a8b995bc9670e28d3d722d5dd708df69c273459555.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `962c44d46f43545c0c180b5a3a83bcd63fdd7291` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
