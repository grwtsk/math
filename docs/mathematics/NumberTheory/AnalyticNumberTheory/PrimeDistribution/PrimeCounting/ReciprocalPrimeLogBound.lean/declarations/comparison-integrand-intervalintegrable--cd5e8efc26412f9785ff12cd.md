# comparison_integrand_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a414f4c9b65172ee88f81e297e55c2c4077c4c32",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fd192cf-5a01-9ef4-c26a-ca0beda357d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87d8678d-6536-27bf-4329-3873dfb74e2e",
  "kind": "theorem",
  "lexical_name": "comparison_integrand_intervalIntegrable",
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
  "slug": "comparison-integrand-intervalintegrable--cd5e8efc26412f9785ff12cd",
  "source": {
    "blob": "a414f4c9b65172ee88f81e297e55c2c4077c4c32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 112,
    "path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd5e8efc26412f9785ff12cd5464c7dda60d2f074191fd3399998d12451e21b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeLogBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87d8678d-6536-27bf-4329-3873dfb74e2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comparison_integrand_intervalIntegrable {x : ℝ} (hx : 2 ≤ x) :
    IntervalIntegrable (fun t : ℝ => countConstant * (t⁻¹ / Real.log t))
      volume 2 x := by
  rw [intervalIntegrable_iff_integrableOn_Icc_of_le hx]
  apply ContinuousOn.integrableOn_Icc
  intro z hz
  have hz0 : z ≠ 0 := by linarith [hz.1]
  have hz1 : 1 < z := by linarith [hz.1]
  have hlogne : Real.log z ≠ 0 := (Real.log_pos hz1).ne'
  exact (by fun_prop :
    ContinuousAt (fun t : ℝ => countConstant * (t⁻¹ / Real.log t)) z).continuousWithinAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeLogBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a414f4c9b65172ee88f81e297e55c2c4077c4c32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
