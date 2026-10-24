# exponential_bump_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d16c6f1-6d57-ae06-2fc0-3f76bf83a7cb",
  "kind": "theorem",
  "lexical_name": "exponential_bump_integral",
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
  "slug": "exponential-bump-integral--a6ca648eb6cadce265e57026",
  "source": {
    "blob": "224d6b5485d2673822244b2f715504855aa2b4a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant49a7c7867ef3c56ddd959dbb4be29d98f9c65808018f1da411a366beb5104a69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6ca648eb6cadce265e57026dc4c3d141f000ed5be7daaec87feb1f5ace556a0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant49a7c7867ef3c56ddd959dbb4be29d98f9c65808018f1da411a366beb5104a69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d16c6f1-6d57-ae06-2fc0-3f76bf83a7cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem exponential_bump_integral (z : ℂ) (hz : z ≠ 0) :
    (∫ x in (-1 : ℝ)..1, (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) *
      Complex.exp (z * (x : ℂ))) =
      384 / z ^ 9 * (Complex.exp z * (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105) -
        Complex.exp (-z) * (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105)) := by
  have hd (x : ℝ) := (endpoint_antiderivative z hz (x : ℂ)).comp_ofReal
  have heq (x : ℝ) : (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) = (1 - (x : ℂ) ^ 2) ^ 4 := by
    norm_cast
  simp_rw [heq]
  have hi : IntervalIntegrable (fun x : ℝ ↦ (1 - (x : ℂ) ^ 2) ^ 4 *
      Complex.exp (z * (x : ℂ))) volume (-1) 1 :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ ↦ hd x) hi]

  norm_num [endpointPrimitive]
  field_simp [hz]
  ring

end EndpointScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant49a7c7867ef3c56ddd959dbb4be29d98f9c65808018f1da411a366beb5104a69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant49a7c7867ef3c56ddd959dbb4be29d98f9c65808018f1da411a366beb5104a69.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224d6b5485d2673822244b2f715504855aa2b4a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
