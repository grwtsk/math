# dealWithHardEquality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfa2fe40bead2f86f548682b8bb3b91b5cd02dfe01a6532a0d4620ad5b3b8c92",
  "kind": "def",
  "lexical_name": "dealWithHardEquality",
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
  "slug": "dealwithhardequality--a526d3a955dba8222f3108d0",
  "source": {
    "blob": "68b9bfd0ef782c0ca264d6921b139f63ead97eeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 340,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant0cc1a59420d93bc08bd167066df6f2ffb5e1a13d75cf28937faddf0d83925c87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a526d3a955dba8222f3108d0bdabaaa40a21a2b12cba80e0737cc32ac4e821b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant0cc1a59420d93bc08bd167066df6f2ffb5e1a13d75cf28937faddf0d83925c87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfa2fe40bead2f86f548682b8bb3b91b5cd02dfe01a6532a0d4620ad5b3b8c92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dealWithHardEquality (p : Problem) (c : Coeffs) : OmegaM Problem :=
  match p.constraints[c]? with
  | some ⟨_, ⟨some r, some r'⟩, j⟩ => do
    let m := c.minNatAbs + 1
    -- We have to store the valid value of the newly introduced variable in the atoms.
    let x := mkApp3 (.const ``bmod_div_term []) (toExpr m) (toExpr c) (← atomsCoeffs)
    let (i, facts?) ← lookup x
    if hr : r' = r then
      match facts? with
      | none => throwError "When solving hard equality, new atom had been seen before!"
      | some facts => if ! facts.isEmpty then
        throwError "When solving hard equality, there were unexpected new facts!"
      return p.addConstraint { coeffs := _, constraint := _, justification := (hr ▸ j).bmod m r i }
    else
      throwError "Invalid constraint, expected an equation." -- unreachable
  | _ =>
    return p -- unreachable

/--
Solve an equality, by deciding whether it is easy (has a `±1` coefficient) or hard,
and delegating to the appropriate function.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant0cc1a59420d93bc08bd167066df6f2ffb5e1a13d75cf28937faddf0d83925c87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant0cc1a59420d93bc08bd167066df6f2ffb5e1a13d75cf28937faddf0d83925c87.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68b9bfd0ef782c0ca264d6921b139f63ead97eeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
