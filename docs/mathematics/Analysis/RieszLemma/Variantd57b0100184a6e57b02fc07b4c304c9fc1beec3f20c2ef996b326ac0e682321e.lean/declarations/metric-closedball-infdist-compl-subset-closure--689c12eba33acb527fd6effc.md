# Metric.closedBall_infDist_compl_subset_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e8f2504-815d-3677-4e80-c8c53619796a",
  "kind": "theorem",
  "lexical_name": "Metric.closedBall_infDist_compl_subset_closure",
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
  "slug": "metric-closedball-infdist-compl-subset-closure--689c12eba33acb527fd6effc",
  "source": {
    "blob": "9a7a498f7ada6362cdb5b84b5ed4ffd1f8697208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 121,
    "path": "GRWTSK/Analysis/RieszLemma/Variantd57b0100184a6e57b02fc07b4c304c9fc1beec3f20c2ef996b326ac0e682321e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:689c12eba33acb527fd6effc9037994ed437d80cfa37566dfccf05b6df57667c",
  "verification": {
    "reference": "docs/verification/Analysis/RieszLemma/Variantd57b0100184a6e57b02fc07b4c304c9fc1beec3f20c2ef996b326ac0e682321e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e8f2504-815d-3677-4e80-c8c53619796a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Metric.closedBall_infDist_compl_subset_closure {x : F} {s : Set F} (hx : x ∈ s) :
    closedBall x (infDist x sᶜ) ⊆ closure s := by
  rcases eq_or_ne (infDist x sᶜ) 0 with h₀ | h₀
  · rw [h₀, closedBall_zero']
    exact closure_mono (singleton_subset_iff.2 hx)
  · rw [← closure_ball x h₀]
    exact closure_mono ball_infDist_compl_subset

/--
A version of Riesz lemma: given a proper closed subspace `F`, one may find an element of norm `1`
which is at distance at least `r` of every element of `F`, for any `r < 1`.
For a version with weaker assumptions on the underlying field, see `riesz_lemma` or
`riesz_lemma_of_norm_lt`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RieszLemma/Variantd57b0100184a6e57b02fc07b4c304c9fc1beec3f20c2ef996b326ac0e682321e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RieszLemma/Variantd57b0100184a6e57b02fc07b4c304c9fc1beec3f20c2ef996b326ac0e682321e.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a7a498f7ada6362cdb5b84b5ed4ffd1f8697208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
