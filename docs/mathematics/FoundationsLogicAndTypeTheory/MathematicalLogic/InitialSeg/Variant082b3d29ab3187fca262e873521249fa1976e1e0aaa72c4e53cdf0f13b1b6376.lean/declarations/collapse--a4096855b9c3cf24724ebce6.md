# collapse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cccb5e2d60a544a4edcdea24c84201da38ab5c7ed057c780cf1cfa35db4a4ca4",
  "kind": "def",
  "lexical_name": "collapse",
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
  "slug": "collapse--a4096855b9c3cf24724ebce6",
  "source": {
    "blob": "4b77aefec8f680a4a7f796695c72ef241df2c7b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 551,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant082b3d29ab3187fca262e873521249fa1976e1e0aaa72c4e53cdf0f13b1b6376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4096855b9c3cf24724ebce646c6874f478ab859c41fb41c436e88baa62dc0e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant082b3d29ab3187fca262e873521249fa1976e1e0aaa72c4e53cdf0f13b1b6376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cccb5e2d60a544a4edcdea24c84201da38ab5c7ed057c780cf1cfa35db4a4ca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def collapse [IsWellOrder β s] (f : r ↪r s) : r ≼i s :=
  haveI := RelEmbedding.isWellOrder f
  ⟨RelEmbedding.ofMonotone (fun a => (collapseF f a).1) fun a b => collapseF.lt f, fun a b =>
    Acc.recOn (IsWellFounded.wf.apply b : Acc s b)
      (fun b _ _ a h => by
        rcases (@IsWellFounded.wf _ r).has_min { a | ¬s (collapseF f a).1 b }
          ⟨_, asymm h⟩ with ⟨m, hm, hm'⟩
        refine' ⟨m, ((@trichotomous _ s _ _ _).resolve_left hm).resolve_right
          (collapseF.not_lt f _ fun a' h' => _)⟩
        by_contra hn
        exact hm' _ hn h')
      a⟩
#align rel_embedding.collapse RelEmbedding.collapse

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant082b3d29ab3187fca262e873521249fa1976e1e0aaa72c4e53cdf0f13b1b6376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant082b3d29ab3187fca262e873521249fa1976e1e0aaa72c4e53cdf0f13b1b6376.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b77aefec8f680a4a7f796695c72ef241df2c7b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
