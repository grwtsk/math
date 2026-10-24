# liftOn₂_type

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f39a6d190cb3eed89e2c2715fe8e8e78f7d4a1b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b337e1192998a0c5f839209535bed3c7c1e287d47f8ab13530c6afa2c0c8af18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ce9e18e-0d38-e4b4-549a-6a39ed14cc7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3c4b92c-2209-b1eb-9eb9-1683f1bd6fb7",
  "kind": "theorem",
  "lexical_name": "liftOn₂_type",
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
  "slug": "lifton-type--78abadac6f736218e2e0cbc9",
  "source": {
    "blob": "f39a6d190cb3eed89e2c2715fe8e8e78f7d4a1b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantb337e1192998a0c5f839209535bed3c7c1e287d47f8ab13530c6afa2c0c8af18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78abadac6f736218e2e0cbc97b45481630d765a1b7732bf9ba60d665a624ae6d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantb337e1192998a0c5f839209535bed3c7c1e287d47f8ab13530c6afa2c0c8af18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3c4b92c-2209-b1eb-9eb9-1683f1bd6fb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftOn₂_type {α : Type u} {β : Type v} {δ : Type*} [LinearOrder α] [LinearOrder β]
     (f : ∀ (α) [LinearOrder α] (β) [LinearOrder β], δ)
     (c : ∀ (α₁) [LinearOrder α₁] (β₁) [LinearOrder β₁] (α₂) [LinearOrder α₂] (β₂) [LinearOrder β₂],
       type α₁ = type α₂ → type β₁ = type β₂ → f α₁ β₁ = f α₂ β₂) :
    liftOn₂ (type α) (type β) f c = f α β := by rfl

/-! ### The order on `OrderType` -/

/--
The order is defined so that `type α ≤ type β` iff there exists an order embedding `α ↪o β`.
-/
@[no_expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantb337e1192998a0c5f839209535bed3c7c1e287d47f8ab13530c6afa2c0c8af18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantb337e1192998a0c5f839209535bed3c7c1e287d47f8ab13530c6afa2c0c8af18.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f39a6d190cb3eed89e2c2715fe8e8e78f7d4a1b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
