# savePatternInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:816c71a232f95b385b98149de14e7460ba168026868261a84769685527227968",
  "kind": "def",
  "lexical_name": "savePatternInfo",
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
  "slug": "savepatterninfo--ae4ae10d2750b212c4380356",
  "source": {
    "blob": "ab2b4b57363560ab4a981fdcc553128bf077e7d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 705,
    "line": 675,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae4ae10d2750b212c438035653429e8c8e51cefe5bfda8471f9cb459cd40aa67",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:816c71a232f95b385b98149de14e7460ba168026868261a84769685527227968`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 675–705.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def savePatternInfo (p : Expr) : TermElabM Expr :=
  go p |>.run false
where
  /-- The `Bool` context is true iff we are inside of an "inaccessible" pattern. -/
  go (p : Expr) : ReaderT Bool TermElabM Expr := do
    match p with
    | .forallE n d b bi  => withLocalDecl n bi (← go d) fun x => do mkForallFVars #[x] (← go (b.instantiate1 x))
    | .lam n d b bi      => withLocalDecl n bi (← go d) fun x => do mkLambdaFVars #[x] (← go (b.instantiate1 x))
    | .letE n t v b nondep => mapLetDecl n (← go t) (← go v) (nondep := nondep) fun x => go (b.instantiate1 x)
    | .app f a          => return mkApp (← go f) (← go a)
    | .proj _ _ b       => return p.updateProj! (← go b)
    | .mdata k b        =>
      if inaccessible? p |>.isSome then
        return mkMData k (← withReader (fun _ => true) (go b))
      else if let some (stx, p) := patternWithRef? p then
        Elab.withInfoContext' (go p) (mkInfoOnError := mkPartialTermInfo .anonymous stx) fun p => do
          /- If `p` is a free variable and we are not inside of an "inaccessible" pattern, this `p` is a binder. -/
          mkTermInfo Name.anonymous stx p (isBinder := p.isFVar && !(← read))
      else
        return mkMData k (← go b)
    | _ => return p

/--
  Main method for `withDepElimPatterns`.
  - `PatternVarDecls`: are the explicit pattern variables provided by the user.
  - `ps`: are the patterns provided by the user.
  - `matchType`: the expected typ for this branch. It depends on the explicit pattern variables and the implicit ones that are still represented as metavariables,
     and are found by this function.
  - `k` is the continuation that is executed in an updated local context with the all pattern variables (explicit and implicit). Note that, `patternVarDecls` are all
     replaced since they may depend on implicit pattern variables (i.e., metavariables) that are converted into new free variables by this method.
 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean#L675).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab2b4b57363560ab4a981fdcc553128bf077e7d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
