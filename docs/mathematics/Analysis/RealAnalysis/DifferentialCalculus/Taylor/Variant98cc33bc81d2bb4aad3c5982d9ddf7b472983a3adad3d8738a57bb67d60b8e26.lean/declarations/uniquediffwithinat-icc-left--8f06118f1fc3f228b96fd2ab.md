# uniqueDiffWithinAt_Icc_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cd77652-4035-6434-0c8b-f787ca04d2bc",
  "kind": "lemma",
  "lexical_name": "uniqueDiffWithinAt_Icc_left",
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
  "slug": "uniquediffwithinat-icc-left--8f06118f1fc3f228b96fd2ab",
  "source": {
    "blob": "daa674e10401043ad9a6d9d86250f10900fcc053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f06118f1fc3f228b96fd2ab9610c996163c4f31e14f26658036a9961ecc0335",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cd77652-4035-6434-0c8b-f787ca04d2bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uniqueDiffWithinAt_Icc_left {c x : ℝ} (hcx : c < x) :
    UniqueDiffWithinAt ℝ (Set.Icc c x) c := by
  apply uniqueDiffWithinAt_convex (convex_Icc c x)
  · rw [interior_Icc]; exact Set.nonempty_Ioo.mpr hcx
  · rw [closure_Icc]; exact Set.left_mem_Icc.mpr (le_of_lt hcx)

/-- Unique differentiability at the right endpoint of a closed interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa674e10401043ad9a6d9d86250f10900fcc053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
