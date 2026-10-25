# mkLawfulBEqInstanceCmds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a9ece655e07883ca89bafee302b288dd7294334a71b9ad41b90b29eb58ecab7",
  "kind": "def",
  "lexical_name": "mkLawfulBEqInstanceCmds",
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
  "slug": "mklawfulbeqinstancecmds--b1653dae7759c63b0f2c3c2a",
  "source": {
    "blob": "0c44bb25a7b342459ab3a319ebbd659ebe796ea7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEq/Variantdcc2748d5e8e1e1e5b003fff707d2225cedf9e0c7a23868594ffccef0745f0d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1653dae7759c63b0f2c3c2a8b1126b0c6099d55ffb79102f638565a08dd2675",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEq/Variantdcc2748d5e8e1e1e5b003fff707d2225cedf9e0c7a23868594ffccef0745f0d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a9ece655e07883ca89bafee302b288dd7294334a71b9ad41b90b29eb58ecab7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkLawfulBEqInstanceCmds (declName : Name) : TermElabM (Array Syntax) := do
  let indVal ← getConstInfoInduct declName
  if indVal.all.length > 1 then
    throwError "Deriving `LawfulBEq` for mutual inductives is not supported"
  if indVal.isNested then
    throwError "Deriving `LawfulBEq` for nested inductives is not supported"

  let argNames     ← mkInductArgNames indVal
  let binders      ← mkImplicitBinders argNames
  let binders      := binders ++ (← mkInstImplicitBinders ``BEq indVal argNames)
  let binders      := binders ++ (← mkInstImplicitBinders ``LawfulBEq indVal argNames)
  let indType      ← mkInductiveApp indVal argNames
  let type         ← `($(mkCIdent ``LawfulBEq) $indType)
  let instCmd ← `(
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEq/Variantdcc2748d5e8e1e1e5b003fff707d2225cedf9e0c7a23868594ffccef0745f0d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEq/Variantdcc2748d5e8e1e1e5b003fff707d2225cedf9e0c7a23868594ffccef0745f0d1.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c44bb25a7b342459ab3a319ebbd659ebe796ea7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
