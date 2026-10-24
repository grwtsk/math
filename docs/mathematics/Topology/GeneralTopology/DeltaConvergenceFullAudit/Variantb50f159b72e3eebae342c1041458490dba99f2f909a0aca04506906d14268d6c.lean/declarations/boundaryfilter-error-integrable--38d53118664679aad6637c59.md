# boundaryFilter_error_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "292b58fd836a75873ca25c088a6c052be1bd611c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0bf6f44-3d89-a218-5a37-517a7c6b3424",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08628893-e9da-e47b-6a03-a74e5145eb2c",
  "kind": "theorem",
  "lexical_name": "boundaryFilter_error_integrable",
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
  "slug": "boundaryfilter-error-integrable--38d53118664679aad6637c59",
  "source": {
    "blob": "292b58fd836a75873ca25c088a6c052be1bd611c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38d53118664679aad6637c59c0ac438a6e6dc65f5e9f7462140648a43e173194",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08628893-e9da-e47b-6a03-a74e5145eb2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryFilter_error_integrable (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) :
    Integrable (fun t : ℝ =>
      ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ^ 2) := by
  have hm : Measurable (fun t : ℝ =>
      ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ^ 2) := by
    unfold boundaryFilter
    have hw := W_continuous.measurable
    fun_prop
  apply (integrable_inv_one_add_sq.const_mul ((1 + 2 * Real.exp 1) ^ 2)).mono'
    hm.aestronglyMeasurable
  filter_upwards [] with t
  simpa only [Real.norm_eq_abs, abs_sq] using
    boundaryFilter_error_sq_le ε h t hε hsmall hh

/-- The prescribed normalized full-axis squared boundary distortion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `292b58fd836a75873ca25c088a6c052be1bd611c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
