# ofExactOfRetraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a18e35f0df10d0e9f95fa2dc6a8bbc93e5edddb7ee9129a973dd7b475e0c89f",
  "kind": "def",
  "lexical_name": "ofExactOfRetraction",
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
  "slug": "ofexactofretraction--ac00d1cfce2633af6ce2a3d2",
  "source": {
    "blob": "102b74b572c93b23890442689b960c4199ade930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 970,
    "line": 956,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantc5cbee139b9b1701df9d01e2010dcbe54204a24eb21272b0b9196445c5b558ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac00d1cfce2633af6ce2a3d22b0e2ff78362088c2ea431d52022117fa5cfd979",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantc5cbee139b9b1701df9d01e2010dcbe54204a24eb21272b0b9196445c5b558ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a18e35f0df10d0e9f95fa2dc6a8bbc93e5edddb7ee9129a973dd7b475e0c89f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 956–970.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofExactOfRetraction (S : ShortComplex C) (hS : S.Exact) (r : S.X₂ ⟶ S.X₁)
    (f_r : S.f ≫ r = 𝟙 S.X₁) (hg : Epi S.g) :
    S.Splitting where
  r := r
  s := hS.desc (𝟙 S.X₂ - r ≫ S.f) (by simp [reassoc_of% f_r])
  f_r := f_r
  s_g := by
    rw [← cancel_epi S.g, Exact.g_desc_assoc, sub_comp, id_comp, assoc, zero,
      comp_zero, sub_zero, comp_id]

end Splitting

end ShortComplex

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantc5cbee139b9b1701df9d01e2010dcbe54204a24eb21272b0b9196445c5b558ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantc5cbee139b9b1701df9d01e2010dcbe54204a24eb21272b0b9196445c5b558ef.lean#L956).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `102b74b572c93b23890442689b960c4199ade930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
