# computeDotIdQuery?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6341fde430065d28e9ee5f78231df7f7972c847693fdd5e62610ea72ecb1b3f7",
  "kind": "def",
  "lexical_name": "computeDotIdQuery?",
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
  "slug": "computedotidquery--83508df8fc6163c424fc737e",
  "source": {
    "blob": "bdbf4f1145dcd6d5147dcbe624fc39282c17bd57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnknownIdentifier/Variantb3721fd70aea1878592a4e92b8b7b87cfe9e1df80c2080e3afe089bebf5ed422.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83508df8fc6163c424fc737e9c9bb43ac9955179b0b5f64e4d7bf77c11727c9f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnknownIdentifier/Variantb3721fd70aea1878592a4e92b8b7b87cfe9e1df80c2080e3afe089bebf5ed422.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6341fde430065d28e9ee5f78231df7f7972c847693fdd5e62610ea72ecb1b3f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def computeDotIdQuery?
    (doc : EditableDocument)
    (ctx : Elab.ContextInfo)
    (stx : Syntax)
    (id : Name)
    (lctx : LocalContext)
    (expectedType? : Option Expr)
    : IO (Option Query) := do
  let some pos := stx.getPos? (canonicalOnly := true)
    | return none
  let some tailPos := stx.getTailPos? (canonicalOnly := true)
    | return none
  let some expectedType := expectedType?
    | return none
  let typeNames : Array Name ← ctx.runMetaM lctx <| getDotIdCompletionTypeNames expectedType
  if typeNames.isEmpty then
    return none
  return some {
    identifier := id.toString
    openNamespaces := typeNames.map (.allExcept · #[])
    ctx
    determineInsertion decl :=
      {
        fullName := decl
        edit := {
          range := doc.meta.text.utf8RangeToLspRange ⟨pos, tailPos⟩
          newText := decl.getString!
        }
      }
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnknownIdentifier/Variantb3721fd70aea1878592a4e92b8b7b87cfe9e1df80c2080e3afe089bebf5ed422.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnknownIdentifier/Variantb3721fd70aea1878592a4e92b8b7b87cfe9e1df80c2080e3afe089bebf5ed422.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdbf4f1145dcd6d5147dcbe624fc39282c17bd57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
