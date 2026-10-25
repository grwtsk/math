# elabAndEvalMatchKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a0fb277e430122a1b8d1c7f7f9e51a4d3cd3c49bb3f2c899e26fab13162afbb",
  "kind": "def",
  "lexical_name": "elabAndEvalMatchKind",
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
  "slug": "elabandevalmatchkind--9a54db379333c2f632ef3c0b",
  "source": {
    "blob": "63415b52efee0a8f44281cf6d015090e97af062e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a54db379333c2f632ef3c0b812687add1354e6c62766630507ccd1e0efaaced",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a0fb277e430122a1b8d1c7f7f9e51a4d3cd3c49bb3f2c899e26fab13162afbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabAndEvalMatchKind (mk : MatchKind) (a b : Term) : TermElabM Bool :=
  Term.withoutErrToSorry do
    let a ← Term.elabTerm a none
    let b ← Term.elabTerm b none
    -- Unify types before synthesizing pending metavariables:
    _ ← isDefEqGuarded (← inferType a) (← inferType b)
    Term.synthesizeSyntheticMVarsNoPostponing
    mk.isEq (← instantiateMVars a) (← instantiateMVars b)

@[inherit_doc guardExpr, tactic guardExpr, tactic guardExprConv]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardExpr/Variante02f3f0b58ced578e3ebefca00a3d4fe10fa26841ff473cbe2fe3c85255b5ff2.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63415b52efee0a8f44281cf6d015090e97af062e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
