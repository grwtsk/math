# coefficientOneForm_curveIntegral_segment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0f87e42-c048-5e60-98d8-739244ee2b73",
  "kind": "theorem",
  "lexical_name": "coefficientOneForm_curveIntegral_segment",
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
  "slug": "coefficientoneform-curveintegral-segment--5369f30a4019bdbe5ab48bed",
  "source": {
    "blob": "b1a6e64c9252bd21f11ae25ddde29eebe1ed3a47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 120,
    "path": "GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant221ef763aa477e176026a5e7927d441f7b2fcf85f4c989cc59c6b68dd2014ba6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5369f30a4019bdbe5ab48bed77936f659547615c00a4652aa2d0f2b21ab9cdd5",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/BranchSeamCell/Variant221ef763aa477e176026a5e7927d441f7b2fcf85f4c989cc59c6b68dd2014ba6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0f87e42-c048-5e60-98d8-739244ee2b73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficientOneForm_curveIntegral_segment (f : ℂ → ℂ) (a b : ℂ) :
    curveIntegral (coefficientOneForm f) (.segment a b) =
      ∫ u : ℝ in 0..1, f (AffineMap.lineMap a b u) * (b - a) := by
  rw [curveIntegral_segment]
  apply intervalIntegral.integral_congr
  intro u _
  simp [coefficientOneForm, mul_comm]

/-!
## Exact remaining goal

`four_seam_cells_cancel` closes the Poincare stack and all radial-seam
obligations.  The circular CA-03 target is not closed in this branch because
the concrete geometry still needs three kernel proofs:

1. construct four `C²` radial homotopies from the oriented square segments to
   four standard quarter-circle paths, with the open homotopy image outside
   the deleted closed disk;
2. identify the four shared radial connectors by path extensionality; and
3. normalize the four segment integrals to `rectangleBoundaryIntegral` and
   the four standard arc integrals to `circleIntegral`.

The last normalization is not available as a named curve-integral
reparameterization theorem in the pinned library.  It must be proved from
`curveIntegral_eq_intervalIntegral_deriv` and interval-integral substitution.
Accordingly this scratch file does **not** inhabit
`SingleHoleExcisionStatement` and makes no homology or homeomorphism claim.
-/

#print axioms four_seam_cells_cancel
#print axioms coefficientOneForm_curveIntegral_segment

end

end Surface.Core.ComplexAnalysis.CA03Scratch.BranchSeamCell
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/BranchSeamCell/Variant221ef763aa477e176026a5e7927d441f7b2fcf85f4c989cc59c6b68dd2014ba6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant221ef763aa477e176026a5e7927d441f7b2fcf85f4c989cc59c6b68dd2014ba6.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1a6e64c9252bd21f11ae25ddde29eebe1ed3a47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
