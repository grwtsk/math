# abelNFLocalDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:795bdcca460a82129c552e01fc5dcda670e38fcb9c18cc8a398025a11b4a9bd0",
  "kind": "def",
  "lexical_name": "abelNFLocalDecl",
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
  "slug": "abelnflocaldecl--d64b37c82311ceab401016a6",
  "source": {
    "blob": "50b0999841e61371a9a1fcbe4ca613e71592a2e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 515,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variant875320124149046c4e2b6d956c62d0899f5a9d9cac7d4b9aa39faea55db4f136.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d64b37c82311ceab401016a61f39755d8fc91b5d1505dcc7c5e37dc3f6f7414a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variant875320124149046c4e2b6d956c62d0899f5a9d9cac7d4b9aa39faea55db4f136.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:795bdcca460a82129c552e01fc5dcda670e38fcb9c18cc8a398025a11b4a9bd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def abelNFLocalDecl (s : IO.Ref AtomM.State) (cfg : AbelNF.Config) (fvarId : FVarId) :
    TacticM Unit := withMainContext do
  let tgt ← instantiateMVars (← fvarId.getType)
  let goal ← getMainGoal
  let myres ← abelNFCore s cfg tgt
  if myres.expr == tgt then throwError "abel_nf made no progress"
  match ← applySimpResultToLocalDecl goal fvarId myres false with
  | none => replaceMainGoal []
  | some (_, newGoal) => replaceMainGoal [newGoal]

@[tactic_alt abel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variant875320124149046c4e2b6d956c62d0899f5a9d9cac7d4b9aa39faea55db4f136.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variant875320124149046c4e2b6d956c62d0899f5a9d9cac7d4b9aa39faea55db4f136.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50b0999841e61371a9a1fcbe4ca613e71592a2e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
