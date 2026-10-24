# actual_density_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcd2470b1e9cab56a66e781f62bf6ab163d1978c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b46bbe5978bc328d653190a36c9748e64d5f5468d5ca33561f1d9846a4eea4e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b648e52-ef33-a832-39de-53691ff4fbe0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f895e1ba-fd3c-71a1-51b0-da6bddf63a8d",
  "kind": "theorem",
  "lexical_name": "actual_density_continuous",
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
  "slug": "actual-density-continuous--b777cbbd95c3938860d74353",
  "source": {
    "blob": "fcd2470b1e9cab56a66e781f62bf6ab163d1978c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 18,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative2/Variantb46bbe5978bc328d653190a36c9748e64d5f5468d5ca33561f1d9846a4eea4e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b777cbbd95c3938860d74353b640aa9793cf6385072dbd6c19531b51f4d9b5ed",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative2/Variantb46bbe5978bc328d653190a36c9748e64d5f5468d5ca33561f1d9846a4eea4e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f895e1ba-fd3c-71a1-51b0-da6bddf63a8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_density_continuous (A c : ℝ) (hc : 1 < c) :
    Continuous (actualRightBumpDensity A c) := by
  have hab : LSeries.abscissaOfAbsConv actualMangoldtCoefficients ≤ (1 : ℝ) := by
    apply LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable
    intro y hy
    exact ArithmeticFunction.LSeriesSummable_vonMangoldt (by simpa using hy)
  have hD : Continuous (fun t : ℝ =>
      LSeries actualMangoldtCoefficients ((c : ℂ) + (t : ℂ) * Complex.I)) := by
    apply continuous_iff_continuousAt.mpr
    intro t
    have hs : LSeries.abscissaOfAbsConv actualMangoldtCoefficients <
        ((c : ℂ) + (t : ℂ) * Complex.I).re := by
      apply lt_of_le_of_lt hab
      simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.I_re,
        Complex.I_im, Complex.ofReal_im, mul_zero, zero_mul, sub_zero, add_zero]
      exact_mod_cast hc
    exact (LSeries_hasDerivAt hs).continuousAt.comp (by fun_prop)
  have hB : Continuous bumpLaplace := by
    have he : bumpLaplace = bumpLaplaceMoment 0 := by
      funext z
      exact (bump_laplace_moment_zero z).symm
    rw [he]
    exact bump_laplace_moment_continuous 0
  have hb : Continuous (fun t : ℝ =>
      bumpLaplace ((A : ℂ) * ((c : ℂ) + (t : ℂ) * Complex.I - 1 / 2))) :=
    hB.comp (by fun_prop)
  unfold actualRightBumpDensity bumpMellinWeight
  fun_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative2/Variantb46bbe5978bc328d653190a36c9748e64d5f5468d5ca33561f1d9846a4eea4e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative2/Variantb46bbe5978bc328d653190a36c9748e64d5f5468d5ca33561f1d9846a4eea4e6.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcd2470b1e9cab56a66e781f62bf6ab163d1978c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
