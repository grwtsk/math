# one_sub_inv_analyticAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15db60a9-1c90-26b0-ee73-5177f52b50eb",
  "kind": "theorem",
  "lexical_name": "one_sub_inv_analyticAt",
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
  "slug": "one-sub-inv-analyticat--b829ec2902bf8522640503ac",
  "source": {
    "blob": "424ca5e4b241195a15f23c28b3f818cb72cabba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 46,
    "path": "GRWTSK/Analysis/ComplexAnalysis/HolomorphicFunctions/UnitDiskResolvent/Variant12a7d270/Analyticity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b829ec2902bf8522640503ac84a02f3fcf78a3009174a95fab152f81f01acae0",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicFunctions/UnitDiskResolvent/Variant12a7d270/Analyticity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15db60a9-1c90-26b0-ee73-5177f52b50eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_sub_inv_analyticAt
    {z : ℂ} (hz : ‖z‖ < 1) :
    AnalyticAt ℂ (fun w : ℂ => (1 - w)⁻¹) z := by
  have hne : (1 : ℂ) - z ≠ 0 := by
    intro h
    have hz1 : z = 1 := (sub_eq_zero.mp h).symm
    rw [hz1] at hz
    simp at hz
  have hsub : AnalyticAt ℂ (fun w : ℂ => 1 - w) z :=
    analyticAt_const.sub analyticAt_id
  exact hsub.inv hne

/-- The resolvent `z ↦ (1 - z)⁻¹` is analytic on a neighbourhood of every
point of the open unit ball. Stated with `AnalyticOnNhd`, the modern Mathlib
name for the pointwise-`AnalyticAt` notion previously called `AnalyticOn`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/ComplexAnalysis/HolomorphicFunctions/UnitDiskResolvent/Variant12a7d270/Analyticity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/HolomorphicFunctions/UnitDiskResolvent/Variant12a7d270/Analyticity.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `424ca5e4b241195a15f23c28b3f818cb72cabba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
