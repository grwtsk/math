# decodeLevel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b255d79a33e9984f2ad93b96fdb5ebbb8e3fb6ad7c619fb540c8c53be227eaad",
  "kind": "def",
  "lexical_name": "decodeLevel",
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
  "slug": "decodelevel--ea88fa41f6c2a0823542b2cd",
  "source": {
    "blob": "126dfaf8fe844dc2b7ecf758ce5d8bbee975f04c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetChecker/Variantd21c21249fbb8350d8737ec82a2d9c120ef16ca6420ec673f90f1eb1ee24f858.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea88fa41f6c2a0823542b2cd3507d38ee9a706fd8aa5f54f4080bc4f021fb6cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetChecker/Variantd21c21249fbb8350d8737ec82a2d9c120ef16ca6420ec673f90f1eb1ee24f858.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b255d79a33e9984f2ad93b96fdb5ebbb8e3fb6ad7c619fb540c8c53be227eaad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def decodeLevel (arity : Nat) (j : Json) : Except String Level := do
  let xs ← j.getArr?
  match ← (← item xs 0).getStr? with
  | "zero" => exactLength xs 1; return .zero
  | "succ" => exactLength xs 2; return .succ (← decodeLevel arity (← item xs 1))
  | "max" =>
    exactLength xs 3
    return .max (← decodeLevel arity (← item xs 1)) (← decodeLevel arity (← item xs 2))
  | "imax" =>
    exactLength xs 3
    return .imax (← decodeLevel arity (← item xs 1)) (← decodeLevel arity (← item xs 2))
  | "param" =>
    exactLength xs 2
    let i ← (← item xs 1).getNat?
    unless i < arity do throw "undeclared universe parameter"
    return .param (parameter i)
  | _ => throw "unknown universe constructor"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetChecker/Variantd21c21249fbb8350d8737ec82a2d9c120ef16ca6420ec673f90f1eb1ee24f858.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetChecker/Variantd21c21249fbb8350d8737ec82a2d9c120ef16ca6420ec673f90f1eb1ee24f858.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `126dfaf8fe844dc2b7ecf758ce5d8bbee975f04c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
