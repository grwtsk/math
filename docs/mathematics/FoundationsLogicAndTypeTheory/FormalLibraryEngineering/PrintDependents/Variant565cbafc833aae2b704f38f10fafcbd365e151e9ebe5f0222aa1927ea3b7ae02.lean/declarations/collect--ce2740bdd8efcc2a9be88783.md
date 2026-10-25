# collect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bbd0ebc87d5f7eb170d76363eb27a65a0e6add983f3f1172dbcc9f67e932b89",
  "kind": "def",
  "lexical_name": "collect",
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
  "slug": "collect--ce2740bdd8efcc2a9be88783",
  "source": {
    "blob": "007bb6c7a0d6044a6c4e44930eed71ca0aea9a27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant565cbafc833aae2b704f38f10fafcbd365e151e9ebe5f0222aa1927ea3b7ae02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce2740bdd8efcc2a9be8878350e52afe107d2bee7d1725ac25d0856e6e13ad7e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant565cbafc833aae2b704f38f10fafcbd365e151e9ebe5f0222aa1927ea3b7ae02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bbd0ebc87d5f7eb170d76363eb27a65a0e6add983f3f1172dbcc9f67e932b89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def collect (c : Name) : M Bool := do
  let collectExpr (e : Expr) : M Bool := e.getUsedConstants.anyM collect
  let s ← get
  if let some b := s.result.find? c then return b
  modify fun s => { s with result := s.result.insert c false }
  let env ← read
  let r ← match env.find? c with
    | some (ConstantInfo.axiomInfo _)  => pure s.otherAxiom
    | some (ConstantInfo.defnInfo v)   => collectExpr v.type <||> collectExpr v.value
    | some (ConstantInfo.thmInfo v)    => collectExpr v.type <||> collectExpr v.value
    | some (ConstantInfo.opaqueInfo v) => collectExpr v.type <||> collectExpr v.value
    | some (ConstantInfo.quotInfo _)   => pure false
    | some (ConstantInfo.ctorInfo v)   => collectExpr v.type
    | some (ConstantInfo.recInfo v)    => collectExpr v.type
    | some (ConstantInfo.inductInfo v) => collectExpr v.type <||> v.ctors.anyM collect
    | none                             => pure false
  modify fun s => { s with result := s.result.insert c r }
  pure r

end CollectDependents

/--
The command `#print dependents X Y` prints a list of all the declarations in the file that
transitively depend on `X` or `Y`. After each declaration, it shows the list of all declarations
referred to directly in the body which also depend on `X` or `Y`.

For example, `#print axioms bar'` below shows that `bar'` depends on `Classical.choice`, but not
why. `#print dependents Classical.choice` says that `bar'` depends on `Classical.choice` because
it uses `foo` and `foo` uses `Classical.em`. `bar` is not listed because it is proved without using
`Classical.choice`.
```
import Std.Tactic.PrintDependents

theorem foo : x = y ∨ x ≠ y := Classical.em _
theorem bar : 1 = 1 ∨ 1 ≠ 1 := by simp
theorem bar' : 1 = 1 ∨ 1 ≠ 1 := foo

#print axioms bar'
-- 'bar'' depends on axioms: [Classical.choice, Quot.sound, propext]

#print dependents Classical.choice
-- foo: Classical.em
-- bar': foo
```

-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant565cbafc833aae2b704f38f10fafcbd365e151e9ebe5f0222aa1927ea3b7ae02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant565cbafc833aae2b704f38f10fafcbd365e151e9ebe5f0222aa1927ea3b7ae02.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `007bb6c7a0d6044a6c4e44930eed71ca0aea9a27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
