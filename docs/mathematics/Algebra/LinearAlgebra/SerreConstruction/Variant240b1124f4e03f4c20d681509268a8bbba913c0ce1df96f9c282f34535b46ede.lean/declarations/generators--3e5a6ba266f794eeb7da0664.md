# Generators

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a129d359d184e64cb4d85d67ff4331f5ec011e3e4cee17eb3b600c60b4e17ad3",
  "kind": "inductive",
  "lexical_name": "Generators",
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
  "slug": "generators--3e5a6ba266f794eeb7da0664",
  "source": {
    "blob": "000fa8e96e12eca0d598dad9714b383137b09963",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/SerreConstruction/Variant240b1124f4e03f4c20d681509268a8bbba913c0ce1df96f9c282f34535b46ede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e5a6ba266f794eeb7da0664fac5eb35d8c3435d26ffc167b9e40d28a8d8d3dc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SerreConstruction/Variant240b1124f4e03f4c20d681509268a8bbba913c0ce1df96f9c282f34535b46ede.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a129d359d184e64cb4d85d67ff4331f5ec011e3e4cee17eb3b600c60b4e17ad3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Generators
  | H : B → Generators
  | E : B → Generators
  | F : B → Generators

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SerreConstruction/Variant240b1124f4e03f4c20d681509268a8bbba913c0ce1df96f9c282f34535b46ede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SerreConstruction/Variant240b1124f4e03f4c20d681509268a8bbba913c0ce1df96f9c282f34535b46ede.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `000fa8e96e12eca0d598dad9714b383137b09963` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
