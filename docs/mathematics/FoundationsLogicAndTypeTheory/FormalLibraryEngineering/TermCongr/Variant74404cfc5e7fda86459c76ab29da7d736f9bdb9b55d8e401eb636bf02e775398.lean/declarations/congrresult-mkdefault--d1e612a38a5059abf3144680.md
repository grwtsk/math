# CongrResult.mkDefault'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d35badb309ee23f243ee730db2deb932785fdf8bf6184103c60c0e373e5748cb",
  "kind": "def",
  "lexical_name": "CongrResult.mkDefault'",
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
  "slug": "congrresult-mkdefault--d1e612a38a5059abf3144680",
  "source": {
    "blob": "c6ed0521e7097a3aade6fa0ef779b2d8b50e38e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 480,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1e612a38a5059abf314468089786acfcedc3fd70376a384e34b8bfdb3b4af78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d35badb309ee23f243ee730db2deb932785fdf8bf6184103c60c0e373e5748cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CongrResult.mkDefault' (mvarCounterSaved : Nat) (lhs rhs : Expr) : MetaM CongrResult := do
  if let some h := hasCHole mvarCounterSaved lhs then
    throwError "Left-hand side{indentD lhs}\nstill has a congruence hole{indentD h}"
  if let some h := hasCHole mvarCounterSaved rhs then
    throwError "Right-hand side{indentD rhs}\nstill has a congruence hole{indentD h}"
  CongrResult.mkDefault lhs rhs

/-- Throw an internal error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6ed0521e7097a3aade6fa0ef779b2d8b50e38e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
