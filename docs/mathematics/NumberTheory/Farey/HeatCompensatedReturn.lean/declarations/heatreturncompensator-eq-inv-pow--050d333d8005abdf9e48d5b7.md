# heatReturnCompensator_eq_inv_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90837809-19e8-0981-171f-94e612bb9e7c",
  "kind": "theorem",
  "lexical_name": "heatReturnCompensator_eq_inv_pow",
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
  "slug": "heatreturncompensator-eq-inv-pow--050d333d8005abdf9e48d5b7",
  "source": {
    "blob": "f0e0329b9f0877b5fbdd08105279b873ada242c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 69,
    "path": "GRWTSK/NumberTheory/Farey/HeatCompensatedReturn.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:050d333d8005abdf9e48d5b71d32b7f2a817d4709a5765ef2443ce6b3a2a92c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/HeatCompensatedReturn.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90837809-19e8-0981-171f-94e612bb9e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heatReturnCompensator_eq_inv_pow (n : ℕ) :
    heatReturnCompensator n = (expandingEigenvalue⁻¹)^n := by
  have hpos : 0 < expandingEigenvalue :=
    lt_trans zero_lt_one expandingEigenvalue_gt_one
  unfold heatReturnCompensator returnHeatTime
  have hrewrite :
      -((n : ℝ) * Real.log expandingEigenvalue) =
        (n : ℝ) * (-Real.log expandingEigenvalue) := by ring
  rw [hrewrite, Real.exp_nat_mul, Real.exp_neg, Real.exp_log hpos]

/-- Compensate the ACTUAL selected expanding Farey/quotient observation
rather than an arbitrary invented four-phase signal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/HeatCompensatedReturn.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/HeatCompensatedReturn.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0e0329b9f0877b5fbdd08105279b873ada242c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
