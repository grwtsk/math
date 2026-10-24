# image_sumElim_product_antidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41a8bd56-95da-5228-193e-018a9c4e5291",
  "kind": "theorem",
  "lexical_name": "image_sumElim_product_antidiagonal",
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
  "slug": "image-sumelim-product-antidiagonal--7e9cf8379e31452b0ffeda45",
  "source": {
    "blob": "b844166783355359797eaefb2d8b2e66f47a1dc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant60f54c15a2a9e1edfa767b372eaa7767c94642fb2bef4907da784dbc7782fcbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e9cf8379e31452b0ffeda45c035e56fc781ba4f62782cf6414f5cbec69fa75f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant60f54c15a2a9e1edfa767b372eaa7767c94642fb2bef4907da784dbc7782fcbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41a8bd56-95da-5228-193e-018a9c4e5291`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_sumElim_product_antidiagonal {β : Type*} [DecidableEq β] {x : α →₀ ℕ}
    {y : β →₀ ℕ} : image (fun ((x, y), z, w) ↦ (x.sumElim z, y.sumElim w))
      (antidiagonal x ×ˢ antidiagonal y) = antidiagonal (x.sumElim y) := by
  ext ⟨u, v⟩
  simp only [mem_antidiagonal, mem_image, mem_product, Prod.mk.injEq, Prod.exists]
  refine ⟨fun ⟨a, b, a', b', h1, h2, h3⟩ ↦ ?_, fun h ↦
    ⟨u.comapDomain Sum.inl Sum.inl_injective.injOn, v.comapDomain Sum.inl Sum.inl_injective.injOn,
    u.comapDomain Sum.inr Sum.inr_injective.injOn, v.comapDomain Sum.inr Sum.inr_injective.injOn,
    ⟨?_, ?_⟩, comapDomain_sumElim_comapDomain .., comapDomain_sumElim_comapDomain ..⟩⟩
  · rw [← h2, ← h3, ← sumElim_add, h1.left, h1.right]
  · rw [← comapDomain_add_of_injective Sum.inl_injective, h, comapDomain_inl_sumElim]
  · rw [← comapDomain_add_of_injective Sum.inr_injective, h, comapDomain_inr_sumElim]

end Finsupp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant60f54c15a2a9e1edfa767b372eaa7767c94642fb2bef4907da784dbc7782fcbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant60f54c15a2a9e1edfa767b372eaa7767c94642fb2bef4907da784dbc7782fcbe.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b844166783355359797eaefb2d8b2e66f47a1dc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
