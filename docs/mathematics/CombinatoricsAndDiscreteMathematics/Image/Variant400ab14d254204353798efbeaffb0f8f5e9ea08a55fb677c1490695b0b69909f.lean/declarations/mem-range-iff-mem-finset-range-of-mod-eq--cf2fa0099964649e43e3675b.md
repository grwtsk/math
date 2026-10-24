# mem_range_iff_mem_finset_range_of_mod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65c4620da60bd1530170a0508cd47d6fe6cc7f60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 479,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/400ab14d254204353798efbeaffb0f8f5e9ea08a55fb677c1490695b0b69909f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4913abc-a6f4-fe86-1b98-443e0d963547",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50739300-db0d-1f4f-69c6-fdf3026f4678",
  "kind": "theorem",
  "lexical_name": "mem_range_iff_mem_finset_range_of_mod_eq",
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
  "slug": "mem-range-iff-mem-finset-range-of-mod-eq--cf2fa0099964649e43e3675b",
  "source": {
    "blob": "65c4620da60bd1530170a0508cd47d6fe6cc7f60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 479,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant400ab14d254204353798efbeaffb0f8f5e9ea08a55fb677c1490695b0b69909f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf2fa0099964649e43e3675bb9b8a1a349761f029fff766076d6ff19b4b818f9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Image/Variant400ab14d254204353798efbeaffb0f8f5e9ea08a55fb677c1490695b0b69909f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50739300-db0d-1f4f-69c6-fdf3026f4678`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_range_iff_mem_finset_range_of_mod_eq [DecidableEq α] {f : ℤ → α} {a : α} {n : ℕ}
    (hn : 0 < n) (h : ∀ i, f (i % n) = f i) :
    a ∈ Set.range f ↔ a ∈ (Finset.range n).image (fun (i : ℕ) => f i) :=
  suffices (∃ i, f (i % n) = a) ↔ ∃ i, i < n ∧ f ↑i = a by simpa [h]
  have hn' : 0 < (n : ℤ) := Int.ofNat_lt.mpr hn
  Iff.intro
    (fun ⟨i, hi⟩ =>
      have : 0 ≤ i % ↑n := Int.emod_nonneg _ (ne_of_gt hn')
      ⟨Int.toNat (i % n), by
        rw [← Int.ofNat_lt, Int.toNat_of_nonneg this]; exact ⟨Int.emod_lt_of_pos i hn', hi⟩⟩)
    fun ⟨i, hi, ha⟩ =>
    ⟨i, by rw [Int.emod_eq_of_lt (Int.ofNat_zero_le _) (Int.ofNat_lt_ofNat_of_lt hi), ha]⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Image/Variant400ab14d254204353798efbeaffb0f8f5e9ea08a55fb677c1490695b0b69909f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant400ab14d254204353798efbeaffb0f8f5e9ea08a55fb677c1490695b0b69909f.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65c4620da60bd1530170a0508cd47d6fe6cc7f60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
