# visit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6b9d132cf84c0a3e760c227dfa2494ef64b3b30ee9e8da88752517aa48030b9",
  "kind": "def",
  "lexical_name": "visit",
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
  "slug": "visit--8ed6a0c17154623de1c3fa5b",
  "source": {
    "blob": "53d8141766f3a7d45804c2fd507d655d47ab1c9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 398,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variantfa2e8551a21c38d78a57c7a0acfa9e1ec083408f51bd832125acb497a4091338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ed6a0c17154623de1c3fa5b674664a3a43d125ad4e6ed07fbcfd1d786aaadd5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variantfa2e8551a21c38d78a57c7a0acfa9e1ec083408f51bd832125acb497a4091338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6b9d132cf84c0a3e760c227dfa2494ef64b3b30ee9e8da88752517aa48030b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def visit (e : Expr) : M Result := do
  withTraceNode `Meta.letToHave.debug (fun _ =>
      return m!"visit (check := {(← read).check}){indentExpr e}") do
    match e with
    | .bvar .. => throwError "unexpected bound variable {e}"
    | .fvar .. => visitFVar e
    | .mvar .. => visitMVar e
    | .sort u => return { expr := e, type? := Expr.sort u.succ }
    | .const .. => visitConst e
    | .app .. => checkCache e do visitAppArgs e
    | .forallE .. => checkCache e do visitForall e
    | .lam .. | .letE .. => checkCache e do visitLambdaLet e
    | .lit v => return { expr := e, type? := v.type }
    | .mdata _ e' => let e' ← visit e'; return { e' with expr := e.updateMData! e' }
    | .proj structName idx struct => checkCache e do visitProj e structName idx (← visit struct)

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variantfa2e8551a21c38d78a57c7a0acfa9e1ec083408f51bd832125acb497a4091338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variantfa2e8551a21c38d78a57c7a0acfa9e1ec083408f51bd832125acb497a4091338.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53d8141766f3a7d45804c2fd507d655d47ab1c9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
