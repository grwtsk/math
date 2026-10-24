# injective_of_divisible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1eb2e15c6f9f0e93cfdca3050b5f3251b963969b86bbb08c657b4c6509dcf527",
  "kind": "instance",
  "lexical_name": "injective_of_divisible",
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
  "slug": "injective-of-divisible--25ad8fb96e2458f1fbc5caca",
  "source": {
    "blob": "84a8a2b1a1db0c43289e29a6013995c4c02f0a6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 64,
    "path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variantde669fd7e4a0e35b310121209e81a151298177a58d9d8d8a870af074d1cb8313.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25ad8fb96e2458f1fbc5cacaa2b281a3497d45d007aab569acc84cffa7dc789e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Injective/Variantde669fd7e4a0e35b310121209e81a151298177a58d9d8d8a870af074d1cb8313.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1eb2e15c6f9f0e93cfdca3050b5f3251b963969b86bbb08c657b4c6509dcf527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance injective_of_divisible [DivisibleBy A ℤ] :
    Injective (C := AddCommGrp) (AddCommGrp.of A) :=
  (injective_as_module_iff A).mp <|
    Module.injective_object_of_injective_module (inj := (Module.Baer.of_divisible A).injective)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Injective/Variantde669fd7e4a0e35b310121209e81a151298177a58d9d8d8a870af074d1cb8313.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Injective/Variantde669fd7e4a0e35b310121209e81a151298177a58d9d8d8a870af074d1cb8313.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84a8a2b1a1db0c43289e29a6013995c4c02f0a6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
