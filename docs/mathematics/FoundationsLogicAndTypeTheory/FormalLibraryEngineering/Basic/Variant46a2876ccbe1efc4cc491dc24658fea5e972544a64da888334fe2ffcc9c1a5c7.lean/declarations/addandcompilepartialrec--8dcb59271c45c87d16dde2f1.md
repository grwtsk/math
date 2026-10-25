# addAndCompilePartialRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ca2dda683f64608a322af56faf9af673be5f203d9e3bd5b31c1a092e30c5431",
  "kind": "def",
  "lexical_name": "addAndCompilePartialRec",
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
  "slug": "addandcompilepartialrec--8dcb59271c45c87d16dde2f1",
  "source": {
    "blob": "c31e13045fd34779db5fbbe3efc03909af17432a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 280,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46a2876ccbe1efc4cc491dc24658fea5e972544a64da888334fe2ffcc9c1a5c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8dcb59271c45c87d16dde2f1481176e6f1e307a81f9735992be248a5c5244cfc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46a2876ccbe1efc4cc491dc24658fea5e972544a64da888334fe2ffcc9c1a5c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ca2dda683f64608a322af56faf9af673be5f203d9e3bd5b31c1a092e30c5431`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addAndCompilePartialRec
    (docCtx : LocalContext × LocalInstances) (preDefs : Array PreDefinition) :
    TermElabM Unit := do
  if preDefs.all shouldGenCodeFor then
    withEnableInfoTree false do
      addAndCompileUnsafe docCtx (safety := DefinitionSafety.partial) <| preDefs.map fun preDef =>
        { preDef with
          declName  := Compiler.mkUnsafeRecName preDef.declName
          value     := preDef.value.replace fun e => match e with
            | Expr.const declName us =>
              if preDefs.any fun preDef => preDef.declName == declName then
                some <| mkConst (Compiler.mkUnsafeRecName declName) us
              else
                none
            | _ => none
          modifiers := default }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46a2876ccbe1efc4cc491dc24658fea5e972544a64da888334fe2ffcc9c1a5c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46a2876ccbe1efc4cc491dc24658fea5e972544a64da888334fe2ffcc9c1a5c7.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c31e13045fd34779db5fbbe3efc03909af17432a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
