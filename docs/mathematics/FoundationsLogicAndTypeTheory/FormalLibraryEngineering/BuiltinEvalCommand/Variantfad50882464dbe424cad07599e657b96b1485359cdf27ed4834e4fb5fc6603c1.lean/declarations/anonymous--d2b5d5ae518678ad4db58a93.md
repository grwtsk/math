# $

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c262dfbdfa83105bfc475f3eac2a730bedb6d0de5c678ad0b435dcae70f7efd",
  "kind": "def",
  "lexical_name": "$",
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
  "slug": "anonymous--d2b5d5ae518678ad4db58a93",
  "source": {
    "blob": "ce9c9990801336a127527b7176d36f1d0662563c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variantfad50882464dbe424cad07599e657b96b1485359cdf27ed4834e4fb5fc6603c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2b5d5ae518678ad4db58a93156a4782704d7854c51f87d1419ea49609ba2b70",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variantfad50882464dbe424cad07599e657b96b1485359cdf27ed4834e4fb5fc6603c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c262dfbdfa83105bfc475f3eac2a730bedb6d0de5c678ad0b435dcae70f7efd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
          def $(mkIdent <| `_root_ ++ declName) := $(← Term.exprToSyntax value)))
  let declName := mkPrivateName (← getEnv) declName
  -- For simplicity, allow arbitrary phase accesses in server, `import`-correct access otherwise.
  -- These are the most permissive respective settings that are guaranteed not to lead to missing
  -- IR errors.
  withOptions (fun opts =>
      if Elab.inServer.get opts then
        Compiler.compiler.checkMeta.set opts false
      else
        Compiler.compiler.relaxedMetaCheck.set opts true) do
  withOptions (Compiler.compiler.postponeCompile.set · false) do
    Term.elabMutualDef #[] { header := "" } #[defView]
  assert! (← getEnv).contains declName
  unless allowSorry do
    let axioms ← collectAxioms declName
    if axioms.contains ``sorryAx then
      throwError "\
        Aborting evaluation since the expression depends on the 'sorry' axiom, \
        which can lead to runtime instability and crashes.\n\n\
        To attempt to evaluate anyway despite the risks, use the '#eval!' command."
  return declName

/--
Try to make a `@projFn ty inst e` application, even if it takes unfolding the type `ty` of `e` to synthesize the instance `inst`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variantfad50882464dbe424cad07599e657b96b1485359cdf27ed4834e4fb5fc6603c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variantfad50882464dbe424cad07599e657b96b1485359cdf27ed4834e4fb5fc6603c1.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9c9990801336a127527b7176d36f1d0662563c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
