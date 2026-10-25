# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a76d659453b7adde49a8eddb0fd806acea627f7362d2736f3f838aba5f826a4e",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--16c6c56c8e8003f6e524b0dc",
  "source": {
    "blob": "67e7ecde04c6ca6ff2d948a48bcf8bb84159043a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16c6c56c8e8003f6e524b0dcf49f4be71d15a9a1ba287f2a49d6f5963a050bfe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a76d659453b7adde49a8eddb0fd806acea627f7362d2736f3f838aba5f826a4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
elab_rules : tactic
| `(tactic| convert_to $[$cfg:config]? $[←%$sym]? $newType $[using $n]?
    $[with $ps?*]? $[$loc?:location]?) => do
  let n : ℕ := n |>.map (·.getNat) |>.getD 1
  let config ← Congr!.elabConfig (mkOptionalNode cfg)
  let patterns := (Lean.Elab.Tactic.RCases.expandRIntroPats (ps?.getD #[])).toList
  withLocation (expandOptLocation (mkOptionalNode loc?))
    (atLocal := fun fvarId ↦ do
      let (e, gs) ← elabTermForConvert newType (← inferType (← fvarId.getType))
      liftMetaTactic fun g ↦ do
        let (g', gs') ← g.convertLocalDecl fvarId e sym.isSome n config patterns
        return (gs' ++ (g' :: gs)))
    (atTarget := do
      let expectedType ← mkFreshExprMVar (mkSort (← getLevel (← getMainTarget)))
      let (e, gs) ← elabTermForConvert (← `((id ?_ : $newType))) expectedType
      liftMetaTactic fun g ↦
        return (← g.convert e sym.isSome n config patterns) ++ gs)
    (failed := fun _ ↦ throwError "convert_to failed")

/--
`ac_change g using n` is `convert_to g using n` followed by `ac_rfl`. It is useful for
rearranging/reassociating e.g. sums:
```lean
example (a b c d e f g N : ℕ) : (a + b) + (c + d) + (e + f) + g ≤ N := by
  ac_change a + d + e + f + c + g + b ≤ _
  -- ⊢ a + d + e + f + c + g + b ≤ N
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67e7ecde04c6ca6ff2d948a48bcf8bb84159043a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
