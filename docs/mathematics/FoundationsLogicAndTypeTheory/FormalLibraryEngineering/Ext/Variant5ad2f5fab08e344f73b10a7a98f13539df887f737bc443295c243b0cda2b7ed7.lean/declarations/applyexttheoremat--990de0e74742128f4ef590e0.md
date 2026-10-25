# applyExtTheoremAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4d9b764cde3ec678f837b060c9fd82879a98d455b97b756b4e39544f2c0a3ae",
  "kind": "def",
  "lexical_name": "applyExtTheoremAt",
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
  "slug": "applyexttheoremat--990de0e74742128f4ef590e0",
  "source": {
    "blob": "526ed04905f730e568144cbf0043f439a6d86651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:990de0e74742128f4ef590e0f25a61273c0de3d649eb052472510f7fbe64afbd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4d9b764cde3ec678f837b060c9fd82879a98d455b97b756b4e39544f2c0a3ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def applyExtTheoremAt (goal : MVarId) : MetaM (List MVarId) := goal.withContext do
  let tgt ← goal.getType'
  unless tgt.isAppOfArity ``Eq 3 do
    throwError "This extensionality tactic only applies to equalities, not{indentExpr tgt}"
  let ty := tgt.getArg! 0
  let s ← saveState
  for lem in ← getExtTheorems ty do
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
      -- more useful in practice with dependently typed arguments of `@[ext]` theorems.
      return ← goal.apply (cfg := { newGoals := .all }) (← mkConstWithFreshMVarLevels lem.declName)
    catch _ => s.restore
  throwError m!"No applicable extensionality theorem found for type{indentExpr ty}"
    ++ .note m!"Extensionality theorems can be registered by marking them with the `[ext]` attribute"

/-- Apply a single extensionality theorem to the current goal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `526ed04905f730e568144cbf0043f439a6d86651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
