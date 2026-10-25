# sumEmbeddingEquivProdEmbeddingDisjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c384d9b70291e1d6a35f34b8b71df9f1f5783838d87c9b06d9bb34bba8942b02",
  "kind": "def",
  "lexical_name": "sumEmbeddingEquivProdEmbeddingDisjoint",
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
  "slug": "sumembeddingequivprodembeddingdisjoint--eae9e9dbb741930d155d8ce3",
  "source": {
    "blob": "53655a99bbfa6916262911342570e11b7cc88911",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant7d982d839ceb63b795b30145acc522bd9aedfdbe0f2b3b48270ab155996a0a45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eae9e9dbb741930d155d8ce363d08129f0ff8ed97559f255b19e9e5ba3aeaa71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant7d982d839ceb63b795b30145acc522bd9aedfdbe0f2b3b48270ab155996a0a45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c384d9b70291e1d6a35f34b8b71df9f1f5783838d87c9b06d9bb34bba8942b02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumEmbeddingEquivProdEmbeddingDisjoint {α β γ : Type*} :
    (α ⊕ β ↪ γ) ≃ { f : (α ↪ γ) × (β ↪ γ) // Disjoint (Set.range f.1) (Set.range f.2) } where
  toFun f :=
    ⟨(inl.trans f, inr.trans f), by
      rw [Set.disjoint_left]
      rintro _ ⟨a, h⟩ ⟨b, rfl⟩
      simp only [trans_apply, inl_apply, inr_apply] at h
      have : Sum.inl a = Sum.inr b := f.injective h
      simp only [reduceCtorEq] at this⟩
  invFun := fun ⟨⟨f, g⟩, disj⟩ =>
    ⟨fun x =>
      match x with
      | Sum.inl a => f a
      | Sum.inr b => g b, by
      rintro (a₁ | b₁) (a₂ | b₂) f_eq <;>
        simp only [Equiv.coe_fn_symm_mk, Sum.elim_inl, Sum.elim_inr] at f_eq
      · rw [f.injective f_eq]
      · exfalso
        exact disj.le_bot ⟨⟨a₁, f_eq⟩, ⟨b₂, by simp [f_eq]⟩⟩
      · exfalso
        exact disj.le_bot ⟨⟨a₂, rfl⟩, ⟨b₁, f_eq⟩⟩
      · rw [g.injective f_eq]⟩
  left_inv f := by
    dsimp only
    ext x
    cases x <;> simp!
  right_inv := fun ⟨⟨f, g⟩, _⟩ => by
    simp only [Prod.mk_inj]
    constructor

/-- Embeddings whose range lies within a set are equivalent to embeddings to that set.
This is `Function.Embedding.codRestrict` as an equiv. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant7d982d839ceb63b795b30145acc522bd9aedfdbe0f2b3b48270ab155996a0a45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant7d982d839ceb63b795b30145acc522bd9aedfdbe0f2b3b48270ab155996a0a45.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53655a99bbfa6916262911342570e11b7cc88911` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
