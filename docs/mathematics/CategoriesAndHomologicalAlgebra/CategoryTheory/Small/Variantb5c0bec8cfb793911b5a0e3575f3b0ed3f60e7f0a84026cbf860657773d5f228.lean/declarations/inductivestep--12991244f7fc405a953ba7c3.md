# InductiveStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0f208cbf7f42fa2e338f656c447f3ac12a6fc488284204956a46c2a0749d986",
  "kind": "inductive",
  "lexical_name": "InductiveStep",
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
  "slug": "inductivestep--12991244f7fc405a953ba7c3",
  "source": {
    "blob": "83ab27679b52eafffe56520bc374e3e916ed237e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 201,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12991244f7fc405a953ba7c3b91f0d8ca4e738c9a317c06087b7fb9a27275532",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0f208cbf7f42fa2e338f656c447f3ac12a6fc488284204956a46c2a0749d986`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private inductive InductiveStep (n : ℕ) (X : ∀ (k : ℕ), k < n → Σ t : Type (max v w), t → C) :
    Type (max v w)
  | min : {k k' : ℕ} → (hk : k < n) → (hk' : k' < n) → (X _ hk).1 → (X _ hk').1 → InductiveStep n X
  | eq : {k k' : ℕ} → (hk : k < n) → (hk' : k' < n) → (j : (X _ hk).1) → (j' : (X _ hk').1) →
      ((X _ hk).2 j ⟶ (X _ hk').2 j') → ((X _ hk).2 j ⟶ (X _ hk').2 j') → InductiveStep n X

/-- Implementation detail for the instance
    `EssentiallySmall.{max v w} (FullSubcategory (cofilteredClosure f))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ab27679b52eafffe56520bc374e3e916ed237e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
