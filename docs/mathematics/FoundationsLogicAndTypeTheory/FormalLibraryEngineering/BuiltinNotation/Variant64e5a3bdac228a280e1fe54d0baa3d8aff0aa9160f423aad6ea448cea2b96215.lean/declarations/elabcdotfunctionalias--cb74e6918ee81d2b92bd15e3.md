# elabCDotFunctionAlias?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbae2e123fec2c063a3a5514da9122664777ccc24b703bc38bc29f65ec197093",
  "kind": "def",
  "lexical_name": "elabCDotFunctionAlias?",
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
  "slug": "elabcdotfunctionalias--cb74e6918ee81d2b92bd15e3",
  "source": {
    "blob": "93ccf3f0a584d0877fb3442500c1b7e37083fe83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 379,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variant64e5a3bdac228a280e1fe54d0baa3d8aff0aa9160f423aad6ea448cea2b96215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb74e6918ee81d2b92bd15e3d564a468b2d32bf412141647445389b91cebb65b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variant64e5a3bdac228a280e1fe54d0baa3d8aff0aa9160f423aad6ea448cea2b96215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbae2e123fec2c063a3a5514da9122664777ccc24b703bc38bc29f65ec197093`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabCDotFunctionAlias? (stx : Term) : TermElabM (Option Expr) := do
  let some stx ← liftMacroM <| expandCDotArg? stx | pure none
  let stx ← liftMacroM <| expandMacros stx
  match stx with
  | `(fun $binders* => $f $args*) =>
    if binders.raw.toList.isPerm args.raw.toList then
      try Term.resolveId? f catch _ => return none
    else
      return none
  | `(fun $binders* => binop% $f $a $b)
  | `(fun $binders* => binop_lazy% $f $a $b)
  | `(fun $binders* => leftact% $f $a $b)
  | `(fun $binders* => rightact% $f $a $b)
  | `(fun $binders* => binrel% $f $a $b)
  | `(fun $binders* => binrel_no_prop% $f $a $b) =>
    if binders == #[a, b] || binders == #[b, a] then
      try Term.resolveId? f catch _ => return none
    else
      return none
  | `(fun $binders* => unop% $f $a) =>
    if binders == #[a] then
      try Term.resolveId? f catch _ => return none
    else
      return none
  | _ => return none
where
  expandCDotArg? (stx : Term) : MacroM (Option Term) :=
    match stx with
    | `(($h:hygieneInfo $e)) => Term.expandCDot? e h.getHygieneInfo
    | _ => Term.expandCDot? stx none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variant64e5a3bdac228a280e1fe54d0baa3d8aff0aa9160f423aad6ea448cea2b96215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variant64e5a3bdac228a280e1fe54d0baa3d8aff0aa9160f423aad6ea448cea2b96215.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93ccf3f0a584d0877fb3442500c1b7e37083fe83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
