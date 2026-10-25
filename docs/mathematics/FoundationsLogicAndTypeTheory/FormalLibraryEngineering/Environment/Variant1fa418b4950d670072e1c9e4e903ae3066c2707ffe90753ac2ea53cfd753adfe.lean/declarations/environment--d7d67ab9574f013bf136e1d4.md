# Environment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35140f16b97f0e9b8fdd8312110da8928f3ba590cac521e946a4aacbb95b3179",
  "kind": "structure",
  "lexical_name": "Environment",
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
  "slug": "environment--d7d67ab9574f013bf136e1d4",
  "source": {
    "blob": "59e340aebe9944d1482e6aba5da1f8ec52a51fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 555,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7d67ab9574f013bf136e1d45d685347e31f34e1aeac2df4bd542749b7691dbc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35140f16b97f0e9b8fdd8312110da8928f3ba590cac521e946a4aacbb95b3179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Environment where
  /-
  Like with `Kernel.Environment`, this constructor is private to protect consistency of the
  environment, though there are no soundness concerns in this case given that it is used purely for
  elaboration.
  -/
  private mk ::
  /--
  Kernel environments containing imported constants. Also stores environment extension state for the
  current branch of the environment (in `private`). Any other data should be considered
  indeterminate.

  As `base` is eagerly available, we prefer taking information from it instead of `checked` whenever
  possible.
  -/
  private base : VisibilityMap Kernel.Environment
  /--
  Additional imported environment extension state for use in the language server. This field is
  identical to `base.extensions` in other contexts. Access via
  `getModuleEntries (level := .server)`.
  -/
  private serverBaseExts : Array EnvExtensionState := private_decl% base.private.extensions
  /--
  Kernel environment task that is fulfilled when all asynchronously elaborated declarations are
  finished, containing the resulting environment. Also collects the environment extension state of
  all environment branches that contributed contained declarations.
  -/
  checked             : Task Kernel.Environment := private_decl% (.pure base.private)
  /--
  Container of asynchronously elaborated declarations. For consistency, `Lean.addDecl` makes sure
  this contains constants added even synchronously, i.e. `base ⨃ asyncConsts` is the set of
  constants known on the current environment branch, which is a subset of `checked`.

  Private view should correspond to kernel map. Public view may contain fewer constants and less
  data per constant.
  -/
  private asyncConstsMap : VisibilityMap AsyncConsts := default
  /-- Information about this asynchronous branch of the environment, if any. -/
  private asyncCtx?   : Option AsyncContext := none
  /--
  Realized values belonging to imported declarations. Must be initialized by calling
  `enableRealizationsForImports`.
  -/
  private importRealizationCtx? : Option RealizationContext
  /--
  Realized values belonging to local declarations. This is a map from local declarations, which
  need to be registered synchronously using `enableRealizationsForConst`, to their realization
  context.
  -/
  private localRealizationCtxMap  : NameMap RealizationContext := {}
  /--
  Task collecting all realized constants from the current and already-forked environment branches,
  akin to how `checked` collects all declarations. We only use it as a fallback in
  `findAsyncCore?`/`getState`; see there.
  -/
  private allRealizations : Task (NameMap AsyncConst) := .pure {}
  /--
  Indicates whether the environment is being used in an exported context, i.e. whether it should
  provide access to only the data to be imported by other modules participating in the module
  system. Apart from controlling access, some operations such as `mkAuxDeclName` may also change
  their output based on this flag.

  By default, `isExporting` is set to false when command elaborators are invoked such that they have
  access to the full local environment. Use `with(out)Exporting` to modify based on context. For
  example, `elabDeclaration` sets it based on `(← getScope).isPublic` on the top level, then
  `elabMutualDef` may switch from public to private when e.g. entering the proof of a theorem.
  -/
  isExporting : Bool := false
deriving Nonempty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e340aebe9944d1482e6aba5da1f8ec52a51fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
