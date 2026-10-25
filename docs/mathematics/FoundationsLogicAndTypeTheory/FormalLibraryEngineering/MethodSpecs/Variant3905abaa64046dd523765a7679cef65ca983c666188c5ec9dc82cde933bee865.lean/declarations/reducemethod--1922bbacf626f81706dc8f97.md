# reduceMethod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7748191952dc4fece78cc0de48fb5faec983546d1db06f7fbabab45927d4a884",
  "kind": "def",
  "lexical_name": "reduceMethod",
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
  "slug": "reducemethod--1922bbacf626f81706dc8f97",
  "source": {
    "blob": "3c088bbc4c254040b78b021402b2fad0240a206f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3905abaa64046dd523765a7679cef65ca983c666188c5ec9dc82cde933bee865.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1922bbacf626f81706dc8f978694425ca783b964c6cba28f6364a49c30e84725",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3905abaa64046dd523765a7679cef65ca983c666188c5ec9dc82cde933bee865.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7748191952dc4fece78cc0de48fb5faec983546d1db06f7fbabab45927d4a884`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def reduceMethod (opName : String) (e : Expr) : SimpM Simp.Step := do
  let xs := e.getAppArgsN 3
  let inst := xs[0]!
  let lhs := xs[1]!
  let rhs := xs[2]!
  unless inst.getAppFn.isConst do return .continue
  let some _ ← isConstructorApp? lhs | return .continue
  let some _ ← isConstructorApp? rhs | return .continue
  let some thms ← getMethodSpecTheorems inst.getAppFn.constName! opName | return .continue
  for thm in thms do
    let simpThms ← mkSimpTheoremFromConst thm
    assert! simpThms.size = 1
    if let some r ← Simp.tryTheorem? e simpThms[0]! then
      return .visit r
  return .continue

public section

/--
This simproc reduces `_ == _` when both arguments are constructor applications and the `BEq` instance
in question has been annotated with `@[method_specs]`.
-/
builtin_simproc_decl reduceBEq (_ == _) := fun e => do
  unless e.isAppOfArity ``BEq.beq 4 do return .continue
  reduceMethod "beq" e

/--
This simproc reduces `Ord.compare _ _` when both arguments are constructor applications and the
`Ord` instance in question has been annotated with `@[method_specs]`.
-/
builtin_simproc_decl reduceOrd (Ord.compare _ _) := fun e => do
  unless e.isAppOfArity ``Ord.compare 4 do return .continue
  reduceMethod "compare" e

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3905abaa64046dd523765a7679cef65ca983c666188c5ec9dc82cde933bee865.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3905abaa64046dd523765a7679cef65ca983c666188c5ec9dc82cde933bee865.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c088bbc4c254040b78b021402b2fad0240a206f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
