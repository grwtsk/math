# parse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31924fc56439949b732ede01c10aed1768a818071fc7585db73b15f51bfb0d66",
  "kind": "def",
  "lexical_name": "parse",
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
  "slug": "parse--e6b9be374bf2848fbec7c8d7",
  "source": {
    "blob": "ad3a89d217c9a02d71a08f2139c3d72e10b57f6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant4de8bd498bd6655cbfaa1f75b640c4ee3d9db42d9cada4dcff9a05912bbced0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6b9be374bf2848fbec7c8d7fc632d733c71cdc162449d722b18a0a0240b260f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant4de8bd498bd6655cbfaa1f75b640c4ee3d9db42d9cada4dcff9a05912bbced0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31924fc56439949b732ede01c10aed1768a818071fc7585db73b15f51bfb0d66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parse (stx : Syntax) (goal : MVarId) : TermElabM TacticConfig :=
  withRef stx do
    match stx with
    | `(tactic| aesop $clauses:Aesop.tactic_clause*) =>
      go (traceScript := false) clauses
    | `(tactic| aesop? $clauses:Aesop.tactic_clause*) =>
      go (traceScript := true) clauses
    | _ => throwUnsupportedSyntax
  where
    go (traceScript : Bool) (clauses : Array (TSyntax `Aesop.tactic_clause)) :
        TermElabM TacticConfig := do
      let init : TacticConfig := {
        additionalRules := #[]
        erasedRules := #[]
        enabledRuleSets := ← getDefaultRuleSetNames
        options := { traceScript }
        simpConfig := {}
        simpConfigSyntax? := none
      }
      let (_, config) ← clauses.forM (addClause traceScript) |>.run init
      let simpConfig ←
        if let some stx := config.simpConfigSyntax? then
          if config.options.useSimpAll then
            (·.toConfig) <$> elabSimpConfigCtx stx
          else
            elabSimpConfig stx
        else
          if config.options.useSimpAll then
            pure { : Simp.ConfigCtx}.toConfig
          else
            pure { : Simp.Config }
        return { config with simpConfig }

    addClause (traceScript : Bool) (stx : TSyntax `Aesop.tactic_clause) :
        StateRefT TacticConfig TermElabM Unit :=
      withRef stx do
        match stx with
        | `(tactic_clause| (add $es:Aesop.rule_expr,*)) => do
          let rs ← (es : Array Syntax).mapM λ e =>
            RuleExpr.elab e |>.run $ .forAdditionalRules goal
          modify λ c => { c with additionalRules := c.additionalRules ++ rs }
        | `(tactic_clause| (erase $es:Aesop.rule_expr,*)) => do
          let rs ← (es : Array Syntax).mapM λ e =>
            RuleExpr.elab e |>.run $ .forErasing goal
          modify λ c => { c with erasedRules := c.erasedRules ++ rs }
        | `(tactic_clause| (rule_sets := [ $specs:ruleSetSpec,* ])) => do
          let mut enabledRuleSets := (← get).enabledRuleSets
          for spec in (specs : Array Syntax) do
            match spec with
            | `(Parser.ruleSetSpec| - $rsName:ident) => do
              let rsName := RuleSetName.elab rsName
              unless enabledRuleSets.contains rsName do throwError
                "aesop: trying to deactivate rule set '{rsName}', but it is not active"
              enabledRuleSets := enabledRuleSets.erase rsName
            | `(Parser.ruleSetSpec| $rsName:ident) => do
              let rsName := RuleSetName.elab rsName
              if enabledRuleSets.contains rsName then throwError
                "aesop: rule set '{rsName}' is already active"
              enabledRuleSets := enabledRuleSets.insert rsName
            | _ => throwUnsupportedSyntax
          modify λ c => { c with enabledRuleSets }
        | `(tactic_clause| (config := $t:term)) =>
          let options ← elabOptions t
          let options :=
            { options with traceScript := options.traceScript || traceScript }
          modify λ c => { c with options }
        | `(tactic_clause| (simp_config := $t:term)) =>
          modify λ c => { c with simpConfigSyntax? := some t }
        | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant4de8bd498bd6655cbfaa1f75b640c4ee3d9db42d9cada4dcff9a05912bbced0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant4de8bd498bd6655cbfaa1f75b640c4ee3d9db42d9cada4dcff9a05912bbced0f.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad3a89d217c9a02d71a08f2139c3d72e10b57f6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
