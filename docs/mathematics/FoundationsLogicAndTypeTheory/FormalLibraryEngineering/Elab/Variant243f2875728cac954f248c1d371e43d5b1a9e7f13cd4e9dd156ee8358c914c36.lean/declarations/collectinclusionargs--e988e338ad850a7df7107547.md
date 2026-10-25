# collectInclusionArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc821012ef3aa2f08d34adddd5da90db7a1ec00929f3f5e62e10014c673067d4",
  "kind": "def",
  "lexical_name": "collectInclusionArgs",
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
  "slug": "collectinclusionargs--e988e338ad850a7df7107547",
  "source": {
    "blob": "43cc5a6ca83bf2a634844e3d3002f7098da07b4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 294,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant243f2875728cac954f248c1d371e43d5b1a9e7f13cd4e9dd156ee8358c914c36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e988e338ad850a7df7107547102fd62f4738bff4a1af9df0e0c9ca8325caaefd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant243f2875728cac954f248c1d371e43d5b1a9e7f13cd4e9dd156ee8358c914c36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc821012ef3aa2f08d34adddd5da90db7a1ec00929f3f5e62e10014c673067d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectInclusionArgs (argStxs : Array Syntax) : TacticM InclusionConfig := do
  let mut paramSettings : NameMap Expr := {}
  let mut families := #[]
  let params := inclusionParamExt.getState (← getEnv)
  for argStx in argStxs do
    match argStx with
    | `(inclusionArg| $familyStx:ident) =>
      let family := familyStx.getId.eraseMacroScopes
      unless families.contains family do
        unless (← getInclusionFamily? family).isSome do
          throwError "Unknown inclusion family `{family}`"
        families := families.push family
    | `(inclusionArg| $nameStx:ident := $valueStx:term) =>
      let name := nameStx.getId
      let some decl := params.find? name
        | throwError "Unknown inclusion parameter `{name}`"
      if paramSettings.contains name then
        throwError "Inclusion parameter `{name}` was specified more than once"
      let value ← elabTerm valueStx decl.type
      Term.synthesizeSyntheticMVarsNoPostponing
      let value ← instantiateMVars value
      paramSettings := paramSettings.insert name value
    | _ => throwUnsupportedSyntax
  if families.isEmpty then
    throwError "At least one inclusion family must be specified"
  return { paramSettings, families }

/-- `inclusion [fam₁, fam₂, ...]` is a low-level tactic for proving the main goal by reasoning
about the set inclusion operator `∈` using the *inclusion families* `fam₁`, `fam₂`, ...
The goal `⊢ P` is first transformed into `⊢ P ∈ {True}` and then each family defines forward-
and backward reasoning rules to replace the goal with a form suitable for checking by computation
in the kernel, in other words, something that can be solved `by decide`.

`inclusion` is very flexible and intended as a building block for other tactics with a more
specific ambition, for example `dyadic_interval`.

An inclusion family is declared using `registerInclusionFamily` and can be extended using the
`inclusion_op` and `hypothesis_op` attributes.
The `core` family provides reasoning about logical operators `∧`, `∨`, `¬` and `=`. This family
is recommented to be included by default.


* `inclusion [fam₁, x := e]` sets the parameter named `x` to the value of the term `e`.
  All the families in an `inclusion` call can access this parameter.
* `inclusion (config := cfg) [fam₁, ...]` uses `cfg : InclusionConfig` as configuration options.
  In particular:
  * `inclusion +native [fam₁, ...]` only uses evaluation, rather than kernel computation, to perform
    the final proof check. Warning: this adds the Lean compiler to the trusted codebase.
  * `inclusion +kernel [fam₁, ...]` only uses the kernel to perform the final proof check and skips
    the (usually faster) evaluation-based check beforehand.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant243f2875728cac954f248c1d371e43d5b1a9e7f13cd4e9dd156ee8358c914c36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant243f2875728cac954f248c1d371e43d5b1a9e7f13cd4e9dd156ee8358c914c36.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43cc5a6ca83bf2a634844e3d3002f7098da07b4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
