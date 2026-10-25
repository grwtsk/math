# collectGuards

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a3c46d8cddec76af83d0718e5fdfdc9d0c4d57eacb70b26f915adb05a8e8f5b",
  "kind": "def",
  "lexical_name": "collectGuards",
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
  "slug": "collectguards--0e379aba5f6c4be8483406b3",
  "source": {
    "blob": "b93662f0624c93668d57fdf79fda4f70fe156101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 845,
    "line": 816,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variantf0901ab479f17cf09e9d765c2c1560b7df50963bd83d65acfeda77a5db4441e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e379aba5f6c4be8483406b3f51cba0571bdf2c05ecee70bd4d1f0cef3e2af2a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variantf0901ab479f17cf09e9d765c2c1560b7df50963bd83d65acfeda77a5db4441e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a3c46d8cddec76af83d0718e5fdfdc9d0c4d57eacb70b26f915adb05a8e8f5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 816–845.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def collectGuards (thm : EMatchTheorem) (proof : Expr) (args : Array Expr) : GoalM (List TheoremGuard) := do
  if thm.cnstrs.isEmpty then return []
  /- **Note**: Only top-level theorems have constraints. -/
  let .const declName us := proof | return []
  unless thm.cnstrs.any fun c => c matches .check _ | .guard _ do return []
  let info ← getConstInfo declName
  let mut result := #[]
  let applySubst (e : Expr) : GoalM (Option Expr) := do
    let e := e.instantiateRev args
    let e := e.instantiateLevelParams info.levelParams us
    let e ← instantiateMVars e
    if e.hasMVar then
      reportIssue! "guard for `{thm.origin.pp}` was skipped because it contains metavariables after theorem instantiation{indentExpr e}"
      return none
    return some e
  for cnstr in thm.cnstrs do
    match cnstr with
    | .check e =>
      let some e ← applySubst e | pure ()
      result := result.push <| { e, check := true }
    | .guard e =>
      let some e ← applySubst e | pure ()
      result := result.push <| { e, check := false }
    | _ => pure ()
  return result.toList

/--
After processing a (multi-)pattern, use the choice assignment to instantiate the proof.
Missing parameters are synthesized using type inference and type class synthesis."
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variantf0901ab479f17cf09e9d765c2c1560b7df50963bd83d65acfeda77a5db4441e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variantf0901ab479f17cf09e9d765c2c1560b7df50963bd83d65acfeda77a5db4441e1.lean#L816).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b93662f0624c93668d57fdf79fda4f70fe156101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
