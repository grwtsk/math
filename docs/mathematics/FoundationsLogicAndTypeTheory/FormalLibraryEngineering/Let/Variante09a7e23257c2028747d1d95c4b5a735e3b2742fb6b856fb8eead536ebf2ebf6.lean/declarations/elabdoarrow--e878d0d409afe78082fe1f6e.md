# elabDoArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce732b14c58968a1c33946f3c35f94033e419d5b2b737a3ed2dfb4d1bf42232c",
  "kind": "def",
  "lexical_name": "elabDoArrow",
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
  "slug": "elabdoarrow--e878d0d409afe78082fe1f6e",
  "source": {
    "blob": "6c5037ddf989b41d34a41cd799932f6aac53f17d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante09a7e23257c2028747d1d95c4b5a735e3b2742fb6b856fb8eead536ebf2ebf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e878d0d409afe78082fe1f6e8feb3456deff6483ea650ca8a17d28824f53e475",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante09a7e23257c2028747d1d95c4b5a735e3b2742fb6b856fb8eead536ebf2ebf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce732b14c58968a1c33946f3c35f94033e419d5b2b737a3ed2dfb4d1bf42232c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabDoArrow (letOrReassign : LetOrReassign) (stx : TSyntax [``doIdDecl, ``doPatDecl]) (tk : Syntax) (dec : DoElemCont) : DoElabM Expr := do
  match stx with
  | `(doIdDecl| $x:ident $[: $xType?]? ← $rhs) =>
    letOrReassign.checkMutVars #[x]
    let dec ← dec.ensureUnitAt tk
    -- For plain variable reassignment, we know the expected type of the reassigned variable and
    -- propagate it eagerly via type ascription if the user hasn't provided one themselves:
    let xType? ← match letOrReassign, xType? with
      | .reassign, none =>
        let decl ← getLocalDeclFromUserName x.getId
        some <$> Term.exprToSyntax decl.type
      | _, _ => pure xType?
    elabDoIdDecl x xType? rhs (declareMutVar? letOrReassign.getLetMutTk? x <| dec.continueWithUnit)
      (kind := dec.kind)
  | `(doPatDecl| _%$pattern $[: $patType?]? ← $rhs) =>
    let x := mkIdentFrom pattern (← mkFreshUserName `__x)
    let dec ← dec.ensureUnitAt tk
    elabDoIdDecl x patType? rhs dec.continueWithUnit (kind := dec.kind)
  | `(doPatDecl| $pattern:term $[: $patType?]? ← $rhs $[| $otherwise? $(rest?)?]?) =>
    let rest? := rest?.join
    let x := mkIdentFrom pattern (← mkFreshUserName `__x)
    elabDoIdDecl x patType? rhs do
      match letOrReassign, otherwise? with
      | .let mutTk?, some otherwise =>
        elabDoElem (← `(doElem| let $[mut%$mutTk?]? $pattern:term := $x | $otherwise $(rest?)?)) dec
      | .let mutTk?, _ =>
        elabDoElem (← `(doElem| let $[mut%$mutTk?]? $pattern:term := $x)) dec
      | .have, some _otherwise =>
        throwUnsupportedSyntax
      | .have, _ =>
        elabDoElem (← `(doElem| have $pattern:term := $x)) dec
      | .reassign, _ =>
        -- otherwise? is always `none`, because there is no `doReassignElse`
        unless rest?.isNone do
          throwError "reassignment with `|` (i.e., \"else clause\") is not supported"
        elabDoElem (← `(doElem| $pattern:term := $x)) dec
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante09a7e23257c2028747d1d95c4b5a735e3b2742fb6b856fb8eead536ebf2ebf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante09a7e23257c2028747d1d95c4b5a735e3b2742fb6b856fb8eead536ebf2ebf6.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c5037ddf989b41d34a41cd799932f6aac53f17d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
