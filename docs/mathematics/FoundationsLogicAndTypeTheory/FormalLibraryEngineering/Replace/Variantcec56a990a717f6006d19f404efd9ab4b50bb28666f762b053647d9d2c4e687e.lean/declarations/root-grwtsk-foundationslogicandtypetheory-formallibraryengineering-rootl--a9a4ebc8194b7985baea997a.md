# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdReplaceTargetEq.Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.Lean.MVarId.replaceLocalDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74c810c0bf6a1ebf2dc63fb3ae9a606a10578c179aec0548dc1bfb236f5f01e0",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdReplaceTargetEq.Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.Lean.MVarId.replaceLocalDecl",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--a9a4ebc8194b7985baea997a",
  "source": {
    "blob": "517be6718779b9d272de21916cdd7048579236fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantcec56a990a717f6006d19f404efd9ab4b50bb28666f762b053647d9d2c4e687e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9a4ebc8194b7985baea997ad5b555f0825509e4c56580ebb5c3b33f432100df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantcec56a990a717f6006d19f404efd9ab4b50bb28666f762b053647d9d2c4e687e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74c810c0bf6a1ebf2dc63fb3ae9a606a10578c179aec0548dc1bfb236f5f01e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdReplaceTargetEq.Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.Lean.MVarId.replaceLocalDecl (mvarId : MVarId) (fvarId : FVarId) (typeNew : Expr) (eqProof : Expr) : MetaM AssertAfterResult :=
  mvarId.withContext do
    let typeNewPr ← mkEqMP eqProof (mkFVar fvarId)
    mvarId.replace fvarId typeNewPr typeNew

/--
Replaces the type of `fvarId` at `mvarId` with `typeNew`.
Remark: this method assumes that `typeNew` is definitionally equal to the current type of `fvarId`,
and that `typeNew` is well-formed at this position.

If `typeNew` is equal to current type of `fvarId`, then returns `mvarId` unchanged.
Uses `Expr.equal` for the comparison so that it is possible to update binder names, etc., which are user-visible.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantcec56a990a717f6006d19f404efd9ab4b50bb28666f762b053647d9d2c4e687e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantcec56a990a717f6006d19f404efd9ab4b50bb28666f762b053647d9d2c4e687e.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `517be6718779b9d272de21916cdd7048579236fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
