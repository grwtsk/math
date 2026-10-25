# subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71b6c4ad1409b46bd9f5c1be41ed86dd9b14b5811768b6a8be3d753f15cedf1a",
  "kind": "def",
  "lexical_name": "subst",
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
  "slug": "subst--fe27989d4a8045d8da7bb23f",
  "source": {
    "blob": "6eb1bd574770be48d16b06b0e3048e9c0d3a6f48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe27989d4a8045d8da7bb23fbe984b4340e3f3d60589be9f77b7464ec788582d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71b6c4ad1409b46bd9f5c1be41ed86dd9b14b5811768b6a8be3d753f15cedf1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def subst (mvarId : MVarId) (h : FVarId) : MetaM MVarId :=
  mvarId.withContext do
    let type ← h.getType
    match (← matchEq? type) with
    | some _ => return (← substEq mvarId h).2
    | none => match (← matchHEq? type) with
      | some _ =>
        let (h', mvarId') ← heqToEq mvarId h
        if mvarId == mvarId' then
          substVar mvarId h
        else
          subst mvarId' h'
      | none => substVar mvarId h

/--
Given a goal `(a = b) → goal[b]`, creates a new goal `goal[a]`, clearing `b`.

This is essentially `intro h; subst h`, but in the case that `b` is a free variable and has no
forward dependencies implements this without introducing the equality, which can make a difference
in terms of performance.

If `substLHS = true`, assume `(a = b) → goal[a]` and create goal `goal[b]`, clearing `a`.

Also handles heterogeneous equalities in cases where `eq_of_heq` would apply.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb1bd574770be48d16b06b0e3048e9c0d3a6f48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
