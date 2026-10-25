# insertTranslation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4de06c03941f60245271f199cc1866f2981e33ae4d9e57bacb4c12395816bb5b",
  "kind": "def",
  "lexical_name": "insertTranslation",
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
  "slug": "inserttranslation--b8e7c44a9b9f7dd4d4faf980",
  "source": {
    "blob": "b666c64abc5bdecd2b7cbf8a39b6630e0227a986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 294,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8e7c44a9b9f7dd4d4faf980757623714e309bfaee09e5292415f92a142e9b9d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4de06c03941f60245271f199cc1866f2981e33ae4d9e57bacb4c12395816bb5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def insertTranslation (t : TranslateData) (src tgt : Name) (reorder : Reorder)
    (relevantArg : RelevantArg) (ref : Syntax) (allowDuplicate := false) :
    CoreM Unit := do
  insertTranslationAux src { translation := tgt, reorder, relevantArg }
  trace[translate] "Adding `{.ofConstName src}` {ite t.isDual "↔" "↦"} `{.ofConstName tgt}`\
    {if reorder.reorder.isEmpty then "" else s!" (reorder := {reorder.reorder})"} \
    (relevant_arg := {relevantArg})"
  if t.isDual && src != tgt then
    /- In practice, `relevantArg` does not overlap with `reorder` for dual translations,
    so we don't bother applying the permutation to `relevantArg`. -/
    insertTranslationAux tgt {
      translation := src, reorder := reorder.reverse, relevantArg }
where
  /-- Insert only one direction of a translation. -/
  insertTranslationAux (src : Name) (info : TranslationInfo) : CoreM Unit := do
    if let some info' := findTranslation? (← getEnv) t src then
      unless allowDuplicate && info'.translation == info.translation do
        Linter.logLintIf linter.translateOverwrite ref m!"`{src}` was already translated to \
          `{info'.translation}` instead of `{info.translation}`.\n\
          Unless the original translation was wrong, please remove this `{t.attrName}` attribute."
    modifyEnv (t.translations.addEntry · (src, info))

/-- `Config` is the type of the arguments that can be provided to `to_additive`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b666c64abc5bdecd2b7cbf8a39b6630e0227a986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
