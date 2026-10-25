# preprocessImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5dcf27dca6b64b3eb7536d3ff5dea7a3477dc108e64b7adfbeecb112af6272ac",
  "kind": "def",
  "lexical_name": "preprocessImpl",
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
  "slug": "preprocessimpl--a85cc6353aeda92908004620",
  "source": {
    "blob": "309563b89dc22a2ec2eddc4a4dede051ec96297b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a85cc6353aeda92908004620cbf92043c24fcacc2650600efc28912b5236bc48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5dcf27dca6b64b3eb7536d3ff5dea7a3477dc108e64b7adfbeecb112af6272ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preprocessImpl (e : Expr) : GoalM Simp.Result := do
  let e ← instantiateMVars e
  let r ← simpCore e
  /-
  **Note**: Some transformation performed by `simp` may introduce metavariables.
  Example: zeta-reduction. Recall that `simp` does not necessarily visit every subterm.
  In particular, it does not visit universe terms and does not instantiate them.
  -/
  let e' ← instantiateMVars r.expr
  -- Remark: `simpCore` unfolds reducible constants, but it does not consistently visit all possible subterms.
  -- So, we must use the following `unfoldReducible` step. It is non-op in most cases
  let e' ← Sym.unfoldReducible e'
  let e' ← abstractNestedProofs e'
  let e' ← markNestedSubsingletons e'
  let e' ← eraseIrrelevantMData e'
  let e' ← foldProjs e'
  let e' ← Sym.normalizeLevels e'
  let r' ← eraseSimpMatchDiscrsOnly e'
  let r ← r.mkEqTrans r'
  let e' := r'.expr
  let r' ← replacePreMatchCond e'
  let r ← r.mkEqTrans r'
  let e' := r'.expr
  let e' ← canon e'
  let e' ← shareCommon e'
  trace_goal[grind.simp] "{e}\n===>\n{e'}"
  return { r with expr := e' }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant9a9eae32c376b8ba67a8d625c0eeca4e403db945137703a58c53de0e62b4d09c.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `309563b89dc22a2ec2eddc4a4dede051ec96297b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
