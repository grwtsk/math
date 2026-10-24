# boundary_analytic_order_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7084775-7d8e-a878-356b-019ba7f9d26d",
  "kind": "theorem",
  "lexical_name": "boundary_analytic_order_three",
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
  "slug": "boundary-analytic-order-three--5239e7f1eb5a73a4c15d1b38",
  "source": {
    "blob": "b2ddb7dba838e3b53cf81ee723923a6cfc373099",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 252,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant6927d21d2c6741474565db2602a0f055b1fb23b15172a1bd5ce799e864e4c852.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5239e7f1eb5a73a4c15d1b38a6f5a060bede861d3ce207e44e6ea780ab50e94b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant6927d21d2c6741474565db2602a0f055b1fb23b15172a1bd5ce799e864e4c852.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7084775-7d8e-a878-356b-019ba7f9d26d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_analytic_order_three {A : ℝ} (hA : 1 ≤ A) :
    analyticOrderAt (boundaryTransform A) 0 = (3 : ℕ) := by
  apply (boundary_analyticAt hA 0).analyticOrderAt_eq_natCast.mpr
  refine ⟨boundaryUnit A, (boundaryUnit_differentiable hA).analyticAt 0,
    boundaryUnit_ne_zero hA, Eventually.of_forall ?_⟩
  intro lambda
  simpa only [sub_zero,smul_eq_mul] using boundary_cubic_factor hA lambda

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant6927d21d2c6741474565db2602a0f055b1fb23b15172a1bd5ce799e864e4c852.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant6927d21d2c6741474565db2602a0f055b1fb23b15172a1bd5ce799e864e4c852.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2ddb7dba838e3b53cf81ee723923a6cfc373099` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
