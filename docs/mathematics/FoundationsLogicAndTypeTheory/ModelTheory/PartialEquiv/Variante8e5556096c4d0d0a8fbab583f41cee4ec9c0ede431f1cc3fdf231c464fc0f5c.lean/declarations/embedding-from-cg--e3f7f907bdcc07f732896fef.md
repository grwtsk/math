# embedding_from_cg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b8cdc74-6492-c0c9-9fc6-9bfe77a9fa8f",
  "kind": "theorem",
  "lexical_name": "embedding_from_cg",
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
  "slug": "embedding-from-cg--e3f7f907bdcc07f732896fef",
  "source": {
    "blob": "ecd5ae63a5e6963f650710a9d9703978cfb17485",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 482,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3f7f907bdcc07f732896fefac618329914d403975961843114b2a6c3a323cc4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b8cdc74-6492-c0c9-9fc6-9bfe77a9fa8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem embedding_from_cg (M_cg : Structure.CG L M) (g : L.FGEquiv M N)
    (H : L.IsExtensionPair M N) :
    ∃ f : M ↪[L] N, g ≤ f.toPartialEquiv := by
  rcases M_cg with ⟨X, _, X_gen⟩
  have _ : Countable (↑X : Type _) := by simpa only [countable_coe_iff]
  have _ : Encodable (↑X : Type _) := Encodable.ofCountable _
  let D : X → Order.Cofinal (FGEquiv L M N) := fun x ↦ H.definedAtLeft x
  let S : ℕ →o M ≃ₚ[L] N :=
    ⟨Subtype.val ∘ (Order.sequenceOfCofinals g D),
      (Subtype.mono_coe _).comp (Order.sequenceOfCofinals.monotone _ _)⟩
  let F := DirectLimit.partialEquivLimit S
  have _ : X ⊆ F.dom := by
    intro x hx
    have := Order.sequenceOfCofinals.encode_mem g D ⟨x, hx⟩
    exact dom_le_dom
      (le_partialEquivLimit S (Encodable.encode (⟨x, hx⟩ : X) + 1)) this
  have isTop : F.dom = ⊤ := by rwa [← top_le_iff, ← X_gen, Substructure.closure_le]
  exact ⟨toEmbeddingOfEqTop isTop,
        by convert (le_partialEquivLimit S 0); apply Embedding.toPartialEquiv_toEmbedding⟩

/-- For two countably generated structure `M` and `N`, if any PartialEquiv
between finitely generated substructures can be extended to any element in the domain and to
any element in the codomain, then there exists an equivalence between `M` and `N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecd5ae63a5e6963f650710a9d9703978cfb17485` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
