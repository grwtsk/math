# negative_laplace_analytic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68c4ab35-6ced-e4f6-723e-bc1ab8a9b9be",
  "kind": "theorem",
  "lexical_name": "negative_laplace_analytic",
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
  "slug": "negative-laplace-analytic--aa31ab7706acd49d146d0c8f",
  "source": {
    "blob": "f76ebc2a7f0fb2d3f50c0fbf323b500aa4452b37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Varianta9044b9290a11ab6713a6e15993c94eded2d245b64a6a7417bfa30cee4367e61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa31ab7706acd49d146d0c8fa30714f34164948fbe92c974ef910308d4287d5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Varianta9044b9290a11ab6713a6e15993c94eded2d245b64a6a7417bfa30cee4367e61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68c4ab35-6ced-e4f6-723e-bc1ab8a9b9be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_laplace_analytic (η : ℝ)
    (hη : IntegrableOn (fun A : ℝ ↦ Real.exp (-η * A) * negativeSource A) (Ioi 1))
    (s : ℂ) (hs : η < s.re) :
    AnalyticAt ℂ (fun z : ℂ ↦ ∫ A in Ioi (1 : ℝ),
      Complex.exp (-z * A) * (negativeSource A : ℂ)) s := by
  let f : ℝ → ℝ := fun A ↦ Real.exp (-η * A) * negativeSource A
  have hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ f A := by
    intro A hA
    exact mul_nonneg (Real.exp_pos _).le (negativeSource_nonneg A hA)
  have hz : 0 < (s - (η : ℂ)).re := by simpa using sub_pos.mpr hs
  have h := (laplace_analytic f hη hpos (s - (η : ℂ)) hz).comp
    (f := fun z : ℂ ↦ z - (η : ℂ)) (by fun_prop)
  convert h using 1
  funext z
  apply integral_congr_ae
  exact Eventually.of_forall (fun A ↦ (negative_tilt_eq η A z).symm)

#print axioms laplace_integrable
#print axioms laplace_analytic
#print axioms negative_tilt_eq
#print axioms negative_laplace_integrable
#print axioms negative_laplace_analytic

end
end NegativeDensityLaplaceScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Varianta9044b9290a11ab6713a6e15993c94eded2d245b64a6a7417bfa30cee4367e61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Varianta9044b9290a11ab6713a6e15993c94eded2d245b64a6a7417bfa30cee4367e61.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f76ebc2a7f0fb2d3f50c0fbf323b500aa4452b37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
