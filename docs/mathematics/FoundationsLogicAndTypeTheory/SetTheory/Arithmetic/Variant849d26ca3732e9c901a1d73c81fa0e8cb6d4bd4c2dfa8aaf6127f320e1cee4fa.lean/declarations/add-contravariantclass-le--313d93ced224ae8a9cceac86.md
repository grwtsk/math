# add_contravariantClass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3a3e576398eb61e6a3188e841f9e6ca4c6663e2b7dd1a05ff3043c5c1143ca2",
  "kind": "instance",
  "lexical_name": "add_contravariantClass_le",
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
  "slug": "add-contravariantclass-le--313d93ced224ae8a9cceac86",
  "source": {
    "blob": "70e2b88d5aeaa83c05f31ae927b54e85bb8a5a01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:313d93ced224ae8a9cceac86f5287b7edb1142e0ce69ea4e683a0ed7b05b5a02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3a3e576398eb61e6a3188e841f9e6ca4c6663e2b7dd1a05ff3043c5c1143ca2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance add_contravariantClass_le : ContravariantClass Ordinal.{u} Ordinal.{u} (· + ·) (· ≤ ·) :=
  ⟨fun a b c =>
    inductionOn a fun α r hr =>
      inductionOn b fun β₁ s₁ hs₁ =>
        inductionOn c fun β₂ s₂ hs₂ ⟨f⟩ =>
          ⟨have fl : ∀ a, f (Sum.inl a) = Sum.inl a := fun a => by
              simpa only [InitialSeg.trans_apply, InitialSeg.leAdd_apply] using
                @InitialSeg.eq _ _ _ _ _
                  ((InitialSeg.leAdd r s₁).trans f) (InitialSeg.leAdd r s₂) a
            have : ∀ b, { b' // f (Sum.inr b) = Sum.inr b' } := by
              intro b; cases e : f (Sum.inr b)
              · rw [← fl] at e
                have := f.inj' e
                contradiction
              · exact ⟨_, rfl⟩
            let g (b) := (this b).1
            have fr : ∀ b, f (Sum.inr b) = Sum.inr (g b) := fun b => (this b).2
            ⟨⟨⟨g, fun x y h => by
                  injection f.inj' (by rw [fr, fr, h] : f (Sum.inr x) = f (Sum.inr y))⟩,
                @fun a b => by
                  -- Porting note:
                  --  `relEmbedding.coe_fn_to_embedding` & `initial_seg.coe_fn_to_rel_embedding`
                  --  → `InitialSeg.coe_coe_fn`
                  simpa only [Sum.lex_inr_inr, fr, InitialSeg.coe_coe_fn, Embedding.coeFn_mk] using
                    @RelEmbedding.map_rel_iff _ _ _ _ f.toRelEmbedding (Sum.inr a) (Sum.inr b)⟩,
              fun a b H => by
                rcases f.init (by rw [fr] <;> exact Sum.lex_inr_inr.2 H) with ⟨a' | a', h⟩
                · rw [fl] at h
                  cases h
                · rw [fr] at h
                  exact ⟨a', Sum.inr.inj h⟩⟩⟩⟩
#align ordinal.add_contravariant_class_le Ordinal.add_contravariantClass_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70e2b88d5aeaa83c05f31ae927b54e85bb8a5a01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
