# poleRemovedLFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:068abcb7ebe295a28edf2f40e692870ea58a1995e7d3fa983de6499b19cca530",
  "kind": "def",
  "lexical_name": "poleRemovedLFunction",
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
  "slug": "poleremovedlfunction--6bb6e391fd84241ea5332cd7",
  "source": {
    "blob": "df91d7524159d3a3852e3f9fb1c787f8d4426abf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 92,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bb6e391fd84241ea5332cd7d4c74263fc54bfe3c1bdb1f996d3ffd9f5596b8b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:068abcb7ebe295a28edf2f40e692870ea58a1995e7d3fa983de6499b19cca530`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def poleRemovedLFunction
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) : ℂ → ℂ :=
  by
    classical
    exact if chi = 1 then
      DirichletCharacter.LFunctionTrivChar₁ q
    else
      DirichletCharacter.LFunction chi

@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df91d7524159d3a3852e3f9fb1c787f8d4426abf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
