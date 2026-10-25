# isSupportApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ecba93fe673393c4545b476cd1d0c67005da150eb9751f964dc26bdaa3422c9",
  "kind": "def",
  "lexical_name": "isSupportApp",
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
  "slug": "issupportapp--2f0cc425e8bb885e55d9333f",
  "source": {
    "blob": "a0fa7b056c34b81d2441d78ef8cda8fd3719882a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant8373f33762bda466f36cd6191e3508081f541d0e182602bcc31a62787e88aac3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f0cc425e8bb885e55d9333f4e013435bdfc646522de7d44bc8dfe5a62385f06",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant8373f33762bda466f36cd6191e3508081f541d0e182602bcc31a62787e88aac3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ecba93fe673393c4545b476cd1d0c67005da150eb9751f964dc26bdaa3422c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isSupportApp (e : Expr) : MetaM Bool := do
  if isArithOfCastLike e then return true
  let .const declName _ := e.getAppFn | return false
  -- Check whether `e` is the projection of a constructor
  if let some info ← getProjectionFnInfo? declName then
    if e.getAppNumArgs == info.numParams + 1 then
      if (← isConstructorApp e.appArg!) then
        return true
  return isCastLikeDeclName declName || isGadget declName || isBuiltin declName || isMatcherCore (← getEnv) declName

end EqcFilter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant8373f33762bda466f36cd6191e3508081f541d0e182602bcc31a62787e88aac3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant8373f33762bda466f36cd6191e3508081f541d0e182602bcc31a62787e88aac3.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0fa7b056c34b81d2441d78ef8cda8fd3719882a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
