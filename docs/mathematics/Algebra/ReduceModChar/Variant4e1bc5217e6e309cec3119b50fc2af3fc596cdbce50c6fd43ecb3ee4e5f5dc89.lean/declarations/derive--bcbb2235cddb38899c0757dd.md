# derive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ddc7726067bf2ea5ad540ef8b04d8957929353d98b8c034b2bee61f4c3bab5a",
  "kind": "def",
  "lexical_name": "derive",
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
  "slug": "derive--bcbb2235cddb38899c0757dd",
  "source": {
    "blob": "069ecae606bea5cefcd387aff9a1be100f1f8393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 250,
    "path": "GRWTSK/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcbb2235cddb38899c0757ddb6dad4a32aec13d932cbd7bb5b684bf776289b56",
  "verification": {
    "reference": "docs/verification/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ddc7726067bf2ea5ad540ef8b04d8957929353d98b8c034b2bee61f4c3bab5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def derive (expensive := false) (e : Expr) : MetaM Simp.Result := do
  withTraceNode `Tactic.reduce_mod_char (fun _ => return m!"{e}") do
  let e ← instantiateMVars e

  let config : Simp.Config := {
    zeta := false
    beta := false
    eta  := false
    proj := false
    iota := false
  }
  let congrTheorems ← Meta.getSimpCongrTheorems
  let ext? ← getSimpExtension? `reduce_mod_char
  let ext ← match ext? with
  | some ext => pure ext
  | none => throwError "internal error: reduce_mod_char not registered as simp extension"
  let ctx ← Simp.mkContext config (congrTheorems := congrTheorems)
    (simpTheorems := #[← ext.getTheorems])
  let discharge := Mathlib.Meta.NormNum.discharge
  let r : Simp.Result := {expr := e}
  let matchAndNorm : Simproc := fun e =>
      try return (Simp.Step.done (← matchAndNorm (expensive := expensive) e))
      catch _ => pure .continue
  let pre := Simp.preDefault #[] >> matchAndNorm
  let post := Simp.postDefault #[]
  let r ← r.mkEqTrans (← Simp.main r.expr ctx (methods := { pre, post, discharge? := discharge })).1

  return r

open Parser.Tactic

/--
The tactic `reduce_mod_char` looks for numeric expressions in characteristic `p`
and reduces these to lie between `0` and `p`.

For example:
```
example : (5 : ZMod 4) = 1 := by reduce_mod_char
example : (X ^ 2 - 3 * X + 4 : (ZMod 4)[X]) = X ^ 2 + X := by reduce_mod_char
```

It also handles negation, turning it into multiplication by `p - 1`,
and similarly subtraction.

This tactic uses the type of the subexpression to figure out if it is indeed of positive
characteristic, for improved performance compared to trying to synthesise a `CharP` instance.
The variant `reduce_mod_char!` also tries to use `CharP R n` hypotheses in the context.
(Limitations of the typeclass system mean the tactic can't search for a `CharP R n` instance if
`n` is not yet known; use `have : CharP R n := inferInstance; reduce_mod_char!` as a workaround.)
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `069ecae606bea5cefcd387aff9a1be100f1f8393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
