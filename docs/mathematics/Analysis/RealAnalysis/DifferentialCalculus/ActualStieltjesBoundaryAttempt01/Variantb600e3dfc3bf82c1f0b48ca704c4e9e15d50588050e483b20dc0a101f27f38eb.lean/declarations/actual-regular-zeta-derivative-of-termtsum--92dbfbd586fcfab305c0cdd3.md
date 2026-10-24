# actual_regular_zeta_derivative_of_termTSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62ff8b48-b03d-d51e-4520-3d2663e1c017",
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
  "slug": "actual-regular-zeta-derivative-of-termtsum--92dbfbd586fcfab305c0cdd3",
  "source": {
    "blob": "ed6acd62ca82217b9bd6c44fe780347ef989d6e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt01/Variantb600e3dfc3bf82c1f0b48ca704c4e9e15d50588050e483b20dc0a101f27f38eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92dbfbd586fcfab305c0cdd3952f868c79e99c62c4ea83d09db811b86524c2ba",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt01/Variantb600e3dfc3bf82c1f0b48ca704c4e9e15d50588050e483b20dc0a101f27f38eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62ff8b48-b03d-d51e-4520-3d2663e1c017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–71.

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
    apply hreal.congr_of_mem (fun s hs => actual_regular_zeta_real_right hs) self_mem_Ici
  have hcomplex := (differentiable_riemannZeta₀ (1:ℂ)).hasDerivAt
  have hreald := hcomplex.comp_ofReal (z:= (1:ℝ))
  exact ((uniqueDiffOn_Ici (1:ℝ)) 1 self_mem_Ici).eq
    hreald.hasDerivWithinAt hright

end ContinuousResearch.ActualStieltjesBoundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt01/Variantb600e3dfc3bf82c1f0b48ca704c4e9e15d50588050e483b20dc0a101f27f38eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt01/Variantb600e3dfc3bf82c1f0b48ca704c4e9e15d50588050e483b20dc0a101f27f38eb.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed6acd62ca82217b9bd6c44fe780347ef989d6e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
