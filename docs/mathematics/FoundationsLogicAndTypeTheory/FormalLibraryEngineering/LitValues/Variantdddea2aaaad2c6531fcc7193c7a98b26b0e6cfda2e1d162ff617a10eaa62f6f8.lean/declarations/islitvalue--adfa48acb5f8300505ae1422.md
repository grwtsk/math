# isLitValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f583191d6d1cf07e37eb4fe2bd047d9e1c1b3af818ed2b2e71b95444ea055c5",
  "kind": "def",
  "lexical_name": "isLitValue",
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
  "slug": "islitvalue--adfa48acb5f8300505ae1422",
  "source": {
    "blob": "afb3fb11c0e3c478ba6847da7d6052fec63ff431",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 208,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Variantdddea2aaaad2c6531fcc7193c7a98b26b0e6cfda2e1d162ff617a10eaa62f6f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:adfa48acb5f8300505ae1422b8447ca561032ad10813dd1d939ac96490b4239e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Variantdddea2aaaad2c6531fcc7193c7a98b26b0e6cfda2e1d162ff617a10eaa62f6f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f583191d6d1cf07e37eb4fe2bd047d9e1c1b3af818ed2b2e71b95444ea055c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLitValue (e : Expr) : MetaM Bool := do
  let e ← instantiateMVars e
  if (← getNatValue? e).isSome then return true
  if (← getIntValue? e).isSome then return true
  if (← getFinValue? e).isSome then return true
  if (← getBitVecValue? e).isSome then return true
  if (getStringValue? e).isSome then return true
  if (← getCharValue? e).isSome then return true
  if (← getUInt8Value? e).isSome then return true
  if (← getUInt16Value? e).isSome then return true
  if (← getUInt32Value? e).isSome then return true
  if (← getUInt64Value? e).isSome then return true
  if (← getFloatValue? e).isSome then return true
  if (← getFloat32Value? e).isSome then return true
  return false

/--
If `e` is a `Nat`, `Int`, or `Fin` literal value, converts it into a constructor application.
Otherwise, just return `e`.
-/
-- TODO: support other builtin literals if needed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Variantdddea2aaaad2c6531fcc7193c7a98b26b0e6cfda2e1d162ff617a10eaa62f6f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Variantdddea2aaaad2c6531fcc7193c7a98b26b0e6cfda2e1d162ff617a10eaa62f6f8.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afb3fb11c0e3c478ba6847da7d6052fec63ff431` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
