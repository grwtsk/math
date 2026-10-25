# hideForwardImplDetailHyps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29c5a828fa97c952e7b90973c7b308d8fa165f0849c31762a78fb520fea42d1c",
  "kind": "def",
  "lexical_name": "hideForwardImplDetailHyps",
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
  "slug": "hideforwardimpldetailhyps--299eb9acfdb8bbe6e87f11ee",
  "source": {
    "blob": "17bf7a40efccbde709606e63a18e62bfb54736c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant19641cf29e8d46ae1651a62cd7516a196cfed409f317c06bb187a7bc13f22284.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:299eb9acfdb8bbe6e87f11eedd732e8e17098ee739be6b8af00b7033e9888c61",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant19641cf29e8d46ae1651a62cd7516a196cfed409f317c06bb187a7bc13f22284.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29c5a828fa97c952e7b90973c7b308d8fa165f0849c31762a78fb520fea42d1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hideForwardImplDetailHyps (goal : MVarId) : MetaM MVarId :=
  goal.withContext do
    let mut lctx ← getLCtx
    let mut localInsts ← getLocalInstances
    let mut anyChange := false
    for ldecl in ← getLCtx do
      if ! ldecl.isImplementationDetail &&
         isForwardImplDetailHypName ldecl.userName then
        lctx := lctx.setKind ldecl.fvarId .implDetail
        localInsts := localInsts.erase ldecl.fvarId
        anyChange := true
    if ! anyChange then
      return goal
    let goal' ← mkFreshExprMVarAt lctx localInsts (← goal.getType)
    goal.assign goal'
    return goal'.mvarId!

end Aesop
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant19641cf29e8d46ae1651a62cd7516a196cfed409f317c06bb187a7bc13f22284.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant19641cf29e8d46ae1651a62cd7516a196cfed409f317c06bb187a7bc13f22284.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17bf7a40efccbde709606e63a18e62bfb54736c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
