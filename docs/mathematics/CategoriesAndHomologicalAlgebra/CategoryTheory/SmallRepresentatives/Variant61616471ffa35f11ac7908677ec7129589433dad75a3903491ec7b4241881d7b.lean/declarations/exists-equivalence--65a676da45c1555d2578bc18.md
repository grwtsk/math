# exists_equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd3ca4fde9d26586b72530568ce567701680b4e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/61616471ffa35f11ac7908677ec7129589433dad75a3903491ec7b4241881d7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03dbf0aa-c903-1cc2-ad4b-521094c03e3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1e82fc3-31be-dcf4-3a0d-358437b62dcf",
  "kind": "lemma",
  "lexical_name": "exists_equivalence",
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
  "slug": "exists-equivalence--65a676da45c1555d2578bc18",
  "source": {
    "blob": "bd3ca4fde9d26586b72530568ce567701680b4e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 149,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant61616471ffa35f11ac7908677ec7129589433dad75a3903491ec7b4241881d7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65a676da45c1555d2578bc1812477e3872a9f64987dc1b3526c1395cbb925fba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant61616471ffa35f11ac7908677ec7129589433dad75a3903491ec7b4241881d7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1e82fc3-31be-dcf4-3a0d-358437b62dcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_equivalence (C : Type u) [Category.{v} C]
    (h₁ : Cardinal.lift.{w} (Cardinal.mk C) ≤ Cardinal.lift.{u} (Cardinal.mk Ω))
    (h₂ : ∀ (X Y : C), Cardinal.lift.{w} (Cardinal.mk (X ⟶ Y)) ≤
      Cardinal.lift.{v} (Cardinal.mk Ω)) :
    ∃ (h : SmallCategoryOfSet Ω), Nonempty (categoryFamily Ω h ≌ C) := by
  let f₁ := (Cardinal.lift_mk_le'.1 h₁).some
  let f₂ (X Y) := (Cardinal.lift_mk_le'.1 (h₂ X Y)).some
  let e := Equiv.ofInjective _ f₁.injective
  let h : CoreSmallCategoryOfSet Ω C :=
    { obj := Set.range f₁
      hom X Y := Set.range (f₂ (e.symm X) (e.symm Y))
      objEquiv := e.symm
      homEquiv {_ _} := by simpa using (Equiv.ofInjective _ ((f₂ _ _).injective)).symm }
  exact ⟨h.smallCategoryOfSet, ⟨h.equivalence⟩⟩

end SmallCategoryOfSet

/-- Index set of a representative set of all categories `C` which satisfy
`HasCardinalLT C κ`, see `SmallCategoryCardinalLT.categoryFamily`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant61616471ffa35f11ac7908677ec7129589433dad75a3903491ec7b4241881d7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant61616471ffa35f11ac7908677ec7129589433dad75a3903491ec7b4241881d7b.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd3ca4fde9d26586b72530568ce567701680b4e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
