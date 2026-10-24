# continuum_boundary_coordinate_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e21b5973-4b6f-d5eb-3b43-b22b09b04ba1",
  "kind": "theorem",
  "lexical_name": "continuum_boundary_coordinate_exact",
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
  "slug": "continuum-boundary-coordinate-exact--3342ec7eae05d977f1085ab4",
  "source": {
    "blob": "59ec5915b8dfee9c21e64d40e8e2eff231e0241c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 270,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3342ec7eae05d977f1085ab425322ca07eef7a9de11c62dba0042686f21be63e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e21b5973-4b6f-d5eb-3b43-b22b09b04ba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuum_boundary_coordinate_exact (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) *
        sourceCorrelation explicitSecondDerivative A t) =
      Real.exp A / A ^ 9 *
        (∫ y in (0 : ℝ)..2 * A, Real.exp (-y / 2) * boundaryKernel A y) := by
  let f : ℝ → ℝ := fun t ↦ Real.exp (t / 2) *
    sourceCorrelation explicitSecondDerivative A t
  calc
    _ = ∫ y in (0 : ℝ)..2 * A, f (2 * A - y) := by
      simpa only [sub_self, sub_zero] using
        (intervalIntegral.integral_comp_sub_left f (2 * A) (a := 0) (b := 2 * A)).symm
    _ = ∫ y in (0 : ℝ)..2 * A,
        (Real.exp A / A ^ 9) * (Real.exp (-y / 2) * boundaryKernel A y) := by
      apply intervalIntegral.integral_congr
      intro y _
      dsimp [f, boundaryKernel]
      rw [show (2 * A - y) / 2 = A + (-y / 2) by ring, Real.exp_add]
      field_simp
    _ = _ := intervalIntegral.integral_const_mul _ _

/-- The lower-power discrepancy is exactly its independently defined normalized boundary pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59ec5915b8dfee9c21e64d40e8e2eff231e0241c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
