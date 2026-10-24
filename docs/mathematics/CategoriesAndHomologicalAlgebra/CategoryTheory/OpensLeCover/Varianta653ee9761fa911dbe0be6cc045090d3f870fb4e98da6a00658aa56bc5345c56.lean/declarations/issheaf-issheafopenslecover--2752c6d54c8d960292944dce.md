# IsSheaf.isSheafOpensLeCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34931a98-e4b6-192a-8dfc-5e3a4db01444",
  "kind": "theorem",
  "lexical_name": "IsSheaf.isSheafOpensLeCover",
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
  "slug": "issheaf-issheafopenslecover--2752c6d54c8d960292944dce",
  "source": {
    "blob": "97e295cc1dc9414c02a853c37085fd3143523e6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 222,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Varianta653ee9761fa911dbe0be6cc045090d3f870fb4e98da6a00658aa56bc5345c56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2752c6d54c8d960292944dce095ff53a60562479ce94bdf08a857dc2e6f518c1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Varianta653ee9761fa911dbe0be6cc045090d3f870fb4e98da6a00658aa56bc5345c56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34931a98-e4b6-192a-8dfc-5e3a4db01444`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSheaf.isSheafOpensLeCover (h : F.IsSheaf) :
    Nonempty (IsLimit (F.mapCone (opensLeCoverCocone U).op)) := by
  rw [(isLimitOpensLeEquivGenerate₁ F U rfl).nonempty_congr]
  apply (Presheaf.isSheaf_iff_isLimit _ _).mp h
  apply presieveOfCovering.mem_grothendieckTopology

/-- A presheaf `(opens X)ᵒᵖ ⥤ C` on a topological space `X` is a sheaf on the site `opens X` iff
    it satisfies the `IsSheafOpensLeCover` sheaf condition. The latter is not the
    official definition of sheaves on spaces, but has the advantage that it does not
    require `has_products C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Varianta653ee9761fa911dbe0be6cc045090d3f870fb4e98da6a00658aa56bc5345c56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Varianta653ee9761fa911dbe0be6cc045090d3f870fb4e98da6a00658aa56bc5345c56.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97e295cc1dc9414c02a853c37085fd3143523e6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
