# classifyType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3272b037e0ccb9e946d2e4b8a128252d9a2d1718b973d92f2469b0c967ef341",
  "kind": "def",
  "lexical_name": "classifyType",
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
  "slug": "classifytype--65bddb799edf92286999247a",
  "source": {
    "blob": "d8c84672ab99d55573c74de9dfcc1d0754222eee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65bddb799edf92286999247a067102ead7a20bc6716909e8189b009f819d37a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3272b037e0ccb9e946d2e4b8a128252d9a2d1718b973d92f2469b0c967ef341`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def classifyType (ty : Expr) : MetaM Label :=
  forallTelescopeReducing ty fun _ ty => do
    let ty ← whnf ty
    let (lhs, rhs) ←
      if ty.isAppOfArity ``Eq 3 then pure (ty.getArg! 1, ty.getArg! 2)
      else if ty.isAppOfArity ``Iff 2 then pure (ty.getArg! 0, ty.getArg! 1)
      else throwError "norm_cast: lemma must be = or ↔, but is{indentExpr ty}"
    let lhsCoes ← countCoes lhs
    if lhsCoes = 0 then
      throwError "norm_cast: badly shaped lemma, lhs must contain at least one coe{indentExpr lhs}"
    let lhsHeadCoes ← countHeadCoes lhs
    let rhsHeadCoes ← countHeadCoes rhs
    let rhsInternalCoes ← countInternalCoes rhs
    if lhsHeadCoes = 0 then
      return Label.elim
    else if lhsHeadCoes = 1 then do
      unless rhsHeadCoes = 0 do
        throwError "norm_cast: badly shaped lemma, rhs can't start with coe{indentExpr rhs}"
      if rhsInternalCoes = 0 then
        return Label.squash
      else
        return Label.move
    else if rhsHeadCoes < lhsHeadCoes then do
      return Label.squash
    else do
      throwError
          ("norm_cast: badly shaped shaped squash lemma, " ++
        "rhs must have fewer head coes than lhs{indentExpr ty}")

/-- The `push_cast` simp attribute. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8c84672ab99d55573c74de9dfcc1d0754222eee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
