# StructuralUniverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c012ba56c3a0c8fe9222a487a23be53810ffa0cff31c6282801aa4df6bbe9b02",
  "kind": "structure",
  "lexical_name": "StructuralUniverse",
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
  "slug": "structuraluniverse--770093a188c030fbdff4946b",
  "source": {
    "blob": "3229082a3aebc581445c92908e8a2a88c260f594",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 256,
    "path": "GRWTSK/Algebra/Representation/Variant4263024cf1e46284293ec4d758f83994100ba5b25eb98f50aa78a85773346dda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:770093a188c030fbdff4946bac88d3b791a59e9af0b3619a707a2cbe05b37b92",
  "verification": {
    "reference": "docs/verification/Algebra/Representation/Variant4263024cf1e46284293ec4d758f83994100ba5b25eb98f50aa78a85773346dda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c012ba56c3a0c8fe9222a487a23be53810ffa0cff31c6282801aa4df6bbe9b02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StructuralUniverse where
  /-- Admitted source objects. -/
  Object : Type
  /-- Structural morphisms between admitted objects. -/
  Hom : Object → Object → Type

/-- Exact structural universe for the terminality theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Representation/Variant4263024cf1e46284293ec4d758f83994100ba5b25eb98f50aa78a85773346dda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Representation/Variant4263024cf1e46284293ec4d758f83994100ba5b25eb98f50aa78a85773346dda.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3229082a3aebc581445c92908e8a2a88c260f594` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
