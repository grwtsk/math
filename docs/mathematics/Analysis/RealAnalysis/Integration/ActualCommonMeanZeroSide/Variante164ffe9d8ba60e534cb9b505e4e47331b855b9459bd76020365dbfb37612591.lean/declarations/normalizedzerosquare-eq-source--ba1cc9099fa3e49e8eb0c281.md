# normalizedZeroSquare_eq_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2343d218-8dab-8cfc-e755-1b60ab5b9c90",
  "kind": "theorem",
  "lexical_name": "normalizedZeroSquare_eq_source",
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
  "slug": "normalizedzerosquare-eq-source--ba1cc9099fa3e49e8eb0c281",
  "source": {
    "blob": "04610aa57ad3364645fae2bff4dd614c4ea7f3d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualCommonMeanZeroSide/Variante164ffe9d8ba60e534cb9b505e4e47331b855b9459bd76020365dbfb37612591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba1cc9099fa3e49e8eb0c281c823ed2f46d62de64f19935e95fcd8a0980905b2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualCommonMeanZeroSide/Variante164ffe9d8ba60e534cb9b505e4e47331b855b9459bd76020365dbfb37612591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2343d218-8dab-8cfc-e755-1b60ab5b9c90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedZeroSquare_eq_source {A : ℝ} (hA : 1 ≤ A) :
    normalizedZeroSquare A = (sourceQuadraticValue explicitSecondDerivative A : ℂ) := by
  have hid := FormalResearch.RiemannHypothesis.ZeroSide.Assembly.zero_side_identity A hA
  have hnorm : (Real.sqrt (sourceNormalization A) : ℂ)^2 = (sourceNormalization A : ℂ) := by
    norm_cast
    exact Real.sq_sqrt (source_normalization_pos A hA).le
  have he : (fun o : ZeroOccurrence => normalizedBilateral A (shiftedValue o)^2) =
      fun o => bilateralTransform A (shiftedValue o)^2 / (sourceNormalization A : ℂ) := by
    funext o
    rw [normalizedBilateral_eq_div, div_pow, hnorm]
  have hc : (sourceNormalization A : ℂ) ≠ 0 := by
    exact_mod_cast (ne_of_gt (source_normalization_pos A hA))
  unfold normalizedZeroSquare
  rw [he, tsum_div_const, ← hid.2.2.2.2, ← hid.2.2.2.1, Complex.ofReal_mul]
  exact mul_div_cancel_left₀ _ hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualCommonMeanZeroSide/Variante164ffe9d8ba60e534cb9b505e4e47331b855b9459bd76020365dbfb37612591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualCommonMeanZeroSide/Variante164ffe9d8ba60e534cb9b505e4e47331b855b9459bd76020365dbfb37612591.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04610aa57ad3364645fae2bff4dd614c4ea7f3d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
