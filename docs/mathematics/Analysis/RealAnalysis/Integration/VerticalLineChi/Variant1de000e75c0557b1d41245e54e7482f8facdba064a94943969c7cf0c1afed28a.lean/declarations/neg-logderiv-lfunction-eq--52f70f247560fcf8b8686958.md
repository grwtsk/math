# neg_logDeriv_LFunction_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e5b72ee-4c25-8fa2-5631-13271fa9e4c2",
  "kind": "theorem",
  "lexical_name": "neg_logDeriv_LFunction_eq",
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
  "slug": "neg-logderiv-lfunction-eq--52f70f247560fcf8b8686958",
  "source": {
    "blob": "7b7033b926b715aa7d0952e5790330aaa2c56ca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 38,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52f70f247560fcf8b86869582a9feacd4a4b01b145ad0270c2046b8d1b71014d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e5b72ee-4c25-8fa2-5631-13271fa9e4c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_logDeriv_LFunction_eq (_hχ1 : χ ≠ 1) {s : ℂ} (hs : 1 < s.re) :
    -logDeriv χ.LFunction s = LSeries (fun n => (χ n : ℂ) * (Λ n : ℂ)) s := by
  have hds : deriv χ.LFunction s = deriv (LSeries (fun n => (χ n : ℂ))) s := by
    refine Filter.EventuallyEq.deriv_eq ?_
    refine Filter.eventuallyEq_iff_exists_mem.mpr ⟨{z | 1 < z.re},
      (isOpen_lt continuous_const continuous_re).mem_nhds hs, fun z hz => ?_⟩
    exact DirichletCharacter.LFunction_eq_LSeries χ hz
  have h2 := DirichletCharacter.LSeries_twist_vonMangoldt_eq χ hs
  rw [logDeriv, Pi.div_apply, hds, DirichletCharacter.LFunction_eq_LSeries χ hs]
  have h3 : (fun n : ℕ => (χ n : ℂ) * (Λ n : ℂ)) = (↗χ * ↗Λ : ℕ → ℂ) := by
    funext n
    simp [Pi.mul_apply]
  rw [h3, h2]
  ring

/-- Pointwise on the line: the integrand as a twisted tsum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7033b926b715aa7d0952e5790330aaa2c56ca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
