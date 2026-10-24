# fromInducedMonoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:561e45ee7762dd95b636da5da4e0a6d485769469863dfe00ed527d67ea099dc4",
  "kind": "instance",
  "lexical_name": "fromInducedMonoidal",
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
  "slug": "frominducedmonoidal--d283f0557588e0a1cd5128ab",
  "source": {
    "blob": "4e3c43309625d6e9bdb45eea9528ef64e7b00058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 123,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d283f0557588e0a1cd5128ab378a88a7e2a11a71f181514a120297634c5dc536",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:561e45ee7762dd95b636da5da4e0a6d485769469863dfe00ed527d67ea099dc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance fromInducedMonoidal [MonoidalCategoryStruct D] (F : D ⥤ C) [F.Faithful]
    (fData : InducingFunctorData F) :
    letI := induced F fData
    F.Monoidal :=
  letI := induced F fData
  (fromInducedCoreMonoidal F fData).toMonoidal

/-- Transport a monoidal structure along an equivalence of (plain) categories.
-/
@[simps -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variant7e61552cb427d9c728b72fc5787ac964cb411a4f7136e4f9218df190f39e6606.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e3c43309625d6e9bdb45eea9528ef64e7b00058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
