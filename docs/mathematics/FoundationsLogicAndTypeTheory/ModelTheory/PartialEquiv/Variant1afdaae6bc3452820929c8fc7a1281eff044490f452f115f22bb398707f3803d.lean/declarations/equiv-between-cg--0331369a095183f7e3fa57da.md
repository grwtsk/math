# equiv_between_cg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fedf617b598a6b3213f983fd2544427d9fe6ae1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 497,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:181c22e3-09fc-68be-e27a-80ab0286a005",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff9caa05-0b8d-e399-4d07-83f343e6374f",
  "kind": "theorem",
  "lexical_name": "equiv_between_cg",
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
  "slug": "equiv-between-cg--0331369a095183f7e3fa57da",
  "source": {
    "blob": "4fedf617b598a6b3213f983fd2544427d9fe6ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 497,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variant1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0331369a095183f7e3fa57dac0f925e5c92e6478bc1059f2afbcd5499a118694",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variant1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff9caa05-0b8d-e399-4d07-83f343e6374f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_between_cg (M_cg : Structure.CG L M) (N_cg : Structure.CG L N)
    (g : L.FGEquiv M N)
    (ext_dom : L.IsExtensionPair M N)
    (ext_cod : L.IsExtensionPair N M) :
    ∃ f : M ≃[L] N, g ≤ f.toEmbedding.toPartialEquiv := by
  rcases M_cg with ⟨X, X_count, X_gen⟩
  rcases N_cg with ⟨Y, Y_count, Y_gen⟩
  have _ : Countable (↑X : Type _) := by simpa only [countable_coe_iff]
  have _ : Encodable (↑X : Type _) := Encodable.ofCountable _
  have _ : Countable (↑Y : Type _) := by simpa only [countable_coe_iff]
  have _ : Encodable (↑Y : Type _) := Encodable.ofCountable _
  let D : Sum X Y → Order.Cofinal (FGEquiv L M N) := fun p ↦
    Sum.recOn p (fun x ↦ ext_dom.definedAtLeft x) (fun y ↦ ext_cod.definedAtRight y)
  let S : ℕ →o M ≃ₚ[L] N :=
    ⟨Subtype.val ∘ (Order.sequenceOfCofinals g D),
      (Subtype.mono_coe _).comp (Order.sequenceOfCofinals.monotone _ _)⟩
  let F := @DirectLimit.partialEquivLimit L M N _ _ ℕ _ _ _ S
  have _ : X ⊆ F.dom := by
    intro x hx
    have := Order.sequenceOfCofinals.encode_mem g D (Sum.inl ⟨x, hx⟩)
    exact dom_le_dom
      (le_partialEquivLimit S (Encodable.encode (Sum.inl (⟨x, hx⟩ : X)) + 1)) this
  have _ : Y ⊆ F.cod := by
    intro y hy
    have := Order.sequenceOfCofinals.encode_mem g D (Sum.inr ⟨y, hy⟩)
    exact cod_le_cod
      (le_partialEquivLimit S (Encodable.encode (Sum.inr (⟨y, hy⟩ : Y)) + 1)) this
  have dom_top : F.dom = ⊤ := by rwa [← top_le_iff, ← X_gen, Substructure.closure_le]
  have cod_top : F.cod = ⊤ := by rwa [← top_le_iff, ← Y_gen, Substructure.closure_le]
  refine ⟨toEquivOfEqTop dom_top cod_top, ?_⟩
  convert le_partialEquivLimit S 0
  rw [toEquivOfEqTop_toEmbedding]
  apply Embedding.toPartialEquiv_toEmbedding

end FGEquiv

end Language

end FirstOrder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variant1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variant1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fedf617b598a6b3213f983fd2544427d9fe6ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
