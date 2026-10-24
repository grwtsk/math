# image_pow_eq_finsuppProd_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e918ee49-2009-79b4-f329-ad17e88b6e64",
  "kind": "theorem",
  "lexical_name": "image_pow_eq_finsuppProd_image",
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
  "slug": "image-pow-eq-finsuppprod-image--d8fc567a36c3b6e910ba5a1b",
  "source": {
    "blob": "7c7faf82e3a88fe7b0d7f00f4a7eab31790126af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 344,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8fc567a36c3b6e910ba5a1bdbac2d6365b35213e8cda2aaa77ec0ffa91300d9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e918ee49-2009-79b4-f329-ad17e88b6e64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_pow_eq_finsuppProd_image {α β : Type*} [CommMonoid β] {f : α → β} {n} {s : Set α} :
    (f '' s) ^ n = (·.prod (f · ^ ·)) '' {x : α →₀ ℕ | x.degree = n ∧ ↑x.support ⊆ s} := by
  classical
  suffices ∀ (s : Set (α →₀ ℕ)), ((·.prod (f · ^ ·)) '' s) ^ n = (·.prod (f · ^ ·)) '' (n • s) by
    simp [← nsmul_single_one_image, ← this, Set.image_image]
  intro s
  refine (Set.image_pow (⟨⟨(·.prod (f · ^ ·)) ∘ Multiplicative.toAdd, by simp⟩,
    by simp [Finsupp.prod_add_index, pow_add]⟩ : Multiplicative (α →₀ ℕ) →* β) _ _).symm.trans ?_
  simp [-Function.comp_apply, Set.image_comp, show Multiplicative.toAdd '' s = s from
    Set.image_id _]

end Finsupp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Weight/Variantc16d6392bc2dc07d9090a28b84a2ade9ee405d43fca2f216603e0ec5a764acd9.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c7faf82e3a88fe7b0d7f00f4a7eab31790126af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
