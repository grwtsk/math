# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRevert.Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.Lean.MVarId.revertFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4b57de5bc2d934a57155a02e020f4ffc4f1a9f65813c1336111b0cabbb3b904",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRevert.Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.Lean.MVarId.revertFrom",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--37a19d73d0efd8ca9aa737b7",
  "source": {
    "blob": "2d2bac9d8022e3002c34dbf586410777c6417c70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant29b12680cc9d35b84d5ba1fb572c60772bfd272ef81940339548d8f6dc8ba856.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37a19d73d0efd8ca9aa737b7669d25be7c424e506896080f10f159d0969fe3dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant29b12680cc9d35b84d5ba1fb572c60772bfd272ef81940339548d8f6dc8ba856.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4b57de5bc2d934a57155a02e020f4ffc4f1a9f65813c1336111b0cabbb3b904`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRevert.Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.Lean.MVarId.revertFrom (mvarId : MVarId) (fvarId : FVarId) : MetaM (Array FVarId × MVarId) :=
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant29b12680cc9d35b84d5ba1fb572c60772bfd272ef81940339548d8f6dc8ba856.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant29b12680cc9d35b84d5ba1fb572c60772bfd272ef81940339548d8f6dc8ba856.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d2bac9d8022e3002c34dbf586410777c6417c70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
