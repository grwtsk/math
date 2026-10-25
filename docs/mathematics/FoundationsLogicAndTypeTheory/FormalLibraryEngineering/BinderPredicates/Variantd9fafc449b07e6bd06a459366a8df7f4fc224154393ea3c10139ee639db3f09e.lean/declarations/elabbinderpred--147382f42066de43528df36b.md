# elabBinderPred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9394fd545f3b934ddfb2423c2cf62c138836409e1c0f29a150e62d6164835988",
  "kind": "def",
  "lexical_name": "elabBinderPred",
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
  "slug": "elabbinderpred--147382f42066de43528df36b",
  "source": {
    "blob": "6b8a15cb0d90269a41e77b91732cdb6d3a5d75e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinderPredicates/Variantd9fafc449b07e6bd06a459366a8df7f4fc224154393ea3c10139ee639db3f09e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:147382f42066de43528df36bfbc8f3b9539add9c1518720fe763b7dc1ff7f1f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinderPredicates/Variantd9fafc449b07e6bd06a459366a8df7f4fc224154393ea3c10139ee639db3f09e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9394fd545f3b934ddfb2423c2cf62c138836409e1c0f29a150e62d6164835988`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_command_elab binderPredicate] def elabBinderPred : CommandElab := fun stx => do
  match stx with
  | `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind binder_predicate%$tk
      $[(name := $name?)]? $[(priority := $prio?)]? $x $args:macroArg* => $rhs) => do
    let prio ← liftMacroM do evalOptPrio prio?
    let (stxParts, patArgs) := (← args.mapM expandMacroArg).unzip
    let kind ← elabSyntax (← `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind syntax%$tk
        $[(name := $name?)]? (priority := $(quote prio)) $[$stxParts]* : binderPred))
    /- The command `syntax [<kind>] ...` adds the current namespace to the syntax node kind.
    So, we must include current namespace when we create a pattern for the following
    `macro_rules` commands. -/
    let pat : TSyntax `binderPred := ⟨(mkNode kind patArgs).1⟩
    elabCommand <|<-
    `($[$doc?:docComment]? macro_rules%$tk
        | `(satisfies_binder_pred% $$($x):term $pat:binderPred) => $rhs)
  | _ => throwUnsupportedSyntax

open Linter.MissingDocs Parser Term in
/-- Missing docs handler for `binder_predicate` -/
@[builtin_missing_docs_handler Lean.Parser.Command.binderPredicate]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinderPredicates/Variantd9fafc449b07e6bd06a459366a8df7f4fc224154393ea3c10139ee639db3f09e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinderPredicates/Variantd9fafc449b07e6bd06a459366a8df7f4fc224154393ea3c10139ee639db3f09e.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b8a15cb0d90269a41e77b91732cdb6d3a5d75e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
