# checkCodomains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d90edd76a3136edd163fe500785b953fa55aaa2f1c80fac3a904699d1054216",
  "kind": "def",
  "lexical_name": "checkCodomains",
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
  "slug": "checkcodomains--cb4c83f736e51836a96bc0ba",
  "source": {
    "blob": "f544ddbecffcecee378ff9284fe6270ee34d028b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rel/Variant5fdd3aa575b466d2b26aa8c4a87f8a7e764275d8c94fe79012eff07d9d03f033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb4c83f736e51836a96bc0ba9def3ac6eb39096711188e217a34784ec3812ad5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rel/Variant5fdd3aa575b466d2b26aa8c4a87f8a7e764275d8c94fe79012eff07d9d03f033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d90edd76a3136edd163fe500785b953fa55aaa2f1c80fac3a904699d1054216`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkCodomains (names : Array Name) (fixedParamPerms : FixedParamPerms) (fixedArgs : Array Expr) (arities : Array Nat)
    (termMeasures : TerminationMeasures) : TermElabM Expr := do
  let mut codomains := #[]
  for name in names, funIdx in *...names.size, arity in arities, termMeasure in termMeasures do
    let measureType ← inferType termMeasure.fn
    let measureType ← fixedParamPerms.perms[funIdx]!.instantiateForall measureType fixedArgs
    let codomain ← forallBoundedTelescope measureType arity fun xs codomain => do
      assert! xs.size = arity
      let fvars := xs.map (·.fvarId!)
      if codomain.hasAnyFVar (fvars.contains ·) then
        throwErrorAt termMeasure.ref  m!"The termination measure's type must not depend on the " ++
          m!"function's varying parameters, but {name}'s termination measure does:{indentExpr measureType}\n" ++
          "Try using `sizeOf` explicitly"
      pure codomain
    codomains := codomains.push codomain

  let codomain0 := codomains[0]!
  for h : i in 1...codomains.size do
    unless ← isDefEqGuarded codomain0 codomains[i] do
      throwErrorAt termMeasures[i]!.ref m!"The termination measures of mutually recursive functions " ++
        m!"must have the same return type, but the termination measure of {names[0]!} has type" ++
        m!"{indentExpr codomain0}\n" ++
        m!"while the termination measure of {names[i]!} has type{indentExpr codomains[i]}\n" ++
        "Try using `sizeOf` explicitly"
  return codomain0

/--
If the `termMeasures` map the packed argument `argType` to `β`, then this function passes to the
continuation a value of type `WellFoundedRelation argType` that is derived from the instance
for `WellFoundedRelation β` using `invImage`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rel/Variant5fdd3aa575b466d2b26aa8c4a87f8a7e764275d8c94fe79012eff07d9d03f033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rel/Variant5fdd3aa575b466d2b26aa8c4a87f8a7e764275d8c94fe79012eff07d9d03f033.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f544ddbecffcecee378ff9284fe6270ee34d028b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
