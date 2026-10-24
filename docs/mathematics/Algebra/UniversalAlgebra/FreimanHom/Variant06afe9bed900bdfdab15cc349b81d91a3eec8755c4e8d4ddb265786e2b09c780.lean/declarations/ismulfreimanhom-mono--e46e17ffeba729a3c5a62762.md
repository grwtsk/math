# IsMulFreimanHom.mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d446655d-254f-418c-7804-0f163fa9f658",
  "kind": "lemma",
  "lexical_name": "IsMulFreimanHom.mono",
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
  "slug": "ismulfreimanhom-mono--e46e17ffeba729a3c5a62762",
  "source": {
    "blob": "56fecdd60efa4df5eef11b5380d8f76593fd149a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 274,
    "path": "GRWTSK/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e46e17ffeba729a3c5a62762146be8f536208281176b97925030abfb3fd79d0e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d446655d-254f-418c-7804-0f163fa9f658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsMulFreimanHom.mono (hmn : m ≤ n) (hf : IsMulFreimanHom n A B f) :
    IsMulFreimanHom m A B f where
  mapsTo := hf.mapsTo
  map_prod_eq_map_prod s t hsA htA hs ht h := by
    obtain rfl | hm := m.eq_zero_or_pos
    · rw [card_eq_zero] at hs ht
      rw [hs, ht]
    simp only [← hs, card_pos_iff_exists_mem] at hm
    obtain ⟨a, ha⟩ := hm
    suffices ((s + replicate (n - m) a).map f).prod = ((t + replicate (n - m) a).map f).prod by
      simp_rw [Multiset.map_add, prod_add] at this
      exact mul_right_cancel this
    replace ha := hsA ha
    refine hf.map_prod_eq_map_prod (fun a ha ↦ ?_) (fun a ha ↦ ?_) ?_ ?_ ?_
    · rw [Multiset.mem_add] at ha
      obtain ha | ha := ha
      · exact hsA ha
      · rwa [eq_of_mem_replicate ha]
    · rw [Multiset.mem_add] at ha
      obtain ha | ha := ha
      · exact htA ha
      · rwa [eq_of_mem_replicate ha]
    · rw [card_add, card_replicate, hs, Nat.add_sub_cancel' hmn]
    · rw [card_add, card_replicate, ht, Nat.add_sub_cancel' hmn]
    · rw [prod_add, prod_add, h]

end CancelCommMonoid

section CancelCommMonoid
variable [CancelCommMonoid α] [CancelCommMonoid β] {A : Set α} {B : Set β} {f : α → β} {m n : ℕ}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56fecdd60efa4df5eef11b5380d8f76593fd149a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
