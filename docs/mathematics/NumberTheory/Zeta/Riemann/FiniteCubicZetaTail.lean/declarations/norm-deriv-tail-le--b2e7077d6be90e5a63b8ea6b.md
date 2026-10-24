# norm_deriv_tail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:560ef5a8-842a-9b5f-3983-595172f55e2f",
  "kind": "theorem",
  "lexical_name": "norm_deriv_tail_le",
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
  "slug": "norm-deriv-tail-le--b2e7077d6be90e5a63b8ea6b",
  "source": {
    "blob": "b9a10655c573ec4c0242dee5c72dc304387ebc38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 99,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2e7077d6be90e5a63b8ea6b902cc4054e589ddce02ee01d095a6928099c3f94",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:560ef5a8-842a-9b5f-3983-595172f55e2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_deriv_tail_le (N : ℕ) (c : ℂ) (r : ℝ) (hr : 0 < r) (hc : r ≤ c.re) :
    ‖deriv (analyticTail N) c‖ ≤ diskBudget N c r / r := by
  have ha : AnalyticOnNhd ℂ (analyticTail N) (closedBall c r) := by
    intro s hs
    exact analyticAt_analyticTail N s (by linarith [re_nonneg_on_disk c s r hc hs])
  have hd : DiffContOnCl ℂ (analyticTail N) (ball c r) :=
    DiffContOnCl.mk_ball
      (fun s hs => (ha s (ball_subset_closedBall hs)).differentiableAt.differentiableWithinAt)
      (fun s hs => (ha s hs).continuousAt.continuousWithinAt)
  exact Complex.norm_deriv_le_of_forall_mem_sphere_norm_le hr hd
    (fun s hs => norm_tail_le_diskBudget N c r hr.le hc s (sphere_subset_closedBall hs))

/-- The two actual-source defects have different budgets. Raw zeta still excludes one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9a10655c573ec4c0242dee5c72dc304387ebc38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
