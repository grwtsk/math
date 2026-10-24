# affinePowerPrimitive_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea3c72e7-1f42-28fc-564f-ad17632d6a4c",
  "kind": "theorem",
  "lexical_name": "affinePowerPrimitive_deriv",
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
  "slug": "affinepowerprimitive-deriv--32b4c04fae40116ef267d310",
  "source": {
    "blob": "3c01638c882fed0a2d4032ee54dc4f6052205d16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 52,
    "path": "GRWTSK/Analysis/Complex/TentHorizontalRayMajorant.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32b4c04fae40116ef267d31071423c74bdfe7173dd52ff9a9a18681a560eb33c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea3c72e7-1f42-28fc-564f-ad17632d6a4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affinePowerPrimitive_deriv (t A σ : ℝ) (ht : 1 < t) :
    HasDerivAt (affinePowerPrimitive t A)
      ((A + (2 - σ) / 2) * powerProfile t σ) σ := by
  have hc : Real.log t ≠ 0 := ne_of_gt (Real.log_pos ht)
  have he : HasDerivAt (powerProfile t) (powerProfile t σ * Real.log t) σ := by
    change HasDerivAt (fun u : ℝ => Real.exp ((u + 1) * Real.log t)) _ σ
    simpa [powerProfile, Pi.mul_def, id_eq] using ((((hasDerivAt_id σ).add_const 1).mul_const (Real.log t)).exp)
  have hd : HasDerivAt
      (fun u : ℝ => (A + (2 - u) / 2) / Real.log t + 1 / (2 * (Real.log t) ^ 2))
      (-1 / (2 * Real.log t)) σ := by
    convert (((((hasDerivAt_id σ).const_sub 2).div_const 2).const_add A).div_const
      (Real.log t)).add_const (1 / (2 * (Real.log t) ^ 2)) using 1 <;> first | rfl | ring
  change HasDerivAt (fun u => powerProfile t u *
    ((A + (2 - u) / 2) / Real.log t + 1 / (2 * (Real.log t) ^ 2))) _ σ
  apply (he.mul hd).congr_deriv
  field_simp [hc]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentHorizontalRayMajorant.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c01638c882fed0a2d4032ee54dc4f6052205d16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
