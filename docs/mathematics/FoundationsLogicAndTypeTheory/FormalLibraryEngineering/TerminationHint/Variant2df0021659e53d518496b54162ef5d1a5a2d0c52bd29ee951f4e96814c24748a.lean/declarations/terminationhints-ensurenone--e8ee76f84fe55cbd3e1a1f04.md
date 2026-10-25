# TerminationHints.ensureNone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44669bd490c9bba9b010a0e9751b8d16e3dcd3b2b5186572b6d9d8104e05e7cb",
  "kind": "def",
  "lexical_name": "TerminationHints.ensureNone",
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
  "slug": "terminationhints-ensurenone--e8ee76f84fe55cbd3e1a1f04",
  "source": {
    "blob": "7cbb5cc1bc9ff02bbbfef812bd1e12a488aec8ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 104,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variant2df0021659e53d518496b54162ef5d1a5a2d0c52bd29ee951f4e96814c24748a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8ee76f84fe55cbd3e1a1f04f4e39772b054998068c7ace8ec45f505b5c750e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variant2df0021659e53d518496b54162ef5d1a5a2d0c52bd29ee951f4e96814c24748a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44669bd490c9bba9b010a0e9751b8d16e3dcd3b2b5186572b6d9d8104e05e7cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TerminationHints.ensureNone (hints : TerminationHints) (reason : String) : CoreM Unit := do
  match hints.terminationBy??, hints.terminationBy?, hints.decreasingBy?, hints.partialFixpoint? with
  | .none, .none, .none, .none => pure ()
  | .none, .none, .some dec_by, .none =>
    logWarningAt dec_by.ref m!"unused `decreasing_by`, function is {reason}"
  | .some term_by?, .none, .none, .none =>
    logWarningAt term_by? m!"unused `termination_by?`, function is {reason}"
  | .none, .some term_by, .none, .none =>
    logWarningAt term_by.ref m!"unused `termination_by`, function is {reason}"
  | .none, .none, .none, .some partialFixpoint =>
    match partialFixpoint.fixpointType with
    | .partialFixpoint => logWarningAt partialFixpoint.ref m!"unused `partial_fixpoint`, function is {reason}"
    | .coinductiveFixpoint => logWarningAt partialFixpoint.ref m!"unused `coinductive_fixpoint`, function is {reason}"
    | .inductiveFixpoint  => logWarningAt partialFixpoint.ref m!"unused `inductive_fixpoint`, function is {reason}"
  | _, _, _, _=>
    logWarningAt hints.ref m!"unused termination hints, function is {reason}"

/-- True if any form of termination hint is present. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variant2df0021659e53d518496b54162ef5d1a5a2d0c52bd29ee951f4e96814c24748a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variant2df0021659e53d518496b54162ef5d1a5a2d0c52bd29ee951f4e96814c24748a.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cbb5cc1bc9ff02bbbfef812bd1e12a488aec8ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
