# _root_.Lean.MVarId.revertFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:028f721af4a260bf6c479fd149bcd10e0dcebaad8162bcba24cc1a63065c4326",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.revertFrom",
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
  "slug": "root-lean-mvarid-revertfrom--9fa403eb759d28e71827a179",
  "source": {
    "blob": "9587a9a63dab5ac98b9de6c56d98fe866557423f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fa403eb759d28e71827a17924343e5ec9eeb32c14857c793cbadc942ad43a7d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:028f721af4a260bf6c479fd149bcd10e0dcebaad8162bcba24cc1a63065c4326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.revertFrom (mvarId : MVarId) (fvarId : FVarId) : MetaM (Array FVarId × MVarId) :=
  mvarId.withContext do
    let localDecl ← fvarId.getDecl
    let fvarIds := (← getLCtx).foldl (init := #[]) (start := localDecl.index) fun fvarIds decl => fvarIds.push decl.fvarId
    mvarId.revert fvarIds (preserveOrder := true) (clearAuxDeclsInsteadOfRevert := true)

/--
Reverts all free variables in the goal `mvarId`.
**Remark**: Auxiliary local declarations are cleared.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9587a9a63dab5ac98b9de6c56d98fe866557423f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
