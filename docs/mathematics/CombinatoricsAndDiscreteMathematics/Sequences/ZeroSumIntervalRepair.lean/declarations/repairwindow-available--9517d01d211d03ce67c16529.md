# repairWindow_available

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8e696666b5fcdb3d5a0493e2001361069a5209c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04b13ec1-50f8-baca-d261-8acb9e5eceb2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fb9719c-acc6-2df1-1e8b-c67af98c753c",
  "kind": "theorem",
  "lexical_name": "repairWindow_available",
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
  "slug": "repairwindow-available--9517d01d211d03ce67c16529",
  "source": {
    "blob": "a8e696666b5fcdb3d5a0493e2001361069a5209c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 124,
    "path": "GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9517d01d211d03ce67c16529ca6892316459df3d7d82f57124e1c00e84f6138d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fb9719c-acc6-2df1-1e8b-c67af98c753c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repairWindow_available (b : Fin n) (D : ℕ) (_hp : 0 < D)
    (ht : b.val + 5 * D < n) (blocked original used : Finset (Fin n))
    (hb : (blocked ∩ repairWindow b D).card < 2 * D)
    (ho : (original ∩ repairWindow b D).card ≤ D)
    (hu : (used ∩ repairWindow b D).card ≤ D) :
    ∃ y ∈ repairWindow b D, y ∉ blocked ∧ y ∉ original ∧ y ∉ used := by
  classical
  let W := repairWindow b D
  let E := (blocked ∩ W) ∪ (original ∩ W) ∪ (used ∩ W)
  have hE : E.card ≤ (blocked ∩ W).card + (original ∩ W).card + (used ∩ W).card :=
    (Finset.card_union_le _ _).trans
      (Nat.add_le_add_right (Finset.card_union_le _ _) _)
  have hW : W.card = 5 * D := repairWindow_card b D ht
  have hlt : E.card < W.card := by dsimp [W] at *; omega
  obtain ⟨y, hy, hye⟩ := Finset.exists_mem_notMem_of_card_lt_card hlt
  refine ⟨y, hy, ?_, ?_, ?_⟩ <;> intro hm <;> apply hye
  · exact Finset.mem_union_left _ (Finset.mem_union_left _ (Finset.mem_inter.mpr ⟨hm, hy⟩))
  · exact Finset.mem_union_left _ (Finset.mem_union_right _ (Finset.mem_inter.mpr ⟨hm, hy⟩))
  · exact Finset.mem_union_right _ (Finset.mem_inter.mpr ⟨hm, hy⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8e696666b5fcdb3d5a0493e2001361069a5209c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
