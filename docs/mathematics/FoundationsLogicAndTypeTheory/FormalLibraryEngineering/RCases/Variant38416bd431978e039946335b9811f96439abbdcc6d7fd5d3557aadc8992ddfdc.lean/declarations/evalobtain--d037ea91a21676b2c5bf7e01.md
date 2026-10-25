# evalObtain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eafcad5d39e3c8a46ee05f027d4c6f27723e6403e175581148467603a8aa671e",
  "kind": "def",
  "lexical_name": "evalObtain",
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
  "slug": "evalobtain--d037ea91a21676b2c5bf7e01",
  "source": {
    "blob": "12e86ccedbef509addf70d63a92bd5a1c1de1256",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 542,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant38416bd431978e039946335b9811f96439abbdcc6d7fd5d3557aadc8992ddfdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d037ea91a21676b2c5bf7e019cffe7299a21737c6f0f060fa497602e743067a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant38416bd431978e039946335b9811f96439abbdcc6d7fd5d3557aadc8992ddfdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eafcad5d39e3c8a46ee05f027d4c6f27723e6403e175581148467603a8aa671e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic Lean.Parser.Tactic.obtain] def evalObtain : Tactic := fun stx => do
  match stx with
  | `(tactic| obtain%$tk $[$pat?:rcasesPatMed]? $[: $ty?]? $[:= $val?,*]?) =>
    let pat? ← liftM <| pat?.mapM RCasesPatt.parse
    if let some val := val? then
      let pat  := pat?.getD (RCasesPatt.one tk `_)
      let pat  := pat.typed? tk ty?
      let tgts := val.getElems.map fun val => (none, val.raw)
      let g ← getMainGoal
      g.withContext do replaceMainGoal (← RCases.rcases tgts pat g)
    else if let some ty := ty? then
      let pat := pat?.getD (RCasesPatt.one tk `this)
      let g ← getMainGoal
      g.withContext do replaceMainGoal (← RCases.obtainNone pat ty g)
    else
      throwError "\
        `obtain` requires either an expected type or a value.\n\
        usage: `obtain ⟨patt⟩? : type (:= val)?` or `obtain ⟨patt⟩? (: type)? := val`"
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant38416bd431978e039946335b9811f96439abbdcc6d7fd5d3557aadc8992ddfdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant38416bd431978e039946335b9811f96439abbdcc6d7fd5d3557aadc8992ddfdc.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12e86ccedbef509addf70d63a92bd5a1c1de1256` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
