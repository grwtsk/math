# checkImplicitTransparency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a25d10aa5624135f1a59359f3fa46c241e83ed56f11fcf680d61748bc202cf7",
  "kind": "def",
  "lexical_name": "checkImplicitTransparency",
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
  "slug": "checkimplicittransparency--19ff4bb03eecb3856306693f",
  "source": {
    "blob": "16caa60dad16f6b8607199c320ef0839ed4a62c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRelatedDecl/Variant8f00e88d3e3791c0220ddb2343c3bd0b7ba95e177dca7fc8d78b07e078e55191.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19ff4bb03eecb3856306693ffd62ebeb72a2a1ed502cacf126d6a3b658da5fa4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRelatedDecl/Variant8f00e88d3e3791c0220ddb2343c3bd0b7ba95e177dca7fc8d78b07e078e55191.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a25d10aa5624135f1a59359f3fa46c241e83ed56f11fcf680d61748bc202cf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def checkImplicitTransparency (declType : Expr) : MetaM (Option (List Name)) := do
  let origDiag := (← get).diag
  let result : Option (List Name) ← withOptions (diagnostics.set · true) do
    try Meta.check declType .default catch _ => return none
    let counterDefault := (← get).diag.unfoldCounter
    modify ({ · with diag := origDiag })
    try
      Meta.check declType .implicit
      return none
    catch _ =>
      let counterInst := (← get).diag.unfoldCounter
      let diff := Meta.subCounters counterDefault counterInst
      let env ← getEnv
      return some <| diff.toList.filterMap fun (n, count) => do
        guard <| count > 0
        guard <| getReducibilityStatusCore env n matches .semireducible
        guard <| !Meta.isInstanceCore env n
        return n
  -- Always restore the original diagnostics snapshot, mirroring `tacticCheckInstances`.
  modify ({ · with diag := origDiag })
  return result

/-- Extension of `linter.tacticCheckInstances` to lemmas produced by Mathlib attributes such as
`@[simps]`, `@[reassoc]`, and `@[elementwise]`. Call sites pass the syntax of the user's
attribute (`ref`), the name of the generated lemma (`declName`), and the lemma's type
(`declType`); a warning is emitted at `ref` if `declType` is type-correct at `.default` but
not at `.implicit`, listing the semireducible definitions that would need to be
marked `@[implicit_reducible]` to fix the mismatch.

The check is gated by the existing core option `linter.tacticCheckInstances` and is silent
otherwise; following the convention of the core linter, it does *not* participate in
`linter.all`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRelatedDecl/Variant8f00e88d3e3791c0220ddb2343c3bd0b7ba95e177dca7fc8d78b07e078e55191.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRelatedDecl/Variant8f00e88d3e3791c0220ddb2343c3bd0b7ba95e177dca7fc8d78b07e078e55191.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16caa60dad16f6b8607199c320ef0839ed4a62c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
