# parseContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c427d25e5f39d432c80f1f7afebf652fcb0a153f662e012dcfafe67094af9e2",
  "kind": "def",
  "lexical_name": "parseContext",
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
  "slug": "parsecontext--cf5d0898550aa8d8e9998b0b",
  "source": {
    "blob": "ced04f991a97441d85f7a185eab1527b0a1aafc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 163,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant9b7f626fb30ce91814ea3175c101a37a6caa82ab617ac0281395eded30b4be09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf5d0898550aa8d8e9998b0bea03f4210e92d97882a363efe04ef1735b96e5c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant9b7f626fb30ce91814ea3175c101a37a6caa82ab617ac0281395eded30b4be09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c427d25e5f39d432c80f1f7afebf652fcb0a153f662e012dcfafe67094af9e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseContext (only : Bool) (hyps : Array Expr) (target : Expr) :
    AtomM (Expr × Array (Source × Poly) × Poly) := do
  let fail {α} : AtomM α := throwError "polyrith failed: target is not an equality in semirings"
  let some (α, e₁, e₂) := (← whnfR <|← instantiateMVars target).eq? | fail
  let .sort u ← instantiateMVars (← whnf (← inferType α)) | unreachable!
  let some v := u.dec | throwError "not a type{indentExpr α}"
  have α : Q(Type v) := α
  have e₁ : Q($α) := e₁; have e₂ : Q($α) := e₂
  let sα ← synthInstanceQ q(CommSemiring $α)
  let c ← mkCache sα
  let target := (← parse sα c e₁).sub (← parse sα c e₂)
  let rec
    /-- Parses a hypothesis and adds it to the `out` list. -/
    processHyp src ty out := do
      if let some (β, e₁, e₂) := (← instantiateMVars ty).eq? then
        if ← withTransparency (← read).red <| isDefEq α β then
          return out.push (src, (← parse sα c e₁).sub (← parse sα c e₂))
      pure out
  let mut out := #[]
  if !only then
    for ldecl in ← getLCtx do
      out ← processHyp (.fvar ldecl.fvarId) ldecl.type out
  for hyp in hyps, i in [:hyps.size] do
    out ← processHyp (.input i) (← inferType hyp) out
  pure (α, out, target)

/-- A JSON parser for `ℚ` specific to the return value of Sage. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant9b7f626fb30ce91814ea3175c101a37a6caa82ab617ac0281395eded30b4be09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant9b7f626fb30ce91814ea3175c101a37a6caa82ab617ac0281395eded30b4be09.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ced04f991a97441d85f7a185eab1527b0a1aafc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
