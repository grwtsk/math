# getOldAliasInfo?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abf6b538615e43ec83ef66e47a9543ade4bdc5d0e1bc84393a7911e171ecf359",
  "kind": "def",
  "lexical_name": "getOldAliasInfo?",
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
  "slug": "getoldaliasinfo--c92412266ab40ced916c683e",
  "source": {
    "blob": "3fa9d7e69b3c8073f8329bd3e88db2b82d7f5079",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Alias/Variant1ff42d859838f1e3d453ede87d28b76c1206ef0f826fdf3b53a8736001350e70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c92412266ab40ced916c683ed999392c4f87840a1f24069ad6e70232add4c2fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Alias/Variant1ff42d859838f1e3d453ede87d28b76c1206ef0f826fdf3b53a8736001350e70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abf6b538615e43ec83ef66e47a9543ade4bdc5d0e1bc84393a7911e171ecf359`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getOldAliasInfo? [Monad m] [MonadEnv m] (name : Name) : m (Option AliasInfo) := do
  match ← getAliasInfo? name with
  | some (.plain n) => getOldAliasInfo? n
  | some (.forward n) =>
    if let some (.plain n') ← getOldAliasInfo? n then
      return some (.forward n')
    else
      return some (.forward n)
  | some (.reverse n) =>
    if let some (.plain n') ← getOldAliasInfo? n then
      return some (.reverse n')
    else
      return some (.reverse n)
  | none => return none

/-- Get the alias information for a name -/
@[deprecated "use `getAliasInfo?` or `getOldAliasInfo?` for the original behavior"
  (since := "2026-04-11")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Alias/Variant1ff42d859838f1e3d453ede87d28b76c1206ef0f826fdf3b53a8736001350e70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Alias/Variant1ff42d859838f1e3d453ede87d28b76c1206ef0f826fdf3b53a8736001350e70.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fa9d7e69b3c8073f8329bd3e88db2b82d7f5079` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
