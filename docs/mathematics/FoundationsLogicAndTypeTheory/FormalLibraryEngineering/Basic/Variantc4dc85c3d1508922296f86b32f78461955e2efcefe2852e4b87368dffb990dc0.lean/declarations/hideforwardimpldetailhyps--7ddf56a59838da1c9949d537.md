# hideForwardImplDetailHyps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c74d3faf6714d34d024c09367f3c865778a6b03063622cc17c2aed7f5ea1ce4",
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
  "slug": "hideforwardimpldetailhyps--7ddf56a59838da1c9949d537",
  "source": {
    "blob": "4832aae21ace5846e12ae1b6f480398acba27d37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4dc85c3d1508922296f86b32f78461955e2efcefe2852e4b87368dffb990dc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ddf56a59838da1c9949d5372cdf81456669c0f1506a520155f9345e5dd01564",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4dc85c3d1508922296f86b32f78461955e2efcefe2852e4b87368dffb990dc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c74d3faf6714d34d024c09367f3c865778a6b03063622cc17c2aed7f5ea1ce4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–123.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4dc85c3d1508922296f86b32f78461955e2efcefe2852e4b87368dffb990dc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc4dc85c3d1508922296f86b32f78461955e2efcefe2852e4b87368dffb990dc0.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4832aae21ace5846e12ae1b6f480398acba27d37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
