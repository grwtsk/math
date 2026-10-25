# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertAfterResult.Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.Lean.MVarId.assert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71ff9939fe4d31d474f2d861464786c1f6a6c47539a648443636b24e3982c3c5",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertAfterResult.Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.Lean.MVarId.assert",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-asser--2c2742a5979b71a5975a4a58",
  "source": {
    "blob": "ddae782e1aa4e40ca878fbdb1bb5c399a2280936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant97572d29de8374c79099f8233f6cec66e283992a076661a487435db5b0b49bb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c2742a5979b71a5975a4a582e2b733be75a9088aa1149b906eedd1d399cff2a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant97572d29de8374c79099f8233f6cec66e283992a076661a487435db5b0b49bb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71ff9939fe4d31d474f2d861464786c1f6a6c47539a648443636b24e3982c3c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertAfterResult.Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.Lean.MVarId.assert (mvarId : MVarId) (name : Name) (type : Expr) (val : Expr) : MetaM MVarId :=
  mvarId.withContext do
    mvarId.checkNotAssigned `assert
    let tag    ← mvarId.getTag
    let target ← mvarId.getType
    let newType := Lean.mkForall name BinderInfo.default type target
    let newMVar ← mkFreshExprSyntheticOpaqueMVar newType tag
    mvarId.assign (mkApp newMVar val)
    return newMVar.mvarId!

/-- Add the hypothesis `h : t`, given `v : t`, and return the new `FVarId`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant97572d29de8374c79099f8233f6cec66e283992a076661a487435db5b0b49bb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant97572d29de8374c79099f8233f6cec66e283992a076661a487435db5b0b49bb9.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddae782e1aa4e40ca878fbdb1bb5c399a2280936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
