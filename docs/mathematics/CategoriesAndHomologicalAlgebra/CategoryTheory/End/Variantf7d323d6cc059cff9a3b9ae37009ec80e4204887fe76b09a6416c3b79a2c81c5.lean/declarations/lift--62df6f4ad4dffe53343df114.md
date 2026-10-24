# lift_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6b08730-45b5-2159-404c-85b423dde5fe",
  "kind": "lemma",
  "lexical_name": "lift_ι",
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
  "slug": "lift--62df6f4ad4dffe53343df114",
  "source": {
    "blob": "cfc3cccab7323a0040257aabd0e2035497a3979e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 105,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62df6f4ad4dffe53343df114f16aac6785cc7ce4894a2664be003517a8342a99",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6b08730-45b5-2159-404c-85b423dde5fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lift_ι (hc : IsLimit c) {X : C} (f : ∀ j, X ⟶ (F.obj (op j)).obj j)
    (hf : ∀ ⦃i j : J⦄ (g : i ⟶ j), f i ≫ (F.obj (op i)).map g = f j ≫ (F.map g.op).app j) (j : J) :
    lift hc f hf ≫ c.ι j = f j := by
  apply IsLimit.fac


end IsLimit

end Wedge

section End

/-- Given `F : Jᵒᵖ ⥤ J ⥤ C`, this property asserts the existence of the end of `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variantf7d323d6cc059cff9a3b9ae37009ec80e4204887fe76b09a6416c3b79a2c81c5.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfc3cccab7323a0040257aabd0e2035497a3979e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
