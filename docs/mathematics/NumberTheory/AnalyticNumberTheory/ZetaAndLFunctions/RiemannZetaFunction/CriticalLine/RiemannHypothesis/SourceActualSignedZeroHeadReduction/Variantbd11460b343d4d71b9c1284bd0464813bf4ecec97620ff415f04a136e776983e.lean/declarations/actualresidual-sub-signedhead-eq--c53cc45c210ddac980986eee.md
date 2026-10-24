# actualResidual_sub_signedHead_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:925e9a8e-07f4-27b1-b5ad-f5ae2940f8a6",
  "kind": "theorem",
  "lexical_name": "actualResidual_sub_signedHead_eq",
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
  "slug": "actualresidual-sub-signedhead-eq--c53cc45c210ddac980986eee",
  "source": {
    "blob": "7339539d4fdcba3f5b0a2c366f17fa734c2148e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroHeadReduction/Variantbd11460b343d4d71b9c1284bd0464813bf4ecec97620ff415f04a136e776983e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c53cc45c210ddac980986eee5c101f01ea1a557b3b2d5a2c679bd52ae16ac10a",
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

Occurrence: `result:925e9a8e-07f4-27b1-b5ad-f5ae2940f8a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_sub_signedHead_eq {A : ℝ} (hA : 1 ≤ A) (R : ℝ) :
    mertensResidual A - (archimedeanMultiplier 0 - (actualZeroHeightHead A R).re) / 2 =
      (archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0) / 2 -
        (actualZeroHeightTail A R).re / 2 := by
  have hr := actual_mertensResidual_eq_arch_re_sub_half_zero_re A (5 / 4) hA
    (by norm_num) (by norm_num)
  rw [actualArchimedeanLine_eq_half_original A (5 / 4) hA (by norm_num) (by norm_num)] at hr
  simp only [Complex.div_ofNat_re, Complex.ofReal_re] at hr
  have hh := congrArg Complex.re (actualFullZeroContribution_eq_head_add_tail A R hA)
  rw [Complex.add_re] at hh
  linarith

/-- Both one-sided residual costs retain the true finite head, all real scales and tail radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroHeadReduction/Variantbd11460b343d4d71b9c1284bd0464813bf4ecec97620ff415f04a136e776983e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroHeadReduction/Variantbd11460b343d4d71b9c1284bd0464813bf4ecec97620ff415f04a136e776983e.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7339539d4fdcba3f5b0a2c366f17fa734c2148e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
