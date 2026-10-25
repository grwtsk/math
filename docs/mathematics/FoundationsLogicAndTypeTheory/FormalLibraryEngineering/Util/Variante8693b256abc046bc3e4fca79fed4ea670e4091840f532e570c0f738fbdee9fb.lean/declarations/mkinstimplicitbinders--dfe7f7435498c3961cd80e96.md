# mkInstImplicitBinders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47e196c19a2e56aec6786758074d209e0a2990abfa7870a334175b24bb6220bc",
  "kind": "def",
  "lexical_name": "mkInstImplicitBinders",
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
  "slug": "mkinstimplicitbinders--dfe7f7435498c3961cd80e96",
  "source": {
    "blob": "0d473c2dede859f70bf6e66ec74dae47c53238c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante8693b256abc046bc3e4fca79fed4ea670e4091840f532e570c0f738fbdee9fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfe7f7435498c3961cd80e96dd014246bc8b79f3f10fb6694790b2af56a37fe4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante8693b256abc046bc3e4fca79fed4ea670e4091840f532e570c0f738fbdee9fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47e196c19a2e56aec6786758074d209e0a2990abfa7870a334175b24bb6220bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkInstImplicitBinders (className : Name) (indVal : InductiveVal) (argNames : Array Name) : TermElabM (Array Syntax) :=
  forallBoundedTelescope indVal.type indVal.numParams fun xs _ => do
    let mut binders := #[]
    for h : i in *...xs.size do
      try
        let x := xs[i]
        let c ← mkAppM className #[x]
        if (← isTypeCorrect c) then
          let argName := argNames[i]!
          let binder : Syntax ← `(instBinderF| [ $(mkCIdent className):ident $(mkIdent argName):ident ])
          binders := binders.push binder
      catch _ =>
        pure ()
    return binders

/--
Removes any `[expose]` section attributes when running `cont` if `typeName` has private ctors.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante8693b256abc046bc3e4fca79fed4ea670e4091840f532e570c0f738fbdee9fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante8693b256abc046bc3e4fca79fed4ea670e4091840f532e570c0f738fbdee9fb.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d473c2dede859f70bf6e66ec74dae47c53238c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
