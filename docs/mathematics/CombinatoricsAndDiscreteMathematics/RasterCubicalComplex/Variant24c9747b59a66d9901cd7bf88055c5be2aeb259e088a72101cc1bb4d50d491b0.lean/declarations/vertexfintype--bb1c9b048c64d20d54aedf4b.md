# vertexFintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2e630cdfb88d94de48a75f068565be387a5147c99ae955b725dfeacc3b5e4b8",
  "kind": "instance",
  "lexical_name": "vertexFintype",
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
  "slug": "vertexfintype--bb1c9b048c64d20d54aedf4b",
  "source": {
    "blob": "635013682e0d3798970979af4fb14e45f50cf95f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 90,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb1c9b048c64d20d54aedf4be752adc4d00c2ee8c118634120623a1fa351926a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2e630cdfb88d94de48a75f068565be387a5147c99ae955b725dfeacc3b5e4b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance vertexFintype (rows columns : Nat) : Fintype (Vertex rows columns) :=
  Fintype.ofEquiv (Fin (rows + 1) × Fin (columns + 1))
    { toFun := fun value => ⟨value.1, value.2⟩
      invFun := fun value => (value.row, value.column)
      left_inv := fun value => by cases value; rfl
      right_inv := fun value => by cases value; rfl }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `635013682e0d3798970979af4fb14e45f50cf95f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
