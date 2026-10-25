# sumAssoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc9d918de2ca06cc3fcf3476101cbfd577c3078c020d24ce5527d1e3b43664e3",
  "kind": "def",
  "lexical_name": "sumAssoc",
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
  "slug": "sumassoc--c4dbd5c35850c98cf8ef6485",
  "source": {
    "blob": "5a4972bd90000423db62023f5ffddf29afef7531",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4dbd5c35850c98cf8ef64855c3fada75efbc2e5eedadae0a6a15f7356e8e4cf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc9d918de2ca06cc3fcf3476101cbfd577c3078c020d24ce5527d1e3b43664e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumAssoc (α β γ) : (α ⊕ β) ⊕ γ ≃ α ⊕ (β ⊕ γ) :=
  ⟨Sum.elim (Sum.elim Sum.inl (Sum.inr ∘ Sum.inl)) (Sum.inr ∘ Sum.inr),
    Sum.elim (Sum.inl ∘ Sum.inl) <| Sum.elim (Sum.inl ∘ Sum.inr) Sum.inr,
      by rintro (⟨_ | _⟩ | _) <;> rfl, by
    rintro (_ | ⟨_ | _⟩) <;> rfl⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a4972bd90000423db62023f5ffddf29afef7531` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
