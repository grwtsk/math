# RefreshState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1c49b8dc88f9bb8bd7a26369228c2a6a9a95337aff1c5f24807c31c90eb5394",
  "kind": "structure",
  "lexical_name": "RefreshState",
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
  "slug": "refreshstate--fd92e9a9c863bf0d9b3ccb06",
  "source": {
    "blob": "83c7baf9958b2602042ea685855fa08b1f9f28e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefreshComponent/Variantc38676c3a67037e2a69e834eae68ac0613de683c5ebf3610e95a511fc1dfa807.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd92e9a9c863bf0d9b3ccb06117e4efc69ff4964baede438b054f56d7d40e4b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefreshComponent/Variantc38676c3a67037e2a69e834eae68ac0613de683c5ebf3610e95a511fc1dfa807.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1c49b8dc88f9bb8bd7a26369228c2a6a9a95337aff1c5f24807c31c90eb5394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RefreshState where
  /-- The HTML tree to display, stored as a delayed computation.

  We only force the thunk when the client requests it.
  This means that if several updates arrive in quick succession,
  only the ones that the client actually sees will be computed. -/
  curr : Thunk Html
  /-- Version of the current HTML tree.
  It should increase by `1` with each state update. -/
  idx : Nat
  /-- A task that resolves when this state has become out-of-date.
  It resolves with `some ()` if a new state is available,
  and with `none` if the display will never be updated again.

  It is implemented using `RefreshToken.promise.result?`,
  but we don't store the `Promise` here
  in order to make sure it can reach a refcount of 0. -/
  next : Task (Option Unit)
  deriving Inhabited

/-- A reference to a `RefreshState`.
Only exists because `TypeName` is not derivable for compound types. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefreshComponent/Variantc38676c3a67037e2a69e834eae68ac0613de683c5ebf3610e95a511fc1dfa807.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefreshComponent/Variantc38676c3a67037e2a69e834eae68ac0613de683c5ebf3610e95a511fc1dfa807.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83c7baf9958b2602042ea685855fa08b1f9f28e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
