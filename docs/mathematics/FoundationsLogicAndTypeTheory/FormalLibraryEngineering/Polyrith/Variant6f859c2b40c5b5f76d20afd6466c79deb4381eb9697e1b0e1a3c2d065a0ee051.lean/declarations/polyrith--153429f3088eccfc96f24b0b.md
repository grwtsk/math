# polyrith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:337e4c21a32f75b79b55c3ccb6059326e16cce45b12785710caf44443af7b377",
  "kind": "def",
  "lexical_name": "polyrith",
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
  "slug": "polyrith--153429f3088eccfc96f24b0b",
  "source": {
    "blob": "789f818a47ad3a0baab32d3e4005c0b68ae9a8da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 404,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant6f859c2b40c5b5f76d20afd6466c79deb4381eb9697e1b0e1a3c2d065a0ee051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:153429f3088eccfc96f24b0b28600d7cb85a566b571f83fe468fd4b8548a8210",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant6f859c2b40c5b5f76d20afd6466c79deb4381eb9697e1b0e1a3c2d065a0ee051.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:337e4c21a32f75b79b55c3ccb6059326e16cce45b12785710caf44443af7b377`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def polyrith (g : MVarId) (only : Bool) (hyps : Array Expr)
    (traceOnly := false) : MetaM (Except MVarId (TSyntax `tactic)) := do
  IO.sleep 10 -- otherwise can lead to weird errors when actively editing code with polyrith calls
  g.withContext <| AtomM.run .reducible do
    let (α, hyps', target) ← parseContext only hyps (← g.getType)
    let rec
      /-- Try to prove the goal by `ring` and fail with the given message otherwise. -/
      byRing msg := do
        let stx ← `(tactic| ring)
        try
          let ([], _) ← Elab.runTactic g stx | failure
          return .ok stx
        catch _ => throwError "{msg} and the goal is not provable by ring"
    if hyps'.isEmpty then
      return ← byRing "polyrith did not find any relevant hypotheses"
    let vars := (← get).atoms.size
    match ← runSage traceOnly α vars hyps' target with
    | .ok { trace, data } =>
      if let some trace := trace then logInfo trace
      if let some {coeffs := polys, power := pow} := data then
        let vars ← liftM <| (← get).atoms.mapM delab
        let p ← Poly.sumM (polys.zip hyps') fun (p, src, _) => do
          let h := .hyp (← delab (match src with | .input i => hyps[i]! | .fvar h => .fvar h))
          pure <| match p.unDiv? with
          | some (p, den) => (p.mul' h).div (.const den)
          | none => p.mul' h
        let stx := (withRef (← getRef) <| p.toSyntax vars).run
        let tac ←
          if let .const 0 := p then `(tactic| linear_combination)
          else if pow = 1 then `(tactic| linear_combination $stx:term)
          else `(tactic| linear_combination (exp := $(quote pow)) $stx:term)
        try
          guard (← Elab.runTactic g tac).1.isEmpty
        catch _ => throwError
          "polyrith found the following certificate, but it failed to close the goal:\n{stx}"
        pure <| .ok tac
      else if traceOnly then
        return .error g
      else throwError "internal error: no output available"
    | .error { name, value } =>
      throwError "polyrith failed to retrieve a solution from Sage! {name}: {value}"

/--
Attempts to prove polynomial equality goals through polynomial arithmetic
on the hypotheses (and additional proof terms if the user specifies them).
It proves the goal by generating an appropriate call to the tactic
`linear_combination`. If this call succeeds, the call to `linear_combination`
is suggested to the user.

* `polyrith` will use all relevant hypotheses in the local context.
* `polyrith [t1, t2, t3]` will add proof terms t1, t2, t3 to the local context.
* `polyrith only [h1, h2, h3, t1, t2, t3]` will use only local hypotheses
  `h1`, `h2`, `h3`, and proofs `t1`, `t2`, `t3`. It will ignore the rest of the local context.

Notes:
* This tactic only works with a working internet connection, since it calls Sage
  using the SageCell web API at <https://sagecell.sagemath.org/>.
  Many thanks to the Sage team and organization for allowing this use.
* This tactic assumes that the user has `curl` available on path.

Examples:

```lean
example (x y : ℚ) (h1 : x*y + 2*x = 1) (h2 : x = y) :
    x*y = -2*y + 1 := by
  polyrith
-- Try this: linear_combination h1 - 2 * h2

example (x y z w : ℚ) (hzw : z = w) : x*z + 2*y*z = x*w + 2*y*w := by
  polyrith
-- Try this: linear_combination (2 * y + x) * hzw

axiom scary : ∀ a b : ℚ, a + b = 0

example (a b c d : ℚ) (h : a + b = 0) (h2: b + c = 0) : a + b + c + d = 0 := by
  polyrith only [scary c d, h]
-- Try this: linear_combination scary c d + h
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant6f859c2b40c5b5f76d20afd6466c79deb4381eb9697e1b0e1a3c2d065a0ee051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant6f859c2b40c5b5f76d20afd6466c79deb4381eb9697e1b0e1a3c2d065a0ee051.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `789f818a47ad3a0baab32d3e4005c0b68ae9a8da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
