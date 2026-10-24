# nnrpow_le_self_of_nonneg_of_norm_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17e02fa58da3d7f0674fd239acf1669b361d648a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 615,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04a898efd80766ef42a94fda3e5fe5315f95c02039f9525142f9753ae6683366.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40e61f6b-604b-2866-7083-75c38874ffdd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:957b794b-81bc-b9c6-c9f3-e4fec480da21",
  "kind": "lemma",
  "lexical_name": "nnrpow_le_self_of_nonneg_of_norm_le_one",
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
  "slug": "nnrpow-le-self-of-nonneg-of-norm-le-one--9e9c09b35aa8dff6088c1b1b",
  "source": {
    "blob": "17e02fa58da3d7f0674fd239acf1669b361d648a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 615,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Order/Variant04a898efd80766ef42a94fda3e5fe5315f95c02039f9525142f9753ae6683366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e9c09b35aa8dff6088c1b1bfe689980a04c1a9cedbde923492335969c4caa4f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Order/Variant04a898efd80766ef42a94fda3e5fe5315f95c02039f9525142f9753ae6683366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:957b794b-81bc-b9c6-c9f3-e4fec480da21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 615–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nnrpow_le_self_of_nonneg_of_norm_le_one {e : A} (he0 : 0 ≤ e) (he1 : ‖e‖ ≤ 1)
    {n : ℝ≥0} (hn : 1 ≤ n) : e ^ n ≤ e := by
  conv_rhs => rw [← CFC.nnrpow_one e]
  exact nnrpow_le_nnrpow_of_nonneg_of_norm_le_one he0 he1 (by simp) hn

/-- If `e` is an element of the nonnegative closed unit ball, then `e * e ≤ e`, with equality
if `e` is an extreme point
(see `isStarProjection_iff_mem_extremePoints_setOfPred_nonneg_inter_unitClosedBall`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Order/Variant04a898efd80766ef42a94fda3e5fe5315f95c02039f9525142f9753ae6683366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Order/Variant04a898efd80766ef42a94fda3e5fe5315f95c02039f9525142f9753ae6683366.lean#L615).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17e02fa58da3d7f0674fd239acf1669b361d648a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
