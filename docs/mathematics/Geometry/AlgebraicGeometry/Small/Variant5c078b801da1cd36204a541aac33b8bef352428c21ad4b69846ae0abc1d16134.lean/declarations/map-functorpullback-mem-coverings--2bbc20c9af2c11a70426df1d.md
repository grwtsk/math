# map_functorPullback_mem_coverings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc24d99d-e8e0-8bc3-eece-31e1b9cd5bf8",
  "kind": "lemma",
  "lexical_name": "map_functorPullback_mem_coverings",
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
  "slug": "map-functorpullback-mem-coverings--2bbc20c9af2c11a70426df1d",
  "source": {
    "blob": "b2a28b851baa2e2769c24606de221a26d8a6bac9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 55,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Small/Variant5c078b801da1cd36204a541aac33b8bef352428c21ad4b69846ae0abc1d16134.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bbc20c9af2c11a70426df1d35a40c4e8b9c11985aaa8a20f38439ebeaef6033",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Small/Variant5c078b801da1cd36204a541aac33b8bef352428c21ad4b69846ae0abc1d16134.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc24d99d-e8e0-8bc3-eece-31e1b9cd5bf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma map_functorPullback_mem_coverings (hPQ : P ≤ Q) (X : Q.Over ⊤ S)
    {R : Presieve ((MorphismProperty.Over.forget Q ⊤ S).obj X)}
    (hR : R ∈ ((precoverage P).over S).coverings ((MorphismProperty.Over.forget Q ⊤ S).obj X)) :
    letI F := MorphismProperty.Over.forget Q ⊤ S
    (R.functorPullback F).map F ∈ ((precoverage P).over S).coverings (F.obj X) := by
  have hle : precoverage P ≤ Q.precoverage := fun _ _ hR _ _ hf ↦ hPQ _ (hR.2 hf)
  obtain ⟨T, rfl⟩ := MorphismProperty.exists_map_eq_of_presieve (precoverage P) hle hR
  simpa using hR

variable [P.IsStableUnderBaseChange]

/-- The presieve defined by a `P`-cover of `S`-schemes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Small/Variant5c078b801da1cd36204a541aac33b8bef352428c21ad4b69846ae0abc1d16134.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Small/Variant5c078b801da1cd36204a541aac33b8bef352428c21ad4b69846ae0abc1d16134.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2a28b851baa2e2769c24606de221a26d8a6bac9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
