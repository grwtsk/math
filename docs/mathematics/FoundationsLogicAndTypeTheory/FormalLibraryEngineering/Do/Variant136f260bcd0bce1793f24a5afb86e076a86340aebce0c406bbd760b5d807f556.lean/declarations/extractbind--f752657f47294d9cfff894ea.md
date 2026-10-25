# extractBind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e2b28c49421bc0d6136a136ed687c065caeebc9c052b97a63d8f8a9570d1505",
  "kind": "def",
  "lexical_name": "extractBind",
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
  "slug": "extractbind--f752657f47294d9cfff894ea",
  "source": {
    "blob": "40503606a22b64e26f116203ea44199db6119028",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Do/Variant136f260bcd0bce1793f24a5afb86e076a86340aebce0c406bbd760b5d807f556.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f752657f47294d9cfff894eab365620b632681c7a538dfd92d4f0c4dc9537eed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Do/Variant136f260bcd0bce1793f24a5afb86e076a86340aebce0c406bbd760b5d807f556.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e2b28c49421bc0d6136a136ed687c065caeebc9c052b97a63d8f8a9570d1505`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def extractBind (expectedType? : Option Expr) : TermElabM ExtractMonadResult := do
  match expectedType? with
  | none => throwError "invalid 'do' notation, expected type is not available"
  | some expectedType =>
    let extractStep? (type : Expr) : MetaM (Option ExtractMonadResult) := do
      match type with
      | .app m returnType =>
        return some { m, returnType, expectedType }
      | _ =>
        return none
    let rec extract? (type : Expr) : MetaM (Option ExtractMonadResult) := do
      match (← extractStep? type) with
      | some r => return r
      | none =>
        let typeNew ← whnfCore type
        if typeNew != type then
          extract? typeNew
        else
          if typeNew.getAppFn.isMVar then throwError "invalid 'do' notation, expected type is not available"
          match (← unfoldDefinition? typeNew) with
          | some typeNew => extract? typeNew
          | none => return none
    match (← extract? expectedType) with
    | some r => return r
    | none   => mkIdBindFor expectedType
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Do/Variant136f260bcd0bce1793f24a5afb86e076a86340aebce0c406bbd760b5d807f556.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Do/Variant136f260bcd0bce1793f24a5afb86e076a86340aebce0c406bbd760b5d807f556.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40503606a22b64e26f116203ea44199db6119028` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
