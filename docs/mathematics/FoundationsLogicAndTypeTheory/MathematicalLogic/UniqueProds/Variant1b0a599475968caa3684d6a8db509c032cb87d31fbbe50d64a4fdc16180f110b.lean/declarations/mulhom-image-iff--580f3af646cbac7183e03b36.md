# mulHom_image_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1067e01d-ada1-6160-b960-8c7779a34d74",
  "kind": "theorem",
  "lexical_name": "mulHom_image_iff",
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
  "slug": "mulhom-image-iff--580f3af646cbac7183e03b36",
  "source": {
    "blob": "074cebd676f901c0f12936539ceed0ba23529cd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:580f3af646cbac7183e03b367564ca8bb874038e6bedbe46e4837dbe68aeb4db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1067e01d-ada1-6160-b960-8c7779a34d74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulHom_image_iff [DecidableEq H] (f : G →ₙ* H) (hf : Function.Injective f) :
    UniqueMul (A.image f) (B.image f) (f a0) (f b0) ↔ UniqueMul A B a0 b0 := by
  simp_rw [UniqueMul, Finset.mem_image]
  refine' ⟨fun h a b ha hb ab ↦ _, fun h ↦ _⟩
  · rw [← hf.eq_iff, map_mul, map_mul] at ab
    have := h ⟨a, ha, rfl⟩ ⟨b, hb, rfl⟩ ab
    exact ⟨hf this.1, hf this.2⟩
  · rintro _ _ ⟨a, aA, rfl⟩ ⟨b, bB, rfl⟩ ab
    simp only [← map_mul, hf.eq_iff] at ab ⊢
    exact h aA bB ab
#align unique_mul.mul_hom_image_iff UniqueMul.mulHom_image_iff
#align unique_add.add_hom_image_iff UniqueAdd.addHom_image_iff

/-- `UniqueMul` is preserved under embeddings that are multiplicative.

See `UniqueMul.mulHom_image_iff` for a version with swapped bundling. -/
@[to_additive
      "`UniqueAdd` is preserved under embeddings that are additive.

See `UniqueAdd.addHom_image_iff` for a version with swapped bundling."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074cebd676f901c0f12936539ceed0ba23529cd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
