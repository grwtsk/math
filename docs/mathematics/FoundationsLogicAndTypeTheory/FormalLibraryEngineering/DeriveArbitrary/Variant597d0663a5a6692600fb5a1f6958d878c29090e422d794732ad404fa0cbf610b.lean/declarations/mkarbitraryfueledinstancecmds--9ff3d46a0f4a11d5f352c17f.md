# mkArbitraryFueledInstanceCmds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e7275241974cc38034ef8e9daa57a0492b646275ac5489957a3ccdda7025f26",
  "kind": "def",
  "lexical_name": "mkArbitraryFueledInstanceCmds",
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
  "slug": "mkarbitraryfueledinstancecmds--9ff3d46a0f4a11d5f352c17f",
  "source": {
    "blob": "1fe444d412c8e9c16973008d5f25354b084ccfa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ff3d46a0f4a11d5f352c17f85112fa4f56a5da31f2d4cb15c0a8ecf4397a06d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e7275241974cc38034ef8e9daa57a0492b646275ac5489957a3ccdda7025f26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkArbitraryFueledInstanceCmds (ctx : Deriving.Context) (typeNames : Array Name) (useAnonCtor := true) : TermElabM (Array Command) := do
  let mut instances := #[]
  for i in 0...ctx.typeInfos.size do
    let indVal       := ctx.typeInfos[i]!
    if typeNames.contains indVal.name then
      let auxFunName   := ctx.auxFunNames[i]!
      let argNames     ← mkInductArgNames indVal
      let binders      ← mkImplicitBinders argNames
      let binders      := binders ++ (← mkInstImplicitBinders ``Arbitrary indVal argNames)  -- this line is changed from
      let indType      ← mkInductiveApp indVal argNames
      let type         ← `($(mkCIdent ``ArbitraryFueled) $indType)
      let mut val      := mkIdent auxFunName
      if useAnonCtor then
        val ← `(⟨$val⟩)
      let instCmd ← `(instance $binders:implicitBinder* : $type := $val)
      instances := instances.push instCmd
  return instances

/-- Creates a `Header` for the `Arbitrary` typeclass -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fe444d412c8e9c16973008d5f25354b084ccfa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
