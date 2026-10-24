# normalizedPrimitiveBump_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfe3d64e-ab12-9931-ce7b-8c92fa1d5048",
  "kind": "theorem",
  "lexical_name": "normalizedPrimitiveBump_square_integral",
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
  "slug": "normalizedprimitivebump-square-integral--0294878ffdf60468c15f33c0",
  "source": {
    "blob": "ae5ba436f69434a86cbf61fa68972140910f8d00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 363,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EnergyV1Prebytes/Variant40dfd1e4073b5d4cb5a241b7c0c330aca15f4203ea89a66e1d1818d0e18170d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0294878ffdf60468c15f33c0bab92b5f2d994af6454fbc54ec852eeb730eb596",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EnergyV1Prebytes/Variant40dfd1e4073b5d4cb5a241b7c0c330aca15f4203ea89a66e1d1818d0e18170d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfe3d64e-ab12-9931-ce7b-8c92fa1d5048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedPrimitiveBump_square_integral {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, normalizedPrimitiveBump A x ^ 2) =
      (65536 / 109395 : ℝ) / sourceNormalization A := by
  have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  simp_rw [normalizedPrimitiveBump, scaledBump, div_pow,
    Real.sq_sqrt hA.le, Real.sq_sqrt hZ.le]
  rw [integral_div, integral_div,
    Measure.integral_comp_div (fun x : ℝ ↦ sourceBump x ^ 2) A,
    sourceBump_square_integral]
  simp [abs_of_pos hA, smul_eq_mul, hA.ne']

/-- The derivative's exact energy retains the inverse square dilation factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EnergyV1Prebytes/Variant40dfd1e4073b5d4cb5a241b7c0c330aca15f4203ea89a66e1d1818d0e18170d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EnergyV1Prebytes/Variant40dfd1e4073b5d4cb5a241b7c0c330aca15f4203ea89a66e1d1818d0e18170d5.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae5ba436f69434a86cbf61fa68972140910f8d00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
