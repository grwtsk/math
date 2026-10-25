# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkFreshBinderNameForTacticCore.Variantbfaa570ed00789ce9fb256154eaed7869420e3086bd6bb34ada207b0b7a84487.Lean.MVarId.intro1_

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33663d1d0de42f237648df53d2525ee9d3e333299c336c1326b34dbfcfa8bff9",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkFreshBinderNameForTacticCore.Variantbfaa570ed00789ce9fb256154eaed7869420e3086bd6bb34ada207b0b7a84487.Lean.MVarId.intro1_",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-mkfre--06606fe0281944c3b86817f2",
  "source": {
    "blob": "15628a85847b73581684d78b52021301b3aace4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 181,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6d21e1a1f224b7aa36d002187ba45a51e153c115b3b5d9ebd6e954d6ee696c4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06606fe0281944c3b86817f209e98ac2dfa2ce9ca30a004fe2a8b8b9514e26f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6d21e1a1f224b7aa36d002187ba45a51e153c115b3b5d9ebd6e954d6ee696c4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33663d1d0de42f237648df53d2525ee9d3e333299c336c1326b34dbfcfa8bff9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkFreshBinderNameForTacticCore.Variantbfaa570ed00789ce9fb256154eaed7869420e3086bd6bb34ada207b0b7a84487.Lean.MVarId.intro1_ (mvarId : MVarId) : MetaM MVarId := do
  mvarId.withContext do
    let target ← mvarId.getType'
    match target with
    | .forallE n β α bi =>
      if α.hasLooseBVars then
        throwError "intro1_: expected arrow type\n{mvarId}"
      let tag ← mvarId.getTag
      let newMVar ← mkFreshExprSyntheticOpaqueMVar α tag
      mvarId.assign (.lam n β newMVar bi)
      return newMVar.mvarId!
    | _ => throwError "intro1_: expected arrow type\n{mvarId}"

/--
Calculate the number of new hypotheses that would be created by `intros`,
i.e. the number of binders which can be introduced without unfolding definitions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6d21e1a1f224b7aa36d002187ba45a51e153c115b3b5d9ebd6e954d6ee696c4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6d21e1a1f224b7aa36d002187ba45a51e153c115b3b5d9ebd6e954d6ee696c4e.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15628a85847b73581684d78b52021301b3aace4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
