# exfalso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95a0d8616b2c272280c9b8b341227e74de921c87843effc526695dff44c9dc3e",
  "kind": "def",
  "lexical_name": "exfalso",
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
  "slug": "exfalso--f18ab879c1d6c5bc6f5d1481",
  "source": {
    "blob": "0b1ce93f4b13e0507ca333baf895d38dd0cc77a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 286,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f18ab879c1d6c5bc6f5d14810429ce29a30d969f399fc9334c234da934088b6a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95a0d8616b2c272280c9b8b341227e74de921c87843effc526695dff44c9dc3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exfalso (mvarId : MVarId) : MetaM MVarId :=
  mvarId.withContext do
    mvarId.checkNotAssigned `exfalso
    let target ← instantiateMVars (← mvarId.getType)
    let u ← getLevel target
    let mvarIdNew ← mkFreshExprSyntheticOpaqueMVar (mkConst ``False) (tag := (← mvarId.getTag))
    mvarId.assign (mkApp2 (mkConst ``False.elim [u]) target mvarIdNew)
    return mvarIdNew.mvarId!

/--
Apply the `n`-th constructor of the target type,
checking that it is an inductive type,
and that there are the expected number of constructors.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b1ce93f4b13e0507ca333baf895d38dd0cc77a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
