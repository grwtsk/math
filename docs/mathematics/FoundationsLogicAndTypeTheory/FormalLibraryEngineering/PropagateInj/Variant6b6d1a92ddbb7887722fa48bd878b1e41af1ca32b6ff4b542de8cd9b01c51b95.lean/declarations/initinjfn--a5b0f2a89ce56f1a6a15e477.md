# initInjFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ee963d1e7e258a9219d4853d683150f99a585285e78a68462303b4424630693",
  "kind": "def",
  "lexical_name": "initInjFn",
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
  "slug": "initinjfn--a5b0f2a89ce56f1a6a15e477",
  "source": {
    "blob": "6a624a7a6eefedcf2e3907818c8b272336dc82c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateInj/Variant6b6d1a92ddbb7887722fa48bd878b1e41af1ca32b6ff4b542de8cd9b01c51b95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5b0f2a89ce56f1a6a15e477758b2273665ab2b4a056374edfde7a70ae2a8435",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateInj/Variant6b6d1a92ddbb7887722fa48bd878b1e41af1ca32b6ff4b542de8cd9b01c51b95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ee963d1e7e258a9219d4853d683150f99a585285e78a68462303b4424630693`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def initInjFn (us : List Level) (α β : Expr) (f : Expr) (h : Expr) : GoalM Unit := do
  modify fun s => { s with inj.fns := s.inj.fns.insert { expr := f } { us, α, β, h } }
  let hidx := f.toHeadIndex
  for e in (← get).appMap.findD hidx [] do
    if e.isApp && isSameExpr e.appFn! f then
      mkInjEq e

builtin_grind_propagator propagateInj ↓Function.Injective := fun e => do
  let_expr i@Function.Injective α β f := e | return ()
  if (← isEqTrue e) then
    let f' := f.eta
    let f ← if isSameExpr f f' then
      pure f
    else
      let f' ← preprocessLight f'
      internalize f' (← getGeneration e)
      pure f'
    initInjFn i.constLevels! α β f (mkOfEqTrueCore e (← mkEqTrueProof e))

end Lean.Meta.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateInj/Variant6b6d1a92ddbb7887722fa48bd878b1e41af1ca32b6ff4b542de8cd9b01c51b95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateInj/Variant6b6d1a92ddbb7887722fa48bd878b1e41af1ca32b6ff4b542de8cd9b01c51b95.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a624a7a6eefedcf2e3907818c8b272336dc82c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
