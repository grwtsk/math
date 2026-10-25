# findImpEqProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11763878915ec57dd4d8157fbf0711f3e976505b9bd5ba5968618f91dd7ffc24",
  "kind": "def",
  "lexical_name": "findImpEqProof",
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
  "slug": "findimpeqproof--a767c70a942c34ae0178be0d",
  "source": {
    "blob": "58d249ed1d2d117b6eac3db84c155ce4b48714e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant532bf327fef240476d145c71e8812ce32b339cb1a979c51f145fc1fb63dac4ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a767c70a942c34ae0178be0d8565ba3b43a5218e379d294dabf4469e66815f6c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant532bf327fef240476d145c71e8812ce32b339cb1a979c51f145fc1fb63dac4ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11763878915ec57dd4d8157fbf0711f3e976505b9bd5ba5968618f91dd7ffc24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def findImpEqProof (p : Expr) :
    MetaM <| Option (Expr × Expr) := do
  lambdaTelescope p fun xs body => do
    let #[x] := xs | return none
    withLocalDecl .anonymous .default body fun h => withNewMCtxDepth do
      let .some ⟨res, proof⟩ ← go x h | return none
      let pf1 ← mkLambdaFVars #[x, h] proof
      return .some ⟨res, ← mkAppM ``exists_of_imp_eq #[res, pf1]⟩
where
  /-- Traverses the expression `h`, branching at each `And`, to find a proof of `x = a`
  for some `a`. -/
  go (x h : Expr) : MetaM <| Option (Expr × Expr) := do
    match (← inferType h).getAppFnArgs with
    | (``Eq, #[β, a, b]) =>
      if !(← isDefEq (← inferType x) β) then
        return none
      if (← isDefEq x a) && !(b.containsFVar x.fvarId!) then
        return .some ⟨b, ← mkAppM ``Eq.symm #[h]⟩
      if (← isDefEq x b) && !(a.containsFVar x.fvarId!) then
        return .some ⟨a, h⟩
      else
        return .none
    | (``And, #[_, _]) =>
      if let .some res ← go x (← mkAppM ``And.left #[h]) then
        return res
      if let .some res ← go x (← mkAppM ``And.right #[h]) then
        return res
      return none
    | _ => return none

end existsAndEq

/-- Triggers on goals of the form `∃ a, body` and checks whether `body` has the
form `... ∧ a = a' ∧ ...` or `... ∧ a' = a ∧ ...` for some `a'` that is independent of `a`.
If so, it replaces all occurancies of `a` with `a'` and removes the quantifier. -/
simproc existsAndEq (Exists (fun _ => And _ _)) := fun e => do
  match e.getAppFnArgs with
  | (``Exists, #[_, p]) =>
    let .some ⟨res, pf⟩ ← existsAndEq.findImpEqProof p | return .continue
    return .visit {expr := mkApp p res, proof? := pf}
  | _ => return .continue
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant532bf327fef240476d145c71e8812ce32b339cb1a979c51f145fc1fb63dac4ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant532bf327fef240476d145c71e8812ce32b339cb1a979c51f145fc1fb63dac4ad.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58d249ed1d2d117b6eac3db84c155ce4b48714e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
