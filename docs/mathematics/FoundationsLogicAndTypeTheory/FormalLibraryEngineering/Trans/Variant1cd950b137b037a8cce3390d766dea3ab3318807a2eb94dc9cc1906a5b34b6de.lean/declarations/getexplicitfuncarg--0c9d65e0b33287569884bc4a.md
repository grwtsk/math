# getExplicitFuncArg?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0834581b717f915f4b1227e33aa3a498eb6c7b84755aa9dfade13170b63f4b0f",
  "kind": "def",
  "lexical_name": "getExplicitFuncArg?",
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
  "slug": "getexplicitfuncarg--0c9d65e0b33287569884bc4a",
  "source": {
    "blob": "75f240f944578d080716a693836952e48e30696d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant1cd950b137b037a8cce3390d766dea3ab3318807a2eb94dc9cc1906a5b34b6de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c9d65e0b33287569884bc4a122fbdddab895c4c2cbb55311f7dcbef37727a42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant1cd950b137b037a8cce3390d766dea3ab3318807a2eb94dc9cc1906a5b34b6de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0834581b717f915f4b1227e33aa3a498eb6c7b84755aa9dfade13170b63f4b0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getExplicitFuncArg? (e : Expr) : MetaM (Option <| Expr × Expr) := do
  match e with
  | Expr.app f a => do
    if ← isDefEq (← mkAppM' f #[a]) e then
      return some (f, a)
    else
      getExplicitFuncArg? f
  | _ => return none

/-- solving `tgt ← mkAppM' rel #[x, z]` given `tgt = f z` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant1cd950b137b037a8cce3390d766dea3ab3318807a2eb94dc9cc1906a5b34b6de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant1cd950b137b037a8cce3390d766dea3ab3318807a2eb94dc9cc1906a5b34b6de.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75f240f944578d080716a693836952e48e30696d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
