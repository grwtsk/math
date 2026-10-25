# exists_elementaryEmbedding_card_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:581043be-5140-c381-989c-44f91d738048",
  "kind": "theorem",
  "lexical_name": "exists_elementaryEmbedding_card_eq",
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
  "slug": "exists-elementaryembedding-card-eq--4d644eb8150da75a63a26b75",
  "source": {
    "blob": "4e8f5d7fa99799272cc381e0c7724fe6b6fff5a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 249,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d644eb8150da75a63a26b7528dd65ae1f5faa0a70c8b858ad2290c18af6715c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:581043be-5140-c381-989c-44f91d738048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_elementaryEmbedding_card_eq (M : Type w') [L.Structure M] [iM : Infinite M]
    (κ : Cardinal.{w}) (h1 : ℵ₀ ≤ κ) (h2 : lift.{w} L.card ≤ Cardinal.lift.{max u v} κ) :
    ∃ N : Bundled L.Structure, (Nonempty (N ↪ₑ[L] M) ∨ Nonempty (M ↪ₑ[L] N)) ∧ #N = κ := by
  cases le_or_gt (lift.{w'} κ) (Cardinal.lift.{w} #M) with
  | inl h =>
    obtain ⟨N, hN1, hN2⟩ := exists_elementaryEmbedding_card_eq_of_le L M κ h1 h2 h
    exact ⟨N, Or.inl hN1, hN2⟩
  | inr h =>
    obtain ⟨N, hN1, hN2⟩ := exists_elementaryEmbedding_card_eq_of_ge L M κ h2 (le_of_lt h)
    exact ⟨N, Or.inr hN1, hN2⟩

/-- A consequence of the Löwenheim–Skolem Theorem: If `κ` is a cardinal greater than the
cardinalities of `L` and an infinite `L`-structure `M`, then there is a structure of cardinality `κ`
elementarily equivalent to `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e8f5d7fa99799272cc381e0c7724fe6b6fff5a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
