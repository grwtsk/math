# remainingDerivativeMass_not_eventually_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9c40866-4bea-3321-f0aa-79e0000e8313",
  "kind": "theorem",
  "lexical_name": "remainingDerivativeMass_not_eventually_bounded",
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
  "slug": "remainingderivativemass-not-eventually-bounded--d9daf13d205c92092d6ae360",
  "source": {
    "blob": "f04d87d6026b9309a4d4601014973e513906f303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRemainingVariationObstruction/Variant188de62f6c6ed3dccfdb59426071d6b0a66ead678f881ec6fda4e34d31d4a8ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9daf13d205c92092d6ae360458d65c9aafaddab9f292915bc89cef1eb96843a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRemainingVariationObstruction/Variant188de62f6c6ed3dccfdb59426071d6b0a66ead678f881ec6fda4e34d31d4a8ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9c40866-4bea-3321-f0aa-79e0000e8313`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remainingDerivativeMass_not_eventually_bounded :
    ¬ ∃ M R : ℝ, ∀ A : ℝ, 40 ≤ A → R ≤ A → remainingDerivativeMass A ≤ M := by
  rintro ⟨M, R, h⟩
  let A : ℝ := max 40 (max R (128 * (M + 2)))
  have h40 : 40 ≤ A := le_max_left _ _
  have hR : R ≤ A := (le_max_left _ _).trans (le_max_right _ _)
  have hM : 128 * (M + 2) ≤ A := (le_max_right _ _).trans (le_max_right _ _)
  have hlo := remainingDerivativeMass_linear_lower h40
  have hhi := h A h40 hR
  linarith

end FormalResearch.RiemannHypothesis.SourceRemainingVariationObstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRemainingVariationObstruction/Variant188de62f6c6ed3dccfdb59426071d6b0a66ead678f881ec6fda4e34d31d4a8ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRemainingVariationObstruction/Variant188de62f6c6ed3dccfdb59426071d6b0a66ead678f881ec6fda4e34d31d4a8ac.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f04d87d6026b9309a4d4601014973e513906f303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
