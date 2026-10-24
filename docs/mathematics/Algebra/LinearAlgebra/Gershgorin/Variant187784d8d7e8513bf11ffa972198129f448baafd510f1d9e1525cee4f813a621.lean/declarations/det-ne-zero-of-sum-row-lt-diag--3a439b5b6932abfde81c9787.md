# det_ne_zero_of_sum_row_lt_diag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8486ae53-794c-703c-aead-3fd935b6fd36",
  "kind": "theorem",
  "lexical_name": "det_ne_zero_of_sum_row_lt_diag",
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
  "slug": "det-ne-zero-of-sum-row-lt-diag--3a439b5b6932abfde81c9787",
  "source": {
    "blob": "349bd3a1691bec71501c989414534f6d6206bceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 69,
    "path": "GRWTSK/Algebra/LinearAlgebra/Gershgorin/Variant187784d8d7e8513bf11ffa972198129f448baafd510f1d9e1525cee4f813a621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a439b5b6932abfde81c9787914489541913a0cf4e940f9e1ecc712a594b7b8a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Gershgorin/Variant187784d8d7e8513bf11ffa972198129f448baafd510f1d9e1525cee4f813a621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8486ae53-794c-703c-aead-3fd935b6fd36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_ne_zero_of_sum_row_lt_diag (h : ∀ k, ∑ j in Finset.univ.erase k, ‖A k j‖ < ‖A k k‖) :
    A.det ≠ 0 := by
  contrapose! h
  suffices ∃ k, 0 ∈ Metric.closedBall (A k k) (∑ j in Finset.univ.erase k, ‖A k j‖) by
    exact this.imp (fun a h ↦ by rwa [mem_closedBall_iff_norm', sub_zero] at h)
  refine eigenvalue_mem_ball ?_
  rw [Module.End.HasEigenvalue,  Module.End.eigenspace_zero, ne_comm]
  exact ne_of_lt (LinearMap.bot_lt_ker_of_det_eq_zero (by rwa [LinearMap.det_toLin']))

/-- If `A` is a column strictly dominant diagonal matrix, then it's determinant is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Gershgorin/Variant187784d8d7e8513bf11ffa972198129f448baafd510f1d9e1525cee4f813a621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Gershgorin/Variant187784d8d7e8513bf11ffa972198129f448baafd510f1d9e1525cee4f813a621.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `349bd3a1691bec71501c989414534f6d6206bceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
