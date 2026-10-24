# finiteTransform_comparison_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45229920-50cb-2e01-3452-78abad28da1d",
  "kind": "theorem",
  "lexical_name": "finiteTransform_comparison_ne_zero",
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
  "slug": "finitetransform-comparison-ne-zero--1cfe61e3886b1345ee10ddf1",
  "source": {
    "blob": "20fe8a99da89b6a04bad0ad69cb003285c7c5b42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 160,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cfe61e3886b1345ee10ddf16d320afa1e5633e337eb826a3cc0cfaf9f086ed3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45229920-50cb-2e01-3452-78abad28da1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteTransform_comparison_ne_zero {ι : Type*} (s : Finset ι)
    (weight : ι → ℝ) (location : ι → ℂ) {w M g η : ℝ} {p z actual : ℂ}
    (hw : 0 ≤ w) (hwrest : ∀ i ∈ s, 0 ≤ weight i)
    (hM : M = w + ∑ i ∈ s, weight i)
    (hsep : ∀ i ∈ s, g ≤ ‖location i - p‖)
    (hd : 0 < ‖z - p‖) (hdg : ‖z - p‖ < g)
    (herror : ‖actual - finiteTransform s weight location w p z‖ ≤ η)
    (hmargin : η < exclusionBound w M g ‖z - p‖) : actual ≠ 0 := by
  exact perturbative_ne_zero
    (finiteTransform_lower_bound s weight location hw hwrest hM hsep hd hdg)
    herror hmargin

/-- Exact positive two-atom example: total mass one, separation one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20fe8a99da89b6a04bad0ad69cb003285c7c5b42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
