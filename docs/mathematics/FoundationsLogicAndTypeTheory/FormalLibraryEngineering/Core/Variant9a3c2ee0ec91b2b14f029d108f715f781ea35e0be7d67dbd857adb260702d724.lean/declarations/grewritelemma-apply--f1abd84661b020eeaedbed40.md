# GRewriteLemma.apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b1004064c4598963d0bb88d30d553ffad54b7c2e431d8f026947501d3fdb5d6",
  "kind": "def",
  "lexical_name": "GRewriteLemma.apply",
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
  "slug": "grewritelemma-apply--f1abd84661b020eeaedbed40",
  "source": {
    "blob": "1381b2ca2184bed11453f20c7d7cb89b37aeec71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 165,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9a3c2ee0ec91b2b14f029d108f715f781ea35e0be7d67dbd857adb260702d724.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1abd84661b020eeaedbed4092bf95a1cd3844da0ef88806320c5e4934871072",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9a3c2ee0ec91b2b14f029d108f715f781ea35e0be7d67dbd857adb260702d724.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b1004064c4598963d0bb88d30d553ffad54b7c2e431d8f026947501d3fdb5d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GRewriteLemma.apply (lem : GRewriteLemma) (goal : MVarId) (symm : Bool)
    (config : GRewrite.Config) : MetaM Bool := do
  withTraceNode `Meta.grewrite (fun _ ↦ return m!"rewriting with `{lem.proof}`") do
  let (type, proof) ←
    if symm then
      let proof ← try lem.proof.applySymm catch _ => return false
      pure (← inferType proof, proof)
    else
      pure (lem.type, lem.proof)
  withConfig (fun oldConfig => { config, oldConfig with }) do
  if ← isDefEq (← goal.getType) type then
    goal.assign proof
    return true
  let mctx ← getMCtx
  for (n, tac) in (forwardExt.getState (← getEnv)).2 do
    -- Explicitly exclude a few `gcongr_forward` extensions that are not relevant here.
    if n matches ``GCongr.exact | ``GCongr.exactRefl then continue
    try tac.eval proof goal; return true
    catch _ => setMCtx mctx
  return false

/-- Create the `gcongr` goal corresponding to rewriting `e` by relation `rel?`,
so that we can apply `gcongr` lemmas to it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9a3c2ee0ec91b2b14f029d108f715f781ea35e0be7d67dbd857adb260702d724.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9a3c2ee0ec91b2b14f029d108f715f781ea35e0be7d67dbd857adb260702d724.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1381b2ca2184bed11453f20c7d7cb89b37aeec71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
