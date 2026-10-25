# insertTranslationsChecked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dedfaadf85d2fe0554b948e15b131b3ce8739b4fa8f9d4e76300c0688f3c561f",
  "kind": "def",
  "lexical_name": "insertTranslationsChecked",
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
  "slug": "inserttranslationschecked--053e1b2576a80cf1ed1e01b9",
  "source": {
    "blob": "85e7fb128cfe562b177613129615fa16e03e7b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1075,
    "line": 1050,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:053e1b2576a80cf1ed1e01b9f28684e3a692d5f7ce1b82beaac18e6f4e4b9c1c",
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

Occurrence: `declaration:dedfaadf85d2fe0554b948e15b131b3ce8739b4fa8f9d4e76300c0688f3c561f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1050–1075.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def insertTranslationsChecked (t : TranslateData) (srcs tgts : Array Name) (cfg : Config)
    (allowDuplicate := false) :
    CoreM Unit := do
  if srcs.size != tgts.size then throwError "{srcs} and {tgts} should be of equal lenght"
  let mut tgts := tgts
  for src in srcs do
    let result : Except MessageData Nat ← id do
      let mut errors := .nil
      for h : i in 0...tgts.size do
        try
          insertTranslationChecked t src tgts[i] cfg allowDuplicate
          return .ok i
        catch ex =>
          errors :=  m!"{errors}\n\n{ex.toMessageData}"
      return .error errors
    match result with
    | .ok i => tgts := tgts.eraseIdx! i
    | .error errors =>
      Linter.logLintIf linter.translate.warnInvalid cfg.ref m!"\
        @[{t.attrName}] failed to add a translation from `{.ofConstName src}` \
        to any of `{tgts.map MessageData.ofConstName}`.\n\
        Please silence this warning and add a translation manually. \
        Errors:{errors}"

/-- `translateLemmas` runs `runAttr` on all elements of `names` and adds translations between
the generated lemmas (the output of `t`).  `names` must be non-empty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean#L1050).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e7fb128cfe562b177613129615fa16e03e7b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
