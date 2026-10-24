# actualResidual_movingHead_signed_error_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d6b9813-72be-febb-1bae-bdb8ef31d21f",
  "kind": "theorem",
  "lexical_name": "actualResidual_movingHead_signed_error_tendsto",
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
  "slug": "actualresidual-movinghead-signed-error-tendsto--a069df297ab29534e018a355",
  "source": {
    "blob": "7339539d4fdcba3f5b0a2c366f17fa734c2148e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroHeadReduction/Variantbd11460b343d4d71b9c1284bd0464813bf4ecec97620ff415f04a136e776983e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a069df297ab29534e018a355cb4b725c50bcca61928a861a9d719368ce810776",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroHeadReduction/Variantbd11460b343d4d71b9c1284bd0464813bf4ecec97620ff415f04a136e776983e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d6b9813-72be-febb-1bae-bdb8ef31d21f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_movingHead_signed_error_tendsto (c : ℝ) (hc : 1 < c) :
    Tendsto (fun A : ℝ => mertensResidual A - (archimedeanMultiplier 0 -
      (actualZeroHeightHead A (actualBumpMovingHeight A c)).re) / 2) atTop (𝓝 0) := by
  have ha := actual_archimedean_tendsto_zero_frequency
  have ht := (Complex.continuous_re.tendsto 0).comp (actualZeroMovingTail_tendsto_zero c hc)
  have hlim := ((ha.sub_const (archimedeanMultiplier 0)).div_const 2).sub (ht.div_const 2)
  have hzero : Tendsto (fun A : ℝ =>
      (archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0) / 2 -
      (actualZeroHeightTail A (actualBumpMovingHeight A c)).re / 2) atTop (𝓝 0) := by
    simpa only [sub_self, zero_div, Complex.zero_re, Function.comp_apply] using hlim
  apply hzero.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  exact (actualResidual_sub_signedHead_eq hA (actualBumpMovingHeight A c)).symm

end
end FormalResearch.RiemannHypothesis.SourceActualSignedZeroHeadReduction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroHeadReduction/Variantbd11460b343d4d71b9c1284bd0464813bf4ecec97620ff415f04a136e776983e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroHeadReduction/Variantbd11460b343d4d71b9c1284bd0464813bf4ecec97620ff415f04a136e776983e.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7339539d4fdcba3f5b0a2c366f17fa734c2148e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
