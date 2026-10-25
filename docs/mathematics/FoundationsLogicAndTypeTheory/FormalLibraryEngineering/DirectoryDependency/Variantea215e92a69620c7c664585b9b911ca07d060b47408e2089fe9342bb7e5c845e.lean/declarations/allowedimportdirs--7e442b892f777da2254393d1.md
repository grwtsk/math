# allowedImportDirs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e9794a1176f925f5498876b5a9453d1008987421b238fef6681216a16c528a2",
  "kind": "def",
  "lexical_name": "allowedImportDirs",
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
  "slug": "allowedimportdirs--7e442b892f777da2254393d1",
  "source": {
    "blob": "49387b8d8005fcfedca09974e3cf6cc842a710bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e442b892f777da2254393d1b9a9167a3bdaafd5e8af98b071a416503a58ec23",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e9794a1176f925f5498876b5a9453d1008987421b238fef6681216a16c528a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def allowedImportDirs : NamePrefixRel := .ofArray #[
  -- This is used to test the linter.
  (`MathlibTest.DirectoryDependencyLinter, `Mathlib.Lean),
  -- Mathlib.Tactic has large transitive imports: just allow all of mathlib,
  -- as we don't care about the details a lot.
  (`MathlibTest.Header, `Mathlib),
  (`MathlibTest.Header, `Aesop),
  (`MathlibTest.Header, `ImportGraph),
  (`MathlibTest.Header, `LeanSearchClient),
  (`MathlibTest.Header, `Plausible),
  (`MathlibTest.Header, `ProofWidgets),
  (`MathlibTest.Header, `Qq),
  -- (`MathlibTest.Header, `Mathlib.Tactic),
  -- (`MathlibTest.Header, `Mathlib.Deprecated),
  (`MathlibTest.Header, `Batteries),
  (`MathlibTest.Header, `Lake),

  (`Mathlib.Util, `Batteries),
  (`Mathlib.Util, `Mathlib.Lean),
  (`Mathlib.Util, `Mathlib.Tactic),
  -- TODO: reduce this dependency by upstreaming `Data.String.Defs to batteries
  (`Mathlib.Util.FormatTable, `Mathlib.Data.String.Defs),

  (`Mathlib.Lean, `Batteries.Tactic.Lint),
  (`Mathlib.Lean, `Batteries.CodeAction),
  -- TODO: should this be minimised further?
  (`Mathlib.Lean.Meta.CongrTheorems, `Batteries),
  -- These modules are transitively imported by `Batteries.CodeAction.
  (`Mathlib.Lean, `Batteries.Classes.SatisfiesM),
  (`Mathlib.Lean, `Batteries.Data.Array.Match),
  (`Mathlib.Lean, `Batteries.Data.Fin),
  (`Mathlib.Lean, `Batteries.Data.List),
  (`Mathlib.Lean, `Batteries.Lean),
  (`Mathlib.Lean, `Batteries.Control),
  (`Mathlib.Lean, `Batteries.Tactic.Alias),
  (`Mathlib.Lean, `Batteries.Util.ProofWanted),

  (`Mathlib.Lean.Expr, `Mathlib.Util),
  (`Mathlib.Lean.Meta.RefinedDiscrTree, `Mathlib.Util),
  -- Fine-grained exceptions: TODO decide if these are fine, or should be scoped more broadly.
  (`Mathlib.Lean.CoreM, `Mathlib.Tactic.ToExpr),
  (`Mathlib.Lean.CoreM, `Mathlib.Util.WhatsNew),
  (`Mathlib.Lean.Meta.RefinedDiscrTree, `Mathlib.Tactic.Lemma),
  (`Mathlib.Lean.Meta.RefinedDiscrTree, `Mathlib.Tactic.ToAdditive),
  (`Mathlib.Lean.Meta.RefinedDiscrTree, `Mathlib.Tactic), -- split this up further?
  (`Mathlib.Lean.Meta.RefinedDiscrTree, `Mathlib.Basic),
  (`Mathlib.Lean.Meta.RefinedDiscrTree, `Mathlib.Data), -- split this up further?
  (`Mathlib.Lean.Meta.RefinedDiscrTree, `Mathlib.Algebra.Notation),
  (`Mathlib.Lean.Meta.RefinedDiscrTree, `Mathlib.Data.Notation),
  (`Mathlib.Lean.Meta.RefinedDiscrTree, `Mathlib.Data.Array),

  (`Mathlib.Lean.Meta.CongrTheorems, `Mathlib.Basic),
  (`Mathlib.Lean.Meta.CongrTheorems, `Mathlib.Logic),
  (`Mathlib.Lean.Meta.CongrTheorems, `Mathlib.Order.Defs),
  (`Mathlib.Lean.Meta.CongrTheorems, `Mathlib.Tactic),

  (`Mathlib.Lean.Expr.ExtraRecognizers, `Batteries.Util.ExtendedBinder),
  (`Mathlib.Lean.Expr.ExtraRecognizers, `Batteries.Logic),
  (`Mathlib.Lean.Expr.ExtraRecognizers, `Batteries.Tactic.Trans),
  (`Mathlib.Lean.Expr.ExtraRecognizers, `Batteries.Tactic.Init),
  (`Mathlib.Lean.Expr.ExtraRecognizers, `Mathlib.Basic),
  (`Mathlib.Lean.Expr.ExtraRecognizers, `Mathlib.Data),
  (`Mathlib.Lean.Expr.ExtraRecognizers, `Mathlib.Order),
  (`Mathlib.Lean.Expr.ExtraRecognizers, `Mathlib.Logic),
  (`Mathlib.Lean.Expr.ExtraRecognizers, `Mathlib.Tactic),

  (`Mathlib.Tactic.Linter, `Batteries),
  -- The Mathlib.Tactic.Linter *module* imports all linters, hence requires all the imports.
  -- For more fine-grained exceptions of the next two imports, one needs to rename that file.
  (`Mathlib.Tactic.Linter, `ImportGraph),
  (`Mathlib.Tactic.Linter, `Mathlib.Tactic.MinImports),
  (`Mathlib.Tactic.Linter.OverlappingInstances, `Mathlib.Lean.ContextInfo),
  (`Mathlib.Tactic.Linter.OverlappingInstances, `Mathlib.Lean.Elab.Tactic.Meta),
  (`Mathlib.Tactic.Linter.TextBased, `Mathlib.Data.Nat.Notation),
  (`Mathlib.Tactic.Linter.UnusedInstancesInType, `Mathlib.Lean.Expr.Basic),
  (`Mathlib.Tactic.Linter.UnusedInstancesInType, `Mathlib.Lean.Environment),
  (`Mathlib.Tactic.Linter.UnusedInstancesInType, `Mathlib.Lean.Elab.InfoTree),

  (`Mathlib.Logic, `Batteries),
  (`Mathlib.Logic, `Mathlib.Basic),
  -- TODO: should the next import direction be flipped?
  (`Mathlib.Logic, `Mathlib.Control),
  (`Mathlib.Logic, `Mathlib.Lean),
  (`Mathlib.Logic, `Mathlib.Util),
  (`Mathlib.Logic, `Mathlib.Tactic),
  (`Mathlib.Logic.Fin.Rotate, `Mathlib.Algebra.Group.Fin.Basic),
  (`Mathlib.Logic, `Mathlib.Algebra.Notation),
  (`Mathlib.Logic, `Mathlib.Algebra.NeZero),
  (`Mathlib.Logic, `Mathlib.Algebra.Order),
  (`Mathlib.Logic, `Mathlib.Data),
  -- TODO: this next dependency should be made more fine-grained.
  (`Mathlib.Logic, `Mathlib.Order),
  -- Particular modules with larger imports.
  (`Mathlib.Logic.Hydra, `Mathlib.GroupTheory),
  (`Mathlib.Logic.Hydra, `Mathlib.Algebra),
  (`Mathlib.Logic.Encodable.Pi, `Mathlib.Algebra),
  (`Mathlib.Logic.Equiv.Fin.Rotate, `Mathlib.Algebra.Group),
  (`Mathlib.Logic.Equiv.Fin.Rotate, `Mathlib.Algebra.Regular),
  (`Mathlib.Logic.Equiv.Array, `Mathlib.Algebra),
  (`Mathlib.Logic.Equiv.Finset, `Mathlib.Algebra),
  (`Mathlib.Logic.Godel.GodelBetaFunction, `Mathlib.Algebra),
  (`Mathlib.Logic.Small.List, `Mathlib.Algebra),

  (`Mathlib.Testing, `Batteries),
  -- TODO: this next import should be eliminated.
  (`Mathlib.Testing, `Mathlib.Algebra),
  (`Mathlib.Testing, `Mathlib.Basic),
  (`Mathlib.Testing, `Mathlib.Control),
  (`Mathlib.Testing, `Mathlib.Data),
  (`Mathlib.Testing, `Mathlib.GroupTheory),
  (`Mathlib.Testing, `Mathlib.Lean),
  (`Mathlib.Testing, `Mathlib.Logic),
  (`Mathlib.Testing, `Mathlib.Order),
  (`Mathlib.Testing, `Mathlib.Tactic),
  (`Mathlib.Testing, `Mathlib.Util),
]

/-- `forbiddenImportDirs` relates module prefixes, specifying that modules with the first prefix
should not import modules with the second prefix (except if specifically allowed in
`overrideAllowedImportDirs`).

For example, ``(`Mathlib.Algebra.Notation, `Mathlib.Algebra)`` is in `forbiddenImportDirs` and
``(`Mathlib.Algebra.Notation, `Mathlib.Algebra.Notation)`` is in `overrideAllowedImportDirs`
because modules in `Mathlib/Algebra/Notation.lean` cannot import modules in `Mathlib.Algebra` that are
outside `Mathlib/Algebra/Notation.lean`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49387b8d8005fcfedca09974e3cf6cc842a710bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
