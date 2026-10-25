# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc045f0f5645b01c71929015c9b8535743a5ae7488ab9a7b634704b8622eec45",
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
  "slug": "elab-rules--578f37fc3974ef925cd39a79",
  "source": {
    "blob": "11a7528921d708ecdd5494ef918dc931687f6913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant9e8b67fcdf36142b2c4be5b19d15d510fe842bd997693fcbe91eaef7f79b19f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:578f37fc3974ef925cd39a790bb4d7217676a17e7478d4312de093236ba53cd8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant9e8b67fcdf36142b2c4be5b19d15d510fe842bd997693fcbe91eaef7f79b19f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc045f0f5645b01c71929015c9b8535743a5ae7488ab9a7b634704b8622eec45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
| `(tactic| set%$tk $[!%$rw]? $a:ident $[: $ty:term]? := $val:term $[with $[←%$rev]? $h:ident]?) =>
  withMainContext do
    let (ty, vale) ← match ty with
    | some ty =>
      let ty ← Term.elabType ty
      pure (ty, ← elabTermEnsuringType val ty)
    | none =>
      let val ← elabTerm val none
      pure (← inferType val, val)
    let fvar ← liftMetaTacticAux fun goal ↦ do
      let (fvar, goal) ← (← goal.define a.getId ty vale).intro1P
      pure (fvar, [goal])
    withMainContext <|
      Term.addTermInfo' (isBinder := true) a (mkFVar fvar)
    if rw.isNone then
      evalTactic (← `(tactic| try rewrite [show $(← Term.exprToSyntax vale) = $a from rfl] at *))
    match h, rev with
    | some h, some none =>
      evalTactic (← `(tactic| have%$tk
        $h : $a = ($(← Term.exprToSyntax vale) : $(← Term.exprToSyntax ty)) := rfl))
    | some h, some (some _) =>
      evalTactic (← `(tactic| have%$tk
        $h : ($(← Term.exprToSyntax vale) : $(← Term.exprToSyntax ty)) = $a := rfl))
    | _, _ => pure ()

end Mathlib.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant9e8b67fcdf36142b2c4be5b19d15d510fe842bd997693fcbe91eaef7f79b19f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant9e8b67fcdf36142b2c4be5b19d15d510fe842bd997693fcbe91eaef7f79b19f7.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11a7528921d708ecdd5494ef918dc931687f6913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
