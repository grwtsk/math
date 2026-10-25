# exists_delab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbbfbdd47c18a6d27c96446b5cbd4a62493dd3a51231b990dd72b9180d8efb38",
  "kind": "def",
  "lexical_name": "exists_delab",
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
  "slug": "exists-delab--343c5fc568286ab79ac68164",
  "source": {
    "blob": "519f146c25ec91da1ffba492dc1820a84e8a14dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:343c5fc568286ab79ac68164c55a3c858b245acf4f56d167fafd4847435652e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbbfbdd47c18a6d27c96446b5cbd4a62493dd3a51231b990dd72b9180d8efb38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exists_delab : Delab := whenPPOption Lean.getPPNotation do
  let #[ι, f] := (← SubExpr.getExpr).getAppArgs | failure
  unless f.isLambda do failure
  let prop ← Meta.isProp ι
  let dep := f.bindingBody!.hasLooseBVar 0
  let ppTypes ← getPPOption getPPFunBinderTypes
  let stx ← SubExpr.withAppArg do
    let dom ← SubExpr.withBindingDomain delab
    withBindingBodyUnusedName fun x => do
      let x : TSyntax `ident := .mk x
      let body ← delab
      if prop && !dep then
        `(∃ (_ : $dom), $body)
      else if prop || ppTypes then
        `(∃ ($x:ident : $dom), $body)
      else
        `(∃ $x:ident, $body)
  -- Cute binders
  let stx : Term ←
    if ← getPPOption Mathlib.getPPBinderPredicates then
      match stx with
      | `(∃ $i:ident, $j:ident ∈ $s ∧ $body)
      | `(∃ ($i:ident : $_), $j:ident ∈ $s ∧ $body) =>
        if i == j then `(∃ $i:ident ∈ $s, $body) else pure stx
      | `(∃ $x:ident, $y:ident > $z ∧ $body)
      | `(∃ ($x:ident : $_), $y:ident > $z ∧ $body) =>
        if x == y then `(∃ $x:ident > $z, $body) else pure stx
      | `(∃ $x:ident, $y:ident < $z ∧ $body)
      | `(∃ ($x:ident : $_), $y:ident < $z ∧ $body) =>
        if x == y then `(∃ $x:ident < $z, $body) else pure stx
      | `(∃ $x:ident, $y:ident ≥ $z ∧ $body)
      | `(∃ ($x:ident : $_), $y:ident ≥ $z ∧ $body) =>
        if x == y then `(∃ $x:ident ≥ $z, $body) else pure stx
      | `(∃ $x:ident, $y:ident ≤ $z ∧ $body)
      | `(∃ ($x:ident : $_), $y:ident ≤ $z ∧ $body) =>
        if x == y then `(∃ $x:ident ≤ $z, $body) else pure stx
      | `(∃ $x:ident, $y:ident ∉ $z ∧ $body)
      | `(∃ ($x:ident : $_), $y:ident ∉ $z ∧ $body) => do
        if x == y then `(∃ $x:ident ∉ $z, $body) else pure stx
      | `(∃ $x:ident, $y:ident ⊆ $z ∧ $body)
      | `(∃ ($x:ident : $_), $y:ident ⊆ $z ∧ $body) =>
        if x == y then `(∃ $x:ident ⊆ $z, $body) else pure stx
      | `(∃ $x:ident, $y:ident ⊂ $z ∧ $body)
      | `(∃ ($x:ident : $_), $y:ident ⊂ $z ∧ $body) =>
        if x == y then `(∃ $x:ident ⊂ $z, $body) else pure stx
      | `(∃ $x:ident, $y:ident ⊇ $z ∧ $body)
      | `(∃ ($x:ident : $_), $y:ident ⊇ $z ∧ $body) =>
        if x == y then `(∃ $x:ident ⊇ $z, $body) else pure stx
      | `(∃ $x:ident, $y:ident ⊃ $z ∧ $body)
      | `(∃ ($x:ident : $_), $y:ident ⊃ $z ∧ $body) =>
        if x == y then `(∃ $x:ident ⊃ $z, $body) else pure stx
      | _ => pure stx
    else
      pure stx
  match stx with
  | `(∃ $group:bracketedExplicitBinders, ∃ $[$groups:bracketedExplicitBinders]*, $body) =>
    `(∃ $group $groups*, $body)
  | `(∃ $b:binderIdent, ∃ $[$bs:binderIdent]*, $body) => `(∃ $b:binderIdent $[$bs]*, $body)
  | _ => pure stx
end existential

open Lean Lean.PrettyPrinter.Delaborator

/-- Delaborator for `∉`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `519f146c25ec91da1ffba492dc1820a84e8a14dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
