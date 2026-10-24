# exponential_bump_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ced4e152b9e61b4ec67b714d9bebc69575cdefce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffc19040-4e1b-c17c-822c-2b9698431033",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88ad9877-c89b-a7a0-8585-5ea7ae6f71e4",
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
  "slug": "exponential-bump-integral--3ff0a9db2b4dce08d4476683",
  "source": {
    "blob": "ced4e152b9e61b4ec67b714d9bebc69575cdefce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ff0a9db2b4dce08d44766836b779783a0e61d956bfb8ad5a98ef6419e0a3b2a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ad9877-c89b-a7a0-8585-5ea7ae6f71e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–75.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ced4e152b9e61b4ec67b714d9bebc69575cdefce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
