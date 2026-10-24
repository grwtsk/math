# biprod_isZero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3321d63308ec99bb6f4d99332459ea003452054f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 876,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/127593834a529fc2d4409f46fceeab5d9b51675ea73afe4256671c452fe27c5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de275b8b-602e-63f8-b97b-dd8ad7f8bb10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d397e51c-b1ac-2394-c7cd-0a18a712dcdc",
  "kind": "lemma",
  "lexical_name": "biprod_isZero_iff",
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
  "slug": "biprod-iszero-iff--e8c43e7638363ed09a3a1697",
  "source": {
    "blob": "3321d63308ec99bb6f4d99332459ea003452054f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 897,
    "line": 876,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variant127593834a529fc2d4409f46fceeab5d9b51675ea73afe4256671c452fe27c5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8c43e7638363ed09a3a1697f0345804f90670efe98e6fee619703ed17b52f1d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variant127593834a529fc2d4409f46fceeab5d9b51675ea73afe4256671c452fe27c5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d397e51c-b1ac-2394-c7cd-0a18a712dcdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 876–897.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma biprod_isZero_iff (A B : C) [HasBinaryBiproduct A B] :
    IsZero (biprod A B) ↔ IsZero A ∧ IsZero B := by
  constructor
  · intro h
    simp only [IsZero.iff_id_eq_zero] at h ⊢
    simp only [show 𝟙 A = biprod.inl ≫ 𝟙 (A ⊞ B) ≫ biprod.fst by simp,
      show 𝟙 B = biprod.inr ≫ 𝟙 (A ⊞ B) ≫ biprod.snd by simp, h, zero_comp, comp_zero,
      and_self]
  · rintro ⟨hA, hB⟩
    rw [IsZero.iff_id_eq_zero]
    apply biprod.hom_ext
    · apply hA.eq_of_tgt
    · apply hB.eq_of_tgt

end IsZero

section

variable [HasBinaryBiproducts C]

/-- The braiding isomorphism which swaps a binary biproduct. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variant127593834a529fc2d4409f46fceeab5d9b51675ea73afe4256671c452fe27c5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variant127593834a529fc2d4409f46fceeab5d9b51675ea73afe4256671c452fe27c5e.lean#L876).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3321d63308ec99bb6f4d99332459ea003452054f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
