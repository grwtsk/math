# actualMertensResidual_sub_head_real_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6756e117-0ca1-c21b-c4b6-cec5a3728b86",
  "kind": "theorem",
  "lexical_name": "actualMertensResidual_sub_head_real_abs_le",
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
  "slug": "actualmertensresidual-sub-head-real-abs-le--b664bf5e7e79469a8bf427bb",
  "source": {
    "blob": "97bfa3b583a7ed50d6c657ca89a35cc9be19c5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPrimeBumpDictionary/Variant6af91ce0dc98281dac6a2021e2b57a731342fd19a8460172c5ab07ac29012d0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b664bf5e7e79469a8bf427bb3367f24830e422b997201888af01e5bb327b058b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPrimeBumpDictionary/Variant6af91ce0dc98281dac6a2021e2b57a731342fd19a8460172c5ab07ac29012d0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6756e117-0ca1-c21b-c4b6-cec5a3728b86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMertensResidual_sub_head_real_abs_le {A c : ℝ}
    (hA : 1 ≤ A) (hc : 1 < c) :
    |mertensResidual A - (actualInitialPrimeHead A c (actualBumpMovingHeight A c)).re| ≤
      actualBumpMovingTailConstant c / A^9 := by
  have hh := (Complex.abs_re_le_norm ((mertensResidual A : ℂ) -
    actualInitialPrimeHead A c (actualBumpMovingHeight A c))).trans
      (actualMertensResidual_sub_head_norm_le hA hc)
  simpa only [Complex.sub_re, Complex.ofReal_re] using hh

/-- Only the true real part of the signed growing head remains to bound from above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPrimeBumpDictionary/Variant6af91ce0dc98281dac6a2021e2b57a731342fd19a8460172c5ab07ac29012d0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPrimeBumpDictionary/Variant6af91ce0dc98281dac6a2021e2b57a731342fd19a8460172c5ab07ac29012d0c.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97bfa3b583a7ed50d6c657ca89a35cc9be19c5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
