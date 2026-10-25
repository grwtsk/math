# elabStructInstView

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27a7d6ce965a443c969155830f103099e12810259819eefcbe15cc7d8a6b08ce",
  "kind": "def",
  "lexical_name": "elabStructInstView",
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
  "slug": "elabstructinstview--6e126b0f2c1cf8be6000df3f",
  "source": {
    "blob": "5493e3d025e608ffc68d856f0b5b683431f64b09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1305,
    "line": 1268,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e126b0f2c1cf8be6000df3f80a0ead47253939baee42f66f4284eafdf2e6d22",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27a7d6ce965a443c969155830f103099e12810259819eefcbe15cc7d8a6b08ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1268–1305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabStructInstView (s : StructInstView) (structName : Name) (structType? : Option Expr) :
    TermElabM Expr := withRef s.ref do
  let env ← getEnv
  let ctorVal := getStructureCtor env structName
  if (← isInaccessiblePrivateName ctorVal.name) then
    throwError "invalid \{...} notation, constructor for `{.ofConstName structName}` is marked as private"
  let { ctorFn, ctorFnType, structType, levels, params } ← mkCtorHeader ctorVal structType?
  let (_, fields) ← expandFields structName s.fields (recover := (← read).errToSorry)
  let fields ← addSourceFields structName s.sources.explicit fields
  trace[Elab.structInst] "expanded fields:\n{MessageData.joinSep (fields.toList.map (fun (_, field) => MessageData.group m!"- {MessageData.nest 2 (toMessageData field)}")) "\n"}"
  let ellipsis := s.sources.implicit.isSome
  let useInhabited := s.sources.useInhabited
  let (val, _) ← main
    |>.run { view := s, structName, structType, levels, params, fieldViews := fields, val := ctorFn
             -- See the note in `ElabAppArgs.processExplicitArg`
             -- For structure instances though, there's a sense in which app-style ellipsis mode is always enabled,
             -- so we do not specifically check for it to disable defaults.
             -- An effect of this is that if a user forgets `..` they'll be reminded with a "Fields missing" error.
             useDefaults := !(← readThe Term.Context).inPattern || useInhabited
             -- Similarly, for patterns we disable using parent instances to fill in fields
             useParentInstanceFields := !(← readThe Term.Context).inPattern || useInhabited
             -- In ellipsis mode, unsynthesized missing fields become metavariables, rather than being an error
             unsynthesizedAsMVars := ellipsis
             useInhabited := useInhabited
     }
    |>.run { type := ctorFnType }
  return val

/--
If `stx` is of the form `{ s₁, ..., sₙ with ... }` and `sᵢ` is not a local variable,
expands into `let __src := sᵢ; { ..., __src, ... with ... }`.
The significance of `__src` is that the variable is treated as an implementation-detail local variable,
which can be unfolded by `simp` when `zetaDelta := false`.

Note that this one is not a `Macro` because we need to access the local context.

Note also that having this as a separate step from main elaboration lets it postpone without re-elaborating the sources.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean#L1268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5493e3d025e608ffc68d856f0b5b683431f64b09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
