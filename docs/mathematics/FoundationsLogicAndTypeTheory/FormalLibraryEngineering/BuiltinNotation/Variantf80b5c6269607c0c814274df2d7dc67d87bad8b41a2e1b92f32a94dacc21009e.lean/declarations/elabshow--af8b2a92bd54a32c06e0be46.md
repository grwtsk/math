# elabShow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84fc180ad8ecda575d76643038e2aad173ed45c7b3c2e409e53422574aa68c84",
  "kind": "def",
  "lexical_name": "elabShow",
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
  "slug": "elabshow--af8b2a92bd54a32c06e0be46",
  "source": {
    "blob": "3420ebb6df810a5218fbfe80f93c70893eada123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af8b2a92bd54a32c06e0be46a2551da3c60667c8ccbf8af6ce5429048f7ab268",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84fc180ad8ecda575d76643038e2aad173ed45c7b3c2e409e53422574aa68c84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[builtin_term_elab Lean.Parser.Term.show] def elabShow : TermElab := fun stx expectedType? => do
  match stx with
  | `(show $type from $val)  =>
    /-
    We first elaborate the type and try to unify it with the expected type if available.
    Note that, we should not throw an error if the types do not unify. Recall that we have coercions and
    the following is supported in Lean 3 and 4.
    ```
    example : Int :=
      show Nat from 0
    ```
    -/
    let type ← withSynthesize (postpone := .yes) do
      let type ← elabType type
      if let some expectedType := expectedType? then
        -- Recall that a similar approach is used when elaborating applications
        discard <| isDefEq expectedType type
      return type
    /-
    Recall that we do not use the same approach used to elaborate type ascriptions.
    For the `($val : $type)` notation, we just elaborate `val` using `type` and
    ensure it has type `type`. This approach only ensure the type resulting expression
    is definitionally equal to `type`. For the `show` notation we use `have` to ensure the type
    of the resulting expression is *structurally equal* `type`. Structural equality is important,
    for example, if the resulting expression is a `simp`/`rw` parameter. Here is an example:
    ```
    example (x : Nat) : (x + 0) + y = x + y := by
      rw [show x + 0 = x from rfl]
    ```
    -/
    let thisId := mkIdentFrom stx `this
    let valNew ← `(have $thisId:ident : $(← exprToSyntax type) := $val; $thisId)
    elabTerm valNew expectedType?
  | _ => throwUnsupportedSyntax

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3420ebb6df810a5218fbfe80f93c70893eada123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
