# withBotCoe_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f77a95f1-74e7-f913-2247-0ad2d2edb091",
  "kind": "theorem",
  "lexical_name": "withBotCoe_inj",
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
  "slug": "withbotcoe-inj--db0432a422d7dbc4c25c36ae",
  "source": {
    "blob": "5e5a9ada63881290200dc28f89489e5e8251589e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 284,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2e1e5b97c06f92a4259a2ddd4d7058ebb73a22f9e02470f6980a393104744e3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db0432a422d7dbc4c25c36ae40d05f7e8e070196f3d3b3229943605487f4dd74",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant2e1e5b97c06f92a4259a2ddd4d7058ebb73a22f9e02470f6980a393104744e3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f77a95f1-74e7-f913-2247-0ad2d2edb091`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withBotCoe_inj {I J : WithBot (Box ι)} : (I : Set (ι → ℝ)) = J ↔ I = J := by
  simp only [Subset.antisymm_iff, ← le_antisymm_iff, withBotCoe_subset_iff]

open scoped Classical in
/-- Make a `WithBot (Box ι)` from a pair of corners `l u : ι → ℝ`. If `l i < u i` for all `i`,
then the result is `⟨l, u, _⟩ : Box ι`, otherwise it is `⊥`. In any case, the result interpreted
as a set in `ι → ℝ` is the set `{x : ι → ℝ | ∀ i, x i ∈ Ioc (l i) (u i)}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant2e1e5b97c06f92a4259a2ddd4d7058ebb73a22f9e02470f6980a393104744e3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant2e1e5b97c06f92a4259a2ddd4d7058ebb73a22f9e02470f6980a393104744e3a.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e5a9ada63881290200dc28f89489e5e8251589e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
