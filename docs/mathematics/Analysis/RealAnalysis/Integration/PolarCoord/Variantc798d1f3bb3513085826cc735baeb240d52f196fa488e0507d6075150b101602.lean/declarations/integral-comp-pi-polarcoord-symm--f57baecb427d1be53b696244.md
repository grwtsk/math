# integral_comp_pi_polarCoord_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:387b18d8-3555-17f0-b0b7-854e40c87bbd",
  "kind": "theorem",
  "lexical_name": "integral_comp_pi_polarCoord_symm",
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
  "slug": "integral-comp-pi-polarcoord-symm--f57baecb427d1be53b696244",
  "source": {
    "blob": "3d97b2c8f2de125fda46237e7a714ffcb93bbd04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 270,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f57baecb427d1be53b69624418e7c8a756b84d8f03cd436390dcebf3bd5ca8a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:387b18d8-3555-17f0-b0b7-854e40c87bbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_comp_pi_polarCoord_symm {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : (ι → ℝ × ℝ) → E) :
    (∫ p in (Set.univ.pi fun _ : ι ↦ polarCoord.target),
      (∏ i, (p i).1) • f (fun i ↦ polarCoord.symm (p i))) = ∫ p, f p := by
  rw [← setIntegral_univ (f := f), ← setIntegral_congr_set pi_polarCoord_symm_target_ae_eq_univ]
  convert (integral_image_eq_integral_abs_det_fderiv_smul volume measurableSet_pi_polarCoord_target
    (fun p _ ↦ (hasFDerivAt_pi_polarCoord_symm p).hasFDerivWithinAt)
      injOn_pi_polarCoord_symm f).symm using 1
  refine setIntegral_congr_fun measurableSet_pi_polarCoord_target fun x hx ↦ ?_
  simp_rw [det_fderivPiPolarCoordSymm, Finset.abs_prod, abs_fst_of_mem_pi_polarCoord_target hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d97b2c8f2de125fda46237e7a714ffcb93bbd04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
