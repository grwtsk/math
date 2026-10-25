# applyExtLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a174faf7363ea9365055194e2127d3547abffdb458f2fd4f38d3de0682474dee",
  "kind": "def",
  "lexical_name": "applyExtLemma",
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
  "slug": "applyextlemma--1960e79f976666de588fb692",
  "source": {
    "blob": "fd0947f895b6b079da872c1277683d16c6a0c9b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant47e35ef43205190e3244f62a9988b1ae73bedc84884cd6a3b7947bff9c0c4f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1960e79f976666de588fb6921a32fadc2f4eb8aeb4c12943dd3156e92848d96b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant47e35ef43205190e3244f62a9988b1ae73bedc84884cd6a3b7947bff9c0c4f7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a174faf7363ea9365055194e2127d3547abffdb458f2fd4f38d3de0682474dee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyExtLemma (goal : MVarId) : MetaM (List MVarId) := goal.withContext do
  let tgt ← goal.getType'
  unless tgt.isAppOfArity ``Eq 3 do
    throwError "applyExtLemma only applies to equations, not{indentExpr tgt}"
  let ty := tgt.getArg! 0
  let s ← saveState
  for lem in ← getExtLemmas ty do
    try
      -- Note: We have to do this extra check to ensure that we don't apply e.g.
      -- funext to a goal `(?a₁ : ?b) = ?a₂` to produce `(?a₁ x : ?b') = ?a₂ x`,
      -- since this will loop.
      -- We require that the type of the equality is not changed by the `goal.apply c` line
      -- TODO: add flag to apply tactic to toggle unification vs. matching
      withNewMCtxDepth do
        let c ← mkConstWithFreshMVarLevels lem.declName
        let (_, _, declTy) ← withDefault <| forallMetaTelescopeReducing (← inferType c)
        guard (← isDefEq tgt declTy)
      -- We use `newGoals := .all` as this is
      -- more useful in practice with dependently typed arguments of `@[ext]` lemmas.
      return ← goal.apply (cfg := { newGoals := .all }) (← mkConstWithFreshMVarLevels lem.declName)
    catch _ => s.restore
  throwError "no applicable extensionality lemma found for{indentExpr ty}"

/-- Apply a single extensionality lemma to the current goal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant47e35ef43205190e3244f62a9988b1ae73bedc84884cd6a3b7947bff9c0c4f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant47e35ef43205190e3244f62a9988b1ae73bedc84884cd6a3b7947bff9c0c4f7b.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd0947f895b6b079da872c1277683d16c6a0c9b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
