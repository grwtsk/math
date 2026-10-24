# prodLexAssoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0209cbb6ccce6c0e231f5930c4dde3c1c4d1202d2875532a89b8114aba313340",
  "kind": "def",
  "lexical_name": "prodLexAssoc",
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
  "slug": "prodlexassoc--68317333d6fde2e583c89c75",
  "source": {
    "blob": "f996e76df4b3115938307a1b1389cc3b673e4660",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 192,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant285420c62a8447b28c2cc764e7addf976ca192d59e8ee87358ae81e8bf8fe345.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68317333d6fde2e583c89c757290d8daea88fd52ca9e628a83fcfd40843aa0df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant285420c62a8447b28c2cc764e7addf976ca192d59e8ee87358ae81e8bf8fe345.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0209cbb6ccce6c0e231f5930c4dde3c1c4d1202d2875532a89b8114aba313340`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodLexAssoc (α β γ : Type*)
    [Preorder α] [Preorder β] [Preorder γ] : (α ×ₗ β) ×ₗ γ ≃o α ×ₗ β ×ₗ γ where
  toEquiv := .trans ofLex <| .trans (.prodCongr ofLex <| .refl _) <|
      .trans (.prodAssoc α β γ) <| .trans (.prodCongr (.refl _) toLex) <| toLex
  map_rel_iff' := by
    simp only [Prod.Lex.le_iff, Prod.Lex.lt_iff, Equiv.trans_apply, Equiv.prodCongr_apply,
      Equiv.prodAssoc_apply]
    grind [EmbeddingLike.apply_eq_iff_eq, ofLex_toLex]

/-- `Equiv.sumProdDistrib` promoted to an order isomorphism of lexicographic products.

Right distributivity doesn't hold. A counterexample is `ℕ ×ₗ (Unit ⊕ₗ Unit) ≃o ℕ`
which is not isomorphic to `ℕ ×ₗ Unit ⊕ₗ ℕ ×ₗ Unit ≃o ℕ ⊕ₗ ℕ`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant285420c62a8447b28c2cc764e7addf976ca192d59e8ee87358ae81e8bf8fe345.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant285420c62a8447b28c2cc764e7addf976ca192d59e8ee87358ae81e8bf8fe345.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f996e76df4b3115938307a1b1389cc3b673e4660` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
