# finsetSubtypeComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3edb8f959a4fd31b8c4c95e29db124c56200c2d78613a10ed61b56159d418d0d",
  "kind": "def",
  "lexical_name": "finsetSubtypeComm",
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
  "slug": "finsetsubtypecomm--868b01fd9797ee897798b193",
  "source": {
    "blob": "65c4620da60bd1530170a0508cd47d6fe6cc7f60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 709,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant400ab14d254204353798efbeaffb0f8f5e9ea08a55fb677c1490695b0b69909f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:868b01fd9797ee897798b193bf5e08740b2cfacdd25bc429b0645ff29cffa267",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Image/Variant400ab14d254204353798efbeaffb0f8f5e9ea08a55fb677c1490695b0b69909f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3edb8f959a4fd31b8c4c95e29db124c56200c2d78613a10ed61b56159d418d0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 709–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def finsetSubtypeComm (p : α → Prop) :
    Finset {a : α // p a} ≃ {s : Finset α // ∀ a ∈ s, p a} where
  toFun s := ⟨s.map ⟨fun a ↦ a.val, Subtype.val_injective⟩, fun _ h ↦
    have ⟨v, _, h⟩ := Embedding.coeFn_mk _ _ ▸ mem_map.mp h; h ▸ v.property⟩
  invFun s := s.val.attach.map (Subtype.impEmbedding _ _ s.property)
  left_inv s := by
    ext a; constructor <;> intro h <;>
    simp only [Finset.mem_map, Finset.mem_attach, true_and, Subtype.exists, Embedding.coeFn_mk,
      exists_and_right, exists_eq_right, Subtype.impEmbedding, Subtype.mk.injEq] at *
    · rcases h with ⟨_, ⟨_, h₁⟩, h₂⟩; exact h₂ ▸ h₁
    · use a, ⟨a.property, h⟩
  right_inv s := by
    ext a; constructor <;> intro h <;>
    simp only [Finset.mem_map, Finset.mem_attach, true_and, Subtype.exists, Embedding.coeFn_mk,
      exists_and_right, exists_eq_right, Subtype.impEmbedding, Subtype.mk.injEq] at *
    · rcases h with ⟨_, _, h₁, h₂⟩; exact h₂ ▸ h₁
    · use s.property _ h, a

end Equiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Image/Variant400ab14d254204353798efbeaffb0f8f5e9ea08a55fb677c1490695b0b69909f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant400ab14d254204353798efbeaffb0f8f5e9ea08a55fb677c1490695b0b69909f.lean#L709).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65c4620da60bd1530170a0508cd47d6fe6cc7f60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
