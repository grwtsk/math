# expandFunBinders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a35f3cbd5fa826d1ed5d24fee8b3794a3da7a747551be16841c4d66eaa1358d9",
  "kind": "def",
  "lexical_name": "expandFunBinders",
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
  "slug": "expandfunbinders--bf65e288b715712f9d7e4946",
  "source": {
    "blob": "11f38a712a1b2233d5a315c2f28f444b04e00086",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 360,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf65e288b715712f9d7e49467d2bbc1fb3ea6fd3f76c859cae3a3b6554668ab1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a35f3cbd5fa826d1ed5d24fee8b3794a3da7a747551be16841c4d66eaa1358d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def expandFunBinders (binders : Array Syntax) (body : Syntax) : MacroM (Array Syntax × Syntax × Bool) :=
  let rec loop (body : Syntax) (i : Nat) (newBinders : Array Syntax) := do
    if h : i < binders.size then
      let binder := binders[i]
      let processAsPattern : Unit → MacroM (Array Syntax × Syntax × Bool) := fun _ => do
        let pattern := binder
        let major ← mkFreshIdent binder
        let (binders, newBody, _) ← loop body (i+1) (newBinders.push $ mkExplicitBinder major (mkHole binder))
        let newBody ← `(match $major:ident with | $pattern => $newBody)
        pure (binders, newBody, true)
      match binder.getKind with
      | ``Lean.Parser.Term.implicitBinder
      | ``Lean.Parser.Term.strictImplicitBinder
      | ``Lean.Parser.Term.instBinder
      | ``Lean.Parser.Term.explicitBinder
      | ``Lean.Parser.Term.hole | `ident => loop body (i+1) (newBinders.push binder)
      | ``Lean.Parser.Term.paren =>
        let term := binder[1]
        match (← getFunBinderIds? term) with
        | some idents =>
          -- `fun (x ...) ...` ~> `fun (x : _) ...`
          -- Interpret `(x ...)` as sequence of binders instead of pattern only if none of the idents
          -- are defined in the global scope. Technically, it would be sufficient to only check the
          -- first ident to be sure that the syntax cannot possibly be a valid pattern. However, for
          -- consistency we apply the same check to all idents so that the possibility of shadowing
          -- a global decl is identical for all of them.
          if (← idents.allM fun ident => return List.isEmpty (← Macro.resolveGlobalName ident.getId)) then
            loop body (i+1) (newBinders ++ idents.map (mkExplicitBinder · (mkHole binder)))
          else
            processAsPattern ()
        | none => processAsPattern ()
      | ``Lean.Parser.Term.typeAscription =>
        let term := binder[1]
        let type := binder[3].getOptional?.getD (mkHole binder)
        match (← getFunBinderIds? term) with
        | some idents => loop body (i+1) (newBinders ++ idents.map (fun ident => mkExplicitBinder ident type))
        | none        => processAsPattern ()
      | _ => processAsPattern ()
    else
      pure (newBinders, body, false)
  loop body 0 #[]

namespace FunBinders

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f38a712a1b2233d5a315c2f28f444b04e00086` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
