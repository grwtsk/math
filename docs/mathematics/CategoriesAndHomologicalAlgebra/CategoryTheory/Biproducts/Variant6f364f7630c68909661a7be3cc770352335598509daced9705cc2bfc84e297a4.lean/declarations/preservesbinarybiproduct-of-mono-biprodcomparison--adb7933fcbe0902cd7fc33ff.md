# preservesBinaryBiproduct_of_mono_biprodComparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf3cf701-42c9-385b-960c-64d6cb8965f4",
  "kind": "lemma",
  "lexical_name": "preservesBinaryBiproduct_of_mono_biprodComparison",
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
  "slug": "preservesbinarybiproduct-of-mono-biprodcomparison--adb7933fcbe0902cd7fc33ff",
  "source": {
    "blob": "8ef682df07d94bbafe66a33ce657e071f5563afa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1059,
    "line": 1044,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant6f364f7630c68909661a7be3cc770352335598509daced9705cc2bfc84e297a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adb7933fcbe0902cd7fc33ff641d74f912d4079b6e41420941b03626bebc0e50",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant6f364f7630c68909661a7be3cc770352335598509daced9705cc2bfc84e297a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf3cf701-42c9-385b-960c-64d6cb8965f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1044–1059.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesBinaryBiproduct_of_mono_biprodComparison {X Y : C} [HasBinaryBiproduct X Y]
    [HasBinaryBiproduct (F.obj X) (F.obj Y)] [Mono (biprodComparison F X Y)] :
    PreservesBinaryBiproduct X Y F := by
  have that :
    prodComparison F X Y =
      (F.mapIso (biprod.isoProd X Y)).inv ≫ biprodComparison F X Y ≫ (biprod.isoProd _ _).hom := by
    ext <;> simp [← Functor.map_comp]
  have : IsIso (biprodComparison F X Y) := isIso_of_mono_of_isSplitEpi _
  have : IsIso (prodComparison F X Y) := by
    rw [that]
    infer_instance
  have := PreservesLimitPair.of_iso_prod_comparison F X Y
  apply preservesBinaryBiproduct_of_preservesBinaryProduct

/-- If the (coproduct-like) biproduct comparison for `F`, `X` and `Y` is an epimorphism, then
`F` preserves the biproduct of `X` and `Y`. For the converse, see `mapBiprod`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant6f364f7630c68909661a7be3cc770352335598509daced9705cc2bfc84e297a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant6f364f7630c68909661a7be3cc770352335598509daced9705cc2bfc84e297a4.lean#L1044).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ef682df07d94bbafe66a33ce657e071f5563afa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
