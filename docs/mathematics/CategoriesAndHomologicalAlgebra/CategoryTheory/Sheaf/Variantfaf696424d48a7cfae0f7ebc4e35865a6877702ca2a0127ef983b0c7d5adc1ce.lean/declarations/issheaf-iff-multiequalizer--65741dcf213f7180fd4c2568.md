# isSheaf_iff_multiequalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3c35e2a64a836226141760d9b33c9d8c8047bcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 524,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/faf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b010a06b-1acd-289d-c5ad-5cad14b91deb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed6463ac-7021-a3f7-95e9-7dbaa9d76f52",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_multiequalizer",
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
  "slug": "issheaf-iff-multiequalizer--65741dcf213f7180fd4c2568",
  "source": {
    "blob": "a3c35e2a64a836226141760d9b33c9d8c8047bcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 524,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65741dcf213f7180fd4c25680bf5412d0c7b019fe96dbb962e537789cbceb23b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed6463ac-7021-a3f7-95e9-7dbaa9d76f52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_iff_multiequalizer [∀ (X : C) (S : J.Cover X), HasMultiequalizer (S.index P)] :
    IsSheaf J P ↔ ∀ (X : C) (S : J.Cover X), IsIso (S.toMultiequalizer P) := by
  rw [isSheaf_iff_multifork]
  refine' forall₂_congr fun X S => ⟨_, _⟩
  · rintro ⟨h⟩
    let e : P.obj (op X) ≅ multiequalizer (S.index P) :=
      h.conePointUniqueUpToIso (limit.isLimit _)
    exact (inferInstance : IsIso e.hom)
  · intro h
    refine' ⟨IsLimit.ofIsoLimit (limit.isLimit _) (Cones.ext _ _)⟩
    · apply (@asIso _ _ _ _ _ h).symm
    · intro a
      symm
      erw [IsIso.inv_comp_eq]
      dsimp
      simp
#align category_theory.presheaf.is_sheaf_iff_multiequalizer CategoryTheory.Presheaf.isSheaf_iff_multiequalizer

end MultiequalizerConditions

section

variable [HasProducts.{max u₁ v₁} A]
variable [HasProducts.{max u₁ v₁} A']

/--
The middle object of the fork diagram given in Equation (3) of [MM92], as well as the fork diagram
of <https://stacks.math.columbia.edu/tag/00VM>.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3c35e2a64a836226141760d9b33c9d8c8047bcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
