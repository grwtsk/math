# elabRegisterSymDSimp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a80bcba4fd3e0732e2b7a54814ac6d7273df73136fa4e79073eba4e472b3be49",
  "kind": "def",
  "lexical_name": "elabRegisterSymDSimp",
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
  "slug": "elabregistersymdsimp--dcb2c6cc9ac66b93ef1e3de8",
  "source": {
    "blob": "c828cc7ab63bc2c4b8ee63e7b2ae044749430179",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RegisterSymDSimp/Variantada37eb73613e2b6c40ee1d032a48e851aa795ff997cde8ff939c684c84bdb92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcb2c6cc9ac66b93ef1e3de8492fa6040bb6ea1931c1d09673c34908dfc87973",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RegisterSymDSimp/Variantada37eb73613e2b6c40ee1d032a48e851aa795ff997cde8ff939c684c84bdb92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a80bcba4fd3e0732e2b7a54814ac6d7273df73136fa4e79073eba4e472b3be49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabRegisterSymDSimp : CommandElab := fun stx => do
  let id := stx[1]
  let name := id.getId
  -- Check for duplicate variant
  if (getSymDSimpVariant? (← getEnv) name).isSome then
    throwErrorAt id "Sym.dsimp variant `{name}` is already registered"
  let fields := stx[3].getArgs
  let mut pre? : Option Syntax := none
  let mut post? : Option Syntax := none
  let mut maxSteps? : Option Nat := none
  for field in fields do
    match field with
    | `(sym_dsimp_field| maxSteps := $val:num) =>
      unless maxSteps?.isNone do throwErrorAt field "duplicate `maxSteps` field"
      maxSteps? := some val.getNat
    | `(sym_dsimp_field| pre := $proc) =>
      unless pre?.isNone do throwErrorAt field "duplicate `pre` field"
      pre? := some proc
    | `(sym_dsimp_field| post := $proc) =>
      unless post?.isNone do throwErrorAt field "duplicate `post` field"
      post? := some proc
    | _ => throwErrorAt field "unexpected field"
  -- Validate pre/post by elaborating them
  validateOptionDSimprocSyntax pre?
  validateOptionDSimprocSyntax post?
  let config := { maxSteps := maxSteps?.getD 100_000 }
  let variant : SymDSimpVariant := { pre?, post?, config }
  modifyEnv fun env => symDSimpVariantExtension.addEntry env { name, variant }

end Lean.Elab.Command
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RegisterSymDSimp/Variantada37eb73613e2b6c40ee1d032a48e851aa795ff997cde8ff939c684c84bdb92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RegisterSymDSimp/Variantada37eb73613e2b6c40ee1d032a48e851aa795ff997cde8ff939c684c84bdb92.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c828cc7ab63bc2c4b8ee63e7b2ae044749430179` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
