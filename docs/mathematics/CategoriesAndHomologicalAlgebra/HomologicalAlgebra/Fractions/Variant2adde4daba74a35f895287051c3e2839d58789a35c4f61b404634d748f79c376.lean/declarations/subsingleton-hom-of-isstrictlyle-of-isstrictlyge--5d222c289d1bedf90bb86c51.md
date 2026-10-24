# subsingleton_hom_of_isStrictlyLE_of_isStrictlyGE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce89403b-1cf7-0173-b0af-434335f986c3",
  "kind": "lemma",
  "lexical_name": "subsingleton_hom_of_isStrictlyLE_of_isStrictlyGE",
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
  "slug": "subsingleton-hom-of-isstrictlyle-of-isstrictlyge--5d222c289d1bedf90bb86c51",
  "source": {
    "blob": "331185773bacd3f812e57f9bedb4828863450188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 193,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant2adde4daba74a35f895287051c3e2839d58789a35c4f61b404634d748f79c376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d222c289d1bedf90bb86c517264dd86b0f5df0b179591cc2d3efe4c5ccce605",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant2adde4daba74a35f895287051c3e2839d58789a35c4f61b404634d748f79c376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce89403b-1cf7-0173-b0af-434335f986c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subsingleton_hom_of_isStrictlyLE_of_isStrictlyGE (X Y : CochainComplex C ℤ)
    (a b : ℤ) (h : a < b) [X.IsStrictlyLE a] [Y.IsStrictlyGE b] :
    Subsingleton (Q.obj X ⟶ Q.obj Y) := by
  suffices ∀ (f : Q.obj X ⟶ Q.obj Y), f = 0 from ⟨by simp [this]⟩
  intro f
  obtain ⟨X', _, s, _, g, rfl⟩ := right_fac_of_isStrictlyLE f a
  have : g = 0 := by
    ext i
    by_cases hi : a < i
    · apply (X'.isZero_of_isStrictlyLE a i hi).eq_of_src
    · apply (Y.isZero_of_isStrictlyGE b i (by lia)).eq_of_tgt
  rw [this, Q.map_zero, comp_zero]

end DerivedCategory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant2adde4daba74a35f895287051c3e2839d58789a35c4f61b404634d748f79c376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant2adde4daba74a35f895287051c3e2839d58789a35c4f61b404634d748f79c376.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `331185773bacd3f812e57f9bedb4828863450188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
