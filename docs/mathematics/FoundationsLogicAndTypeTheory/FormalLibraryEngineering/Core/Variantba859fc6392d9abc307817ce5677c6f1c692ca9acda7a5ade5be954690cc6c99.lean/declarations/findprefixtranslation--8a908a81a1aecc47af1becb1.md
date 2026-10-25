# findPrefixTranslation?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e90e68da38c4e2bc696259aaa3495d89ac3334bd3e45bc9cbd7755dad20fcf7e",
  "kind": "def",
  "lexical_name": "findPrefixTranslation?",
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
  "slug": "findprefixtranslation--8a908a81a1aecc47af1becb1",
  "source": {
    "blob": "85e7fb128cfe562b177613129615fa16e03e7b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 276,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a908a81a1aecc47af1becb1d998c3c31081a4598605906ebfd815b3ce681371",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e90e68da38c4e2bc696259aaa3495d89ac3334bd3e45bc9cbd7755dad20fcf7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findPrefixTranslation? (n : Name) (t : TranslateData) : CoreM (Option TranslationInfo) := do
  let env ← getEnv
  if let some info := findTranslation? env t n then
    return info
  let .str n postFix := n | return none
  let some info := go env n [postFix] | return none
  unless ← realizeGlobalConst info.translation do return none
  return info
where
  /-- Loop through the prefixes of `n` to try to find a translation.
  In such a case, we inherit the `relevantArg` option from the translation. -/
  go (env : Environment) (n : Name) (postFixes : List String) : Option TranslationInfo := Id.run do
  if let some info := findTranslation? env t n then
    return some {
      translation := postFixes.foldl .str info.translation
      relevantArg := info.relevantArg }
  if isPrivateName n then
    if let some info := findTranslation? env t (privateToUserName n) then
      return some {
        translation := postFixes.foldl .str (mkPrivateName env info.translation)
        relevantArg := info.relevantArg }
  let .str n postFix := n | return none
  return go env n (postFix :: postFixes)

/-- Add a translation to the translations map. If the translation attribute is dual,
also add the reverse translation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e7fb128cfe562b177613129615fa16e03e7b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
