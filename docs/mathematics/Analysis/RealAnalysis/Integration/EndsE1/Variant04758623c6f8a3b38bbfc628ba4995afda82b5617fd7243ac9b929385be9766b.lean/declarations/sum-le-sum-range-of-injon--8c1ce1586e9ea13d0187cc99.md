# sum_le_sum_range_of_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66efb28f-57a8-29b8-966c-ba8aab049e38",
  "kind": "theorem",
  "lexical_name": "sum_le_sum_range_of_injOn",
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
  "slug": "sum-le-sum-range-of-injon--8c1ce1586e9ea13d0187cc99",
  "source": {
    "blob": "06e0481ca042ab1ec77c43cd04ae59deb1c863bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 281,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c1ce1586e9ea13d0187cc99a78abb0386c14da282648d131d33195d2d43d87f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66efb28f-57a8-29b8-966c-ba8aab049e38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_le_sum_range_of_injOn {α : Type*} (S : Finset α) (ι : α → ℕ) (hι : Set.InjOn ι S)
    (G : ℕ → ℝ) (hG : ∀ m, 0 ≤ G m) (f : α → ℝ) (hf : ∀ k ∈ S, f k ≤ G (ι k)) :
    ∑ k ∈ S, f k ≤ ∑ m ∈ Finset.range (S.sup ι + 1), G m := by
  calc ∑ k ∈ S, f k ≤ ∑ k ∈ S, G (ι k) := Finset.sum_le_sum hf
    _ = ∑ m ∈ S.image ι, G m := (Finset.sum_image hι).symm
    _ ≤ ∑ m ∈ Finset.range (S.sup ι + 1), G m := by
        apply Finset.sum_le_sum_of_subset_of_nonneg _ (fun m _ _ => hG m)
        intro m hm
        rw [Finset.mem_image] at hm
        obtain ⟨k, hk, rfl⟩ := hm
        rw [Finset.mem_range]
        exact Nat.lt_succ_of_le (Finset.le_sup hk)

/-- `h ≤ 1` (as `L ≥ 8 > 2π`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06e0481ca042ab1ec77c43cd04ae59deb1c863bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
