# elabSpecArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28604a7c797d3d4a37acbd1ad43a6d12c50eb902c167134079625823b62dd4c4",
  "kind": "def",
  "lexical_name": "elabSpecArgs",
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
  "slug": "elabspecargs--a5b00137a028a3c745ac49ca",
  "source": {
    "blob": "19e35bcb874f4ea9fe920025996365fb022274b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant1265d64f7eab48fca5b90a804b6634021684a7b7d69d37cc3c6345934532776d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5b00137a028a3c745ac49cad3933fce5714131d22301bc52429c1b979b2e284",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant1265d64f7eab48fca5b90a804b6634021684a7b7d69d37cc3c6345934532776d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28604a7c797d3d4a37acbd1ad43a6d12c50eb902c167134079625823b62dd4c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabSpecArgs (declName : Name) (args : Array Syntax) : MetaM (Array Nat) := do
  if args.isEmpty then return #[]
  let info ← getConstInfo declName
  Meta.forallTelescopeReducing info.type fun xs _ => do
    let argNames ← xs.mapM fun x => x.fvarId!.getUserName
    let mut result := #[]
    for arg in args do
      if let some idx := arg.isNatLit? then
        if idx == 0 then throwErrorAt arg "Invalid specialization argument index `0`: Index must be greater than 0"
        let idx := idx - 1
        if h : idx >= argNames.size then
          throwErrorAt arg "Invalid argument index `{idx}`: `{.ofConstName declName}` has only {argNames.size} arguments"
        else
          if result.contains idx then throwErrorAt arg "Invalid specialization argument index `{idx + 1}`: \
            The argument at this index (`{argNames[idx]}`) has already been specified as a specialization candidate"
          result := result.push idx
      else
        let argName := arg.getId
        if let some idx := argNames.idxOf? argName then
          if result.contains idx then throwErrorAt arg "Invalid specialization argument name `{argName}`: \
            It has already been specified as a specialization candidate"
          result := result.push idx
        else
          throwErrorAt arg "Invalid specialization argument name `{argName}`: `{.ofConstName declName}` does not have an argument with this name"
    return result.qsort (·<·)

/--
Marks a definition to always be specialized during code generation.

Specialization is an optimization in the code generator for generating variants of a function that
are specialized to specific parameter values. This is in particular useful for functions that take
other functions as parameters: Usually when passing functions as parameters, a closure needs to be
allocated that will then be called. Using `@[specialize]` prevents both of these operations by
using the provided function directly in the specialization of the inner function.

`@[specialize]` can take additional arguments for the parameter names or indices (starting at 1) of
the parameters that should be specialized. By default, instance and function parameters are
specialized.
-/
@[builtin_doc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant1265d64f7eab48fca5b90a804b6634021684a7b7d69d37cc3c6345934532776d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant1265d64f7eab48fca5b90a804b6634021684a7b7d69d37cc3c6345934532776d.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19e35bcb874f4ea9fe920025996365fb022274b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
