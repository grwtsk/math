# specializeRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58aa921ac76768a9396df0776a1fa2f972954c57fba02f648d3ef6ab3e8653fc",
  "kind": "def",
  "lexical_name": "specializeRule",
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
  "slug": "specializerule--4d83d4b515531304bf1064fd",
  "source": {
    "blob": "ae1370977752387921c35589749e50128584c902",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant39099f7cef9ff6e577ac4d0a63238bcfdb0eae14d562deb26ab017b475e22677.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d83d4b515531304bf1064fdeccdbe880c6a3f30b8e4256c23aa77bf5af007ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant39099f7cef9ff6e577ac4d0a63238bcfdb0eae14d562deb26ab017b475e22677.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58aa921ac76768a9396df0776a1fa2f972954c57fba02f648d3ef6ab3e8653fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def specializeRule (rule : Expr) (subst : Substitution) : MetaM Expr :=
  withNewMCtxDepth do
    let lmvarIds := collectLevelMVars {} (← instantiateMVars rule) |>.result
    for h : i in [:lmvarIds.size] do
      if let some l := subst.findLevel? ⟨i⟩ then
        assignLevelMVar lmvarIds[i] l
    forallTelescopeReducing (← inferType rule) λ fvarIds _ => do
      let mut args := Array.mkEmpty fvarIds.size
      let mut remainingFVarIds := Array.mkEmpty fvarIds.size
      for h : i in [:fvarIds.size] do
        if let some inst := subst.find? ⟨i⟩ then
          args := args.push $ some inst
        else
          let fvarId := fvarIds[i]
          args := args.push $ some fvarId
          remainingFVarIds := remainingFVarIds.push fvarId
      let result ← mkLambdaFVars remainingFVarIds (← mkAppOptM' rule args)
      return result

end Substitution

/-- Open the type of a rule `e`. If a substitution `σ` is given, this function
acts like `Substitution.openRuleType σ`. Otherwise it acts like
`forallMetaTelescope`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant39099f7cef9ff6e577ac4d0a63238bcfdb0eae14d562deb26ab017b475e22677.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant39099f7cef9ff6e577ac4d0a63238bcfdb0eae14d562deb26ab017b475e22677.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae1370977752387921c35589749e50128584c902` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
