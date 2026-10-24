# _root_.GRWTSK.Analysis.FunctionalAnalysis.MontelSpace.Variantdd3aaa507a829587f304d6dc7598049f901d8353564f7037af91855cdc4672ad.ContinuousLinearEquiv.toCompactConvergenceCLM_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1af1c0ca-dd3a-702e-c48a-28bf39dec124",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.FunctionalAnalysis.MontelSpace.Variantdd3aaa507a829587f304d6dc7598049f901d8353564f7037af91855cdc4672ad.ContinuousLinearEquiv.toCompactConvergenceCLM_symm_apply",
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
  "slug": "root-grwtsk-analysis-functionalanalysis-montelspace-variantdd3aaa507a829--b7080450d2695d50f5614443",
  "source": {
    "blob": "7963cf22f3a9b7d9885f4d46001ee19eaeb8ca97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 136,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Montel/Variantc7117a6645b3dd1ed0a10f747d87cbb9feb232c79960587650757f0cd1aff189.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7080450d2695d50f5614443deb1ed65b3e4046b1dadba729fd5b333a87d8161",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Montel/Variantc7117a6645b3dd1ed0a10f747d87cbb9feb232c79960587650757f0cd1aff189.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1af1c0ca-dd3a-702e-c48a-28bf39dec124`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.FunctionalAnalysis.MontelSpace.Variantdd3aaa507a829587f304d6dc7598049f901d8353564f7037af91855cdc4672ad.ContinuousLinearEquiv.toCompactConvergenceCLM_symm_apply [T1Space E]
    [MontelSpace 𝕜₁ E] (f : E →SL_c[σ] F) (x : E) :
    (ContinuousLinearEquiv.toCompactConvergenceCLM σ E F).symm f x = f x := rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Montel/Variantc7117a6645b3dd1ed0a10f747d87cbb9feb232c79960587650757f0cd1aff189.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Montel/Variantc7117a6645b3dd1ed0a10f747d87cbb9feb232c79960587650757f0cd1aff189.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7963cf22f3a9b7d9885f4d46001ee19eaeb8ca97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
