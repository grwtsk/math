# native_translation_modulation_weyl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f61b5e96-06ca-6f2d-6bbd-75d7362ce145",
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
  "slug": "native-translation-modulation-weyl--e4adb11cdfa7954b1225885d",
  "source": {
    "blob": "2cd28f6077684cf7ea9267176dce9249d1b64818",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHContactNative/Variant19703d56a076e7ccacab3a42471f7e10047dafba64534a745c73a6257d5038ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4adb11cdfa7954b1225885d77f15e0b516892d31e2c3f9c766e5728e3d0838c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHContactNative/Variant19703d56a076e7ccacab3a42471f7e10047dafba64534a745c73a6257d5038ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f61b5e96-06ca-6f2d-6bbd-75d7362ce145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–77.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHContactNative/Variant19703d56a076e7ccacab3a42471f7e10047dafba64534a745c73a6257d5038ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHContactNative/Variant19703d56a076e7ccacab3a42471f7e10047dafba64534a745c73a6257d5038ca.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cd28f6077684cf7ea9267176dce9249d1b64818` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
