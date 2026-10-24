# homologyData₀_left_liftK

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c772d80-2934-9935-d5e9-89fd6dbbd7e3",
  "kind": "lemma",
  "lexical_name": "homologyData₀_left_liftK",
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
  "slug": "homologydata-left-liftk--5fee2e59df8ae929a498cb4f",
  "source": {
    "blob": "21ebe6678235956f8516c584f5cabe0a8c71b94d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologyZero/Variant165081f5e3b938ef3568ad5e2d9cc2c2b31b07a46d9f8c6bf678b847a7831cb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fee2e59df8ae929a498cb4f9dc171d02a249bfb15c1c6228f711fecafc02769",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologyZero/Variant165081f5e3b938ef3568ad5e2d9cc2c2b31b07a46d9f8c6bf678b847a7831cb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c772d80-2934-9935-d5e9-89fd6dbbd7e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homologyData₀_left_liftK {T : C} (f : T ⟶ (X.chainComplex R).X 0) :
    dsimp% (X.homologyData₀ R).left.liftK f (by cat_disch) = f :=
  ShortComplex.LeftHomologyData.ofIsColimitCokernelCofork_liftK ..

variable [CategoryWithHomology C]

/-- The homology of a simplicial set in degree `0` with coefficients
in `R` identifies to a coproduct of copies of `R` indexed by `π₀ X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologyZero/Variant165081f5e3b938ef3568ad5e2d9cc2c2b31b07a46d9f8c6bf678b847a7831cb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologyZero/Variant165081f5e3b938ef3568ad5e2d9cc2c2b31b07a46d9f8c6bf678b847a7831cb1.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21ebe6678235956f8516c584f5cabe0a8c71b94d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
