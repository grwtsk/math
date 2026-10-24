# closedDisk_norm_le_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f4488e6c632cd34e7021e8817e57fd3c7765ec0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6ecf4155d20e8db92b86fa3869e6f50bc448e7683bbe7bd969da9ee90da5446c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5b26ad7-1a90-4d95-dab6-8e6a1b5b5271",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b3e2187-9a58-698f-7bab-b1c60e99d1ee",
  "kind": "lemma",
  "lexical_name": "closedDisk_norm_le_boundary",
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
  "slug": "closeddisk-norm-le-boundary--1124189837789414080f9fea",
  "source": {
    "blob": "1f4488e6c632cd34e7021e8817e57fd3c7765ec0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 25,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant6ecf4155d20e8db92b86fa3869e6f50bc448e7683bbe7bd969da9ee90da5446c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1124189837789414080f9fea15eeec28eb7bd23722344c512d355a708aeff62d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant6ecf4155d20e8db92b86fa3869e6f50bc448e7683bbe7bd969da9ee90da5446c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b3e2187-9a58-698f-7bab-b1c60e99d1ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma closedDisk_norm_le_boundary (p : ZeroPoint) (r : ℝ) (hr : 0 < r)
    (hD : sphere (2 * (p.val - 1 / 2)) r ⊆ convergenceDomain)
    (hhol : ∀ o : RemainingOccurrence p, AnalyticOnNhd ℂ (sourceKernel (shiftedValue o.val))
      (closedBall (2 * (p.val - 1 / 2)) r))
    (o : RemainingOccurrence p) (s : ℂ) (hs : s ∈ closedBall (2 * (p.val - 1 / 2)) r) :
    ‖sourceKernel (shiftedValue o.val) s‖ ≤
      compactKernelNorm (sphere (2 * (p.val - 1 / 2)) r) o.val := by
  apply Complex.norm_le_of_forall_mem_frontier_norm_le (U := ball (2 * (p.val - 1 / 2)) r)
    isBounded_ball
  · apply DifferentiableOn.diffContOnCl
    rw [closure_ball _ hr.ne']
    exact (hhol o).differentiableOn
  · intro t ht
    exact norm_le_compactKernelNorm _ (isCompact_sphere _ _) hD o.val t
      (frontier_ball_subset_sphere ht)
  · simpa only [closure_ball _ hr.ne'] using hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant6ecf4155d20e8db92b86fa3869e6f50bc448e7683bbe7bd969da9ee90da5446c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Obligation3Remainder/Variant6ecf4155d20e8db92b86fa3869e6f50bc448e7683bbe7bd969da9ee90da5446c.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f4488e6c632cd34e7021e8817e57fd3c7765ec0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
