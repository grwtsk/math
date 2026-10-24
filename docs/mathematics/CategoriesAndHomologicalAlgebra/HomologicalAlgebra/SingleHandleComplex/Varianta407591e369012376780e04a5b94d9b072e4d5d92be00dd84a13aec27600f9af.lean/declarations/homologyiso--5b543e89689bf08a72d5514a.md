# homologyIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47234471fe100ff910b5ab38d5e764ea173d0ce101135991130f23e07e504bd9",
  "kind": "def",
  "lexical_name": "homologyIso",
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
  "slug": "homologyiso--5b543e89689bf08a72d5514a",
  "source": {
    "blob": "19c5de3ac030d9ccd983900c58f36499af67aa24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 105,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHandleComplex/Varianta407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b543e89689bf08a72d5514a1be10e5081cf87e8d6747595568cad37d630a2d6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHandleComplex/Varianta407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47234471fe100ff910b5ab38d5e764ea173d0ce101135991130f23e07e504bd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homologyIso
    (R : Type*) [CommRing R]
    (index : Nat) :
    (complex R index).homology index ≅ coefficientModule R :=
  HomologicalComplex.singleObjHomologySelfIso
    (ComplexShape.down Nat) index (coefficientModule R)

/-- The categorical homology isomorphism induces an `R`-linear equivalence with `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHandleComplex/Varianta407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHandleComplex/Varianta407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19c5de3ac030d9ccd983900c58f36499af67aa24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
