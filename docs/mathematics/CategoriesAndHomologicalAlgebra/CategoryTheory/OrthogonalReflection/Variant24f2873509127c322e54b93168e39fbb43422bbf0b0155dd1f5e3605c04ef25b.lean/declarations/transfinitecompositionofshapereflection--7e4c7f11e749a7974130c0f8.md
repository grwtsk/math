# transfiniteCompositionOfShapeReflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5749b5479afa5a009fb550992caf6647a5f555fd9f4d1c16c9e708fdbabf7633",
  "kind": "def",
  "lexical_name": "transfiniteCompositionOfShapeReflection",
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
  "slug": "transfinitecompositionofshapereflection--7e4c7f11e749a7974130c0f8",
  "source": {
    "blob": "ef9bce497b5c63d82235f2ef55a1ca6c90f2dca3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 349,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variant24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e4c7f11e749a7974130c0f86af4168db73062214799437cf2dda2cbb955ed29",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variant24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5749b5479afa5a009fb550992caf6647a5f555fd9f4d1c16c9e708fdbabf7633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def transfiniteCompositionOfShapeReflection :
    W.isLocal.isLocal.TransfiniteCompositionOfShape κ.ord.ToType
      (reflection W Z κ) :=
  ((succStruct W Z).transfiniteCompositionOfShapeιIteration κ.ord.ToType).ofLE (by
    rintro Z₀ _ _ ⟨_⟩
    exact isLocal_isLocal_toSucc W Z₀)

/-- The functor `κ.ord.ToType ⥤ C` that is the diagram of the
transfinite composition `transfiniteCompositionOfShapeReflection`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variant24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variant24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef9bce497b5c63d82235f2ef55a1ca6c90f2dca3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
