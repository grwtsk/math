# material_integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db0de815-432b-1af9-03a8-be3821f88f99",
  "kind": "theorem",
  "lexical_name": "material_integrand_integrable",
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
  "slug": "material-integrand-integrable--15c73315fcde6d6a26ab30c8",
  "source": {
    "blob": "ca7fa70f797788aa2f0162c3c26e24f5f65b3906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 187,
    "path": "GRWTSK/NumberTheory/Moebius/WeightedSummatoryIntegral.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15c73315fcde6d6a26ab30c81e9cf8db8059d39a218cce7291728b39585bf767",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/WeightedSummatoryIntegral.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db0de815-432b-1af9-03a8-be3821f88f99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem material_integrand_integrable (x : ℝ) :
    IntegrableOn (fun y ↦ mertens y / y ^ (3 / 2 : ℝ)) (Icc 1 x) := by
  have hcontinuous : ContinuousOn (fun y : ℝ ↦ y ^ (-(3 / 2 : ℝ))) (Icc 1 x) :=
    continuousOn_id.rpow_const
      (fun y hy ↦ Or.inl (lt_of_lt_of_le zero_lt_one hy.1).ne')
  have hweighted := integrableOn_mul_sum_Icc moebiusCoefficient zero_le_one
    hcontinuous.integrableOn_Icc (m := 1)
  apply hweighted.congr_fun ?_ measurableSet_Icc
  intro y hy
  change y ^ (-(3 / 2 : ℝ)) * mertens y = mertens y / y ^ (3 / 2 : ℝ)
  rw [Real.rpow_neg (lt_of_lt_of_le zero_lt_one hy.1).le]
  ring

/-- Unconditional finite integration identity at every real material endpoint.
It specializes Mathlib's proved Abel theorem using the actual Möbius coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/WeightedSummatoryIntegral.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/WeightedSummatoryIntegral.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca7fa70f797788aa2f0162c3c26e24f5f65b3906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
