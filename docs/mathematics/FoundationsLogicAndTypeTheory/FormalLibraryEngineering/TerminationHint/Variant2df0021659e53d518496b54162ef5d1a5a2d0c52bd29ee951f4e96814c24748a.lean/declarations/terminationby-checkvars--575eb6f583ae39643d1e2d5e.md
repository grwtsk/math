# TerminationBy.checkVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e33f7bd137b869f0509d3bae621fc6548717d6499896a2708b1ef2f97ed0f3a8",
  "kind": "def",
  "lexical_name": "TerminationBy.checkVars",
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
  "slug": "terminationby-checkvars--575eb6f583ae39643d1e2d5e",
  "source": {
    "blob": "7cbb5cc1bc9ff02bbbfef812bd1e12a488aec8ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 140,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variant2df0021659e53d518496b54162ef5d1a5a2d0c52bd29ee951f4e96814c24748a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:575eb6f583ae39643d1e2d5ed15a9834107b547ac375fe63c7cebc4c06001ba9",
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

Occurrence: `declaration:e33f7bd137b869f0509d3bae621fc6548717d6499896a2708b1ef2f97ed0f3a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TerminationBy.checkVars (funName : Name) (extraParams : Nat) (tb : TerminationBy) : MetaM Unit := do
  unless tb.synthetic do
    if h : tb.vars.size > extraParams then
      let mut msg := m!"{parameters tb.vars.size} bound in `termination_by`, but the body of " ++
        m!"{funName} only binds {parameters extraParams}."
      if let `($ident:ident) := tb.vars[0] then
        if ident.getId.isSuffixOf funName then
            msg := msg ++ m!" (Since Lean v4.6.0, the `termination_by` clause no longer " ++
              "expects the function name here.)"
      throwErrorAt tb.ref msg
  where
    parameters : Nat → MessageData
    | 1 => "one parameter"
    | n => m!"{n} parameters"

open Parser.Termination

/-- Takes apart a `Termination.suffix` syntax object -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variant2df0021659e53d518496b54162ef5d1a5a2d0c52bd29ee951f4e96814c24748a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variant2df0021659e53d518496b54162ef5d1a5a2d0c52bd29ee951f4e96814c24748a.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cbb5cc1bc9ff02bbbfef812bd1e12a488aec8ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
