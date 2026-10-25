# internalConstructor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2008454d873bc4d20ba9ea86c7613c219932196f036322a679b392a7de0bc921",
  "kind": "def",
  "lexical_name": "internalConstructor",
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
  "slug": "internalconstructor--414156848590fb6dfbf2cb9d",
  "source": {
    "blob": "4702c005d2f9d033fe515b5ec1fcace3aebc560d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InternalConstructor/Variantf2553c439df6f48b9c79b6a4cb15e165ff289e53288a1526e3e2650d7e935fa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:414156848590fb6dfbf2cb9d64698f7f0d01c4b1bb91d09f5a0268d51986de5b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InternalConstructor/Variantf2553c439df6f48b9c79b6a4cb15e165ff289e53288a1526e3e2650d7e935fa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2008454d873bc4d20ba9ea86c7613c219932196f036322a679b392a7de0bc921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def internalConstructor : Linter where
  run := withSetOptionIn fun _ => do
    unless Linter.getLinterValue linter.internalConstructors (← Linter.getLinterOptions) do
      return
    for t in ← getInfoTrees do
      -- Collect the warnings separately from logging them, since (compiled) `foldInfo` is faster
      -- than (interpreted, specialized) `foldInfoM`.
      let warnings := t.foldInfo (init := #[]) fun ctx info w => Id.run do
        if let .ofTermInfo i := info then
          if let .const n _ := i.expr.cleanupAnnotations then
            if
              -- Putting the conjuncts in this order provides a performance benefit.
              n.isInternal && !isPrivateName n && ctx.env.isImportedConst n && ctx.env.isConstructor n
            then
              return w.push (n, i.stx)
        return w
      for (name, stx) in warnings do
        logLintError linter.internalConstructors stx
          m!"`{.ofConstName name}` is an internal constructor and should not be used directly."

where
  /-- We inline some of `logLint` so that we can log an error instead of a warning. -/
  logLintError (linterOption) (stx) (msg) := do
    let disable := .note m!"This linter can be disabled with `set_option {linterOption.name} false`"
    logErrorAt stx <|
      .ofOriginatingSyntax stx  <|
      .tagged linterOption.name <|
      .tagged Linter.linterMessageTag m!"{msg}{disable}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InternalConstructor/Variantf2553c439df6f48b9c79b6a4cb15e165ff289e53288a1526e3e2650d7e935fa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InternalConstructor/Variantf2553c439df6f48b9c79b6a4cb15e165ff289e53288a1526e3e2650d7e935fa3.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4702c005d2f9d033fe515b5ec1fcace3aebc560d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
