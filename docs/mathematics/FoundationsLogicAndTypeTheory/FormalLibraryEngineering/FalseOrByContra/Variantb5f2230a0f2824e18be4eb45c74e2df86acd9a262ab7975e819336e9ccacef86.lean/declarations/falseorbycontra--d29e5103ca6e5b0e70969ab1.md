# falseOrByContra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0cf3ac0e72b6aac3aa2ca88c223edd18aae3ad49921aea836185b81546fb7139",
  "kind": "def",
  "lexical_name": "falseOrByContra",
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
  "slug": "falseorbycontra--d29e5103ca6e5b0e70969ab1",
  "source": {
    "blob": "50cbaa0c484958de65fb8ebc6c1a937456afdc47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FalseOrByContra/Variantb5f2230a0f2824e18be4eb45c74e2df86acd9a262ab7975e819336e9ccacef86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d29e5103ca6e5b0e70969ab117accb05c19c5aee44cfc87e87d821024d76ea43",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FalseOrByContra/Variantb5f2230a0f2824e18be4eb45c74e2df86acd9a262ab7975e819336e9ccacef86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0cf3ac0e72b6aac3aa2ca88c223edd18aae3ad49921aea836185b81546fb7139`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def falseOrByContra (g : MVarId) (useClassical : Option Bool := none) : MetaM (Option MVarId) := do
  let ty ← whnfR (← g.getType)
  match ty with
  | .const ``False _ => return g
  | .forallE ..
  | .app (.const ``Not _) _ =>
    -- We set the transparency back to default; otherwise this breaks when run by a `simp` discharger.
    falseOrByContra (← withTransparency default g.intro1P).2 useClassical
  | _ =>
    let gs ← if (← isProp ty) then
      match useClassical with
      | some true => some <$> g.applyConst ``Classical.byContradiction
      | some false =>
        try some <$> g.applyConst ``Decidable.byContradiction
        catch _ => pure none
      | none =>
        try some <$> g.applyConst ``Decidable.byContradiction
        catch _ => some <$> g.applyConst ``Classical.byContradiction
    else
      pure none
    match gs with
    | some [] => return none
    | some [g] => return some (← g.intro1).2
    | some _ => panic! "expected at most one sugoal"
    | none =>
      match (← g.applyConst ``False.elim) with
      | [] => return none
      | [g] => return some g
      | _ => panic! "expected at most one sugoal"

@[builtin_tactic Lean.Parser.Tactic.falseOrByContra]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FalseOrByContra/Variantb5f2230a0f2824e18be4eb45c74e2df86acd9a262ab7975e819336e9ccacef86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FalseOrByContra/Variantb5f2230a0f2824e18be4eb45c74e2df86acd9a262ab7975e819336e9ccacef86.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50cbaa0c484958de65fb8ebc6c1a937456afdc47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
