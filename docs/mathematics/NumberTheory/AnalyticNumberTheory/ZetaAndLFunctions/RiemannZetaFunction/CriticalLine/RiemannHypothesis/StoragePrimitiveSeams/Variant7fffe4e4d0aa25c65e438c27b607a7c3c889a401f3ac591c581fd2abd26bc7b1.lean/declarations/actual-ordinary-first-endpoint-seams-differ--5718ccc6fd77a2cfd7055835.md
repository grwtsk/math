# actual_ordinary_first_endpoint_seams_differ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:590358a0-3273-c1cb-2cf6-04bd8ef19cec",
  "kind": "theorem",
  "lexical_name": "actual_ordinary_first_endpoint_seams_differ",
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
  "slug": "actual-ordinary-first-endpoint-seams-differ--5718ccc6fd77a2cfd7055835",
  "source": {
    "blob": "0f379f131ad7d861e4823b3dc6be831ec3951d72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StoragePrimitiveSeams/Variant7fffe4e4d0aa25c65e438c27b607a7c3c889a401f3ac591c581fd2abd26bc7b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5718ccc6fd77a2cfd7055835925fdf0fdfe4eb5d30cc6ff20553546063df7455",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StoragePrimitiveSeams/Variant7fffe4e4d0aa25c65e438c27b607a7c3c889a401f3ac591c581fd2abd26bc7b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:590358a0-3273-c1cb-2cf6-04bd8ef19cec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_ordinary_first_endpoint_seams_differ :
    closedPrimitive ordinaryPrimeCoefficient 2 = 0 ∧
      cumulativeDiscrepancy ordinaryPrimeCoefficient 2 < 0 := by
  constructor
  · norm_num [closedPrimitive, finitePrimitive]
  · norm_num [cumulativeDiscrepancy]
    rw [ordinaryPrimeCoefficient_at_source_index (by norm_num : 2 ≤ 2)]
    norm_num
    have h := Real.log_lt_sub_one_of_pos (by norm_num : (0 : ℝ) < 2) (by norm_num : (2 : ℝ) ≠ 1)
    linarith

/-- The two atom comparison in this module, with the following exact parameterization.

def twoAtomComparison (n : ℕ) : ℝ := if n = 2 then 1 else if n = 3 then -1 else 0
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StoragePrimitiveSeams/Variant7fffe4e4d0aa25c65e438c27b607a7c3c889a401f3ac591c581fd2abd26bc7b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StoragePrimitiveSeams/Variant7fffe4e4d0aa25c65e438c27b607a7c3c889a401f3ac591c581fd2abd26bc7b1.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f379f131ad7d861e4823b3dc6be831ec3951d72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
