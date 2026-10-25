# mkAuxFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:197f392d73e3e08413f0e8add3974e78a197d1f42270408e08ccf70c009e48de",
  "kind": "def",
  "lexical_name": "mkAuxFunction",
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
  "slug": "mkauxfunction--b1b4d3161070439c83353cd6",
  "source": {
    "blob": "9212e5be9db9aca4d47ab53e6c5555b3ec51e6d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 259,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant046968886e11a82d5e21bee2ad1d9d7964fc2b1bed666ae6524f4fabc9700e8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1b4d3161070439c83353cd6385a62a086345d23b92f75afeea5f3a04ac095b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant046968886e11a82d5e21bee2ad1d9d7964fc2b1bed666ae6524f4fabc9700e8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:197f392d73e3e08413f0e8add3974e78a197d1f42270408e08ccf70c009e48de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkAuxFunction (ctx : Deriving.Context) (i : Nat) : TermElabM Command := do
  let auxFunName := ctx.auxFunNames[i]!
  let indVal := ctx.typeInfos[i]!
  let header ← mkArbitraryHeader indVal
  let mut binders := header.binders

  -- Determine the type of the generator
  -- (the `Plausible.Gen` type constructor applied to the name of the `inductive` type, plus any type parameters)
  let targetType ← mkInductiveApp ctx.typeInfos[i]! header.argNames
  let generatorType ← `($(mkIdent ``Plausible.Gen) $targetType)

  -- Create the body of the generator function
  let mut body ← mkBody header indVal generatorType

  -- For mutually-recursive types, we need to create
  -- local `let`-definitions containing the relevant `ArbitraryFueled` instances so that
  -- the derived generator typechecks
  if ctx.usePartial then
    let letDecls ← mkLocalInstanceLetDecls ctx ``ArbitraryFueled header.argNames
    body ← mkLet letDecls body

  -- If we are deriving a generator for a bunch of mutually-recursive types,
  -- the derived generator needs to be marked `partial` (following the implementation
  -- of the `deriving Repr` handler)
  if ctx.usePartial then
    `(partial def $(mkIdent auxFunName):ident $binders:bracketedBinder* : $(mkIdent ``Nat) → $generatorType := $body:term)
  else
    `(def $(mkIdent auxFunName):ident $binders:bracketedBinder* : $(mkIdent ``Nat) → $generatorType := $body:term)

/-- Creates a `mutual ... end` block containing the definitions of the derived generators -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant046968886e11a82d5e21bee2ad1d9d7964fc2b1bed666ae6524f4fabc9700e8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant046968886e11a82d5e21bee2ad1d9d7964fc2b1bed666ae6524f4fabc9700e8f.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9212e5be9db9aca4d47ab53e6c5555b3ec51e6d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
