# hasSum_prod_fourierCoeffOn_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9181ef61-402f-8ce8-86c9-44c3f8db13b4",
  "kind": "theorem",
  "lexical_name": "hasSum_prod_fourierCoeffOn_unit",
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
  "slug": "hassum-prod-fouriercoeffon-unit--5ccff49be2ce1dae88673c2d",
  "source": {
    "blob": "37f98d21c77c6a9f8fa8e2ea26f3af5c9c13f8a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 57,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ccff49be2ce1dae88673c2d3ec4e22aa88ea3af6e3511278180d1745ed7274c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9181ef61-402f-8ce8-86c9-44c3f8db13b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_prod_fourierCoeffOn_unit
    {f g : ℝ → ℂ}
    (hf : MemLp f 2 (volume.restrict (Ioc (0 : ℝ) 1)))
    (hg : MemLp g 2 (volume.restrict (Ioc (0 : ℝ) 1))) :
    HasSum
      (fun k : ℤ =>
        conj (fourierCoeffOn (show (0 : ℝ) < 1 by norm_num) f k) *
          fourierCoeffOn (show (0 : ℝ) < 1 by norm_num) g k)
      (∫ x in (0 : ℝ)..1, conj (f x) * g x) := by
  letI : Fact (0 < (1 : ℝ)) := Fact.mk zero_lt_one
  have hfLift := hf.memLp_liftIoc.haarAddCircle
  have hgLift := hg.memLp_liftIoc.haarAddCircle
  have h :=
    hasSum_prod_fourierCoeff_unitCircle hfLift.toLp hgLift.toLp
  convert h using 1
  · funext k
    simp [fourierCoeff_congr_ae hfLift.coeFn_toLp,
      fourierCoeff_congr_ae hgLift.coeFn_toLp,
      fourierCoeff_liftIoc_eq]
  · rw [← AddCircle.integral_haarAddCircle]
    rw [← AddCircle.integral_liftIoc_eq_intervalIntegral
      (T := (1 : ℝ)) (t := (0 : ℝ))
      (f := fun x => conj (f x) * g x)]
    apply integral_congr_ae
    filter_upwards [hfLift.coeFn_toLp, hgLift.coeFn_toLp] with x hx hy
    simp [hx, hy]

/-- The slope of every ComplexTest is L2 on the unit interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37f98d21c77c6a9f8fa8e2ea26f3af5c9c13f8a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
