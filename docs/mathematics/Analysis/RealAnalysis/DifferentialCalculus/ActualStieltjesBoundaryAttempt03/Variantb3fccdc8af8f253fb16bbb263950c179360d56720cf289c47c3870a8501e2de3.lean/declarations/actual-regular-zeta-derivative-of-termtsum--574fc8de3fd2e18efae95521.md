# actual_regular_zeta_derivative_of_termTSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8963f044-8181-e92c-80d4-bb7c4ad8e9b3",
  "kind": "theorem",
  "lexical_name": "actual_regular_zeta_derivative_of_termTSum",
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
  "slug": "actual-regular-zeta-derivative-of-termtsum--574fc8de3fd2e18efae95521",
  "source": {
    "blob": "b3233e8d2fc518d933e9e635427a2ee284efc484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variantb3fccdc8af8f253fb16bbb263950c179360d56720cf289c47c3870a8501e2de3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:574fc8de3fd2e18efae955210812e5136087d1baf9e34b103b490aa7bad5050b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variantb3fccdc8af8f253fb16bbb263950c179360d56720cf289c47c3870a8501e2de3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8963f044-8181-e92c-80d4-bb7c4ad8e9b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem actual_regular_zeta_derivative_of_termTSum
    (hF : HasDerivAt ZetaAsymptotics.termTSum
      (Real.eulerMascheroniConstant+firstStieltjesConstant-1) (1:ℝ)) :
    deriv riemannZeta₀ (1:ℂ) = -(firstStieltjesConstant:ℂ) := by
  have hreal := (actual_real_regular_derivative_of_termTSum hF).ofReal_comp.hasDerivWithinAt
    (s:=Ici (1:ℝ))
  have hright : HasDerivWithinAt (fun s : ℝ => riemannZeta₀ (s:ℂ))
      (-(firstStieltjesConstant:ℂ)) (Ici 1) 1 := by
    simpa only [Complex.ofReal_neg] using
      hreal.congr_of_mem (fun s hs => actual_regular_zeta_real_right hs) self_mem_Ici
  have hcomplex := (differentiable_riemannZeta₀ (1:ℂ)).hasDerivAt
  have hreald := hcomplex.comp_ofReal (z:= (1:ℝ))
  exact UniqueDiffWithinAt.eq_deriv (Ici (1:ℝ))
    ((uniqueDiffOn_Ici (1:ℝ)) 1 self_mem_Ici) hreald.hasDerivWithinAt hright

end ContinuousResearch.ActualStieltjesBoundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variantb3fccdc8af8f253fb16bbb263950c179360d56720cf289c47c3870a8501e2de3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variantb3fccdc8af8f253fb16bbb263950c179360d56720cf289c47c3870a8501e2de3.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3233e8d2fc518d933e9e635427a2ee284efc484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
