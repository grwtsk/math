# usedRepairPositions_window_card

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
      "line": 167,
      "path": "GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0fecb32-84cb-f77b-2d67-4a998d31feb2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d71ea2b-40f5-d4eb-ecc0-aaae08931976",
  "kind": "theorem",
  "lexical_name": "usedRepairPositions_window_card",
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
  "slug": "usedrepairpositions-window-card--643d3ec7738ac1b74b726528",
  "source": {
    "blob": "a8e696666b5fcdb3d5a0493e2001361069a5209c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 167,
    "path": "GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:643d3ec7738ac1b74b72652821774f73b330b98247dd8416ec478b8d5ede2bd6",
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

Occurrence: `result:0d71ea2b-40f5-d4eb-ecc0-aaae08931976`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem usedRepairPositions_window_card (σ : Fin n → G) (D : ℕ)
    (hg : GoodRepairGeometry σ D) (trace : SwapTrace n)
    (hd : SupportsDisjoint trace) (hb : TraceBounded D trace)
    (hl : ∀ s ∈ trace, s.left ∈ BadRightEndpoints σ) (b : Fin n) :
    (usedRepairPositions trace ∩ repairWindow b D).card ≤ D := by
  classical
  let P := trace.toFinset.filter fun s => s.right ∈ repairWindow b D
  have he : usedRepairPositions trace ∩ repairWindow b D = P.image PositionSwap.right := by
    ext y
    simp only [usedRepairPositions, Finset.mem_inter, Finset.mem_image,
      Finset.mem_filter, List.mem_toFinset, P]
    aesop
  have hp : P.card ≤ (badNeighborhood σ b D).card := by
    apply Finset.card_le_card_of_injOn PositionSwap.left
    · intro s hs
      obtain ⟨hs, hw⟩ := Finset.mem_filter.mp hs
      have hst : s ∈ trace := List.mem_toFinset.mp hs
      have hsbd := hb s hst
      have hwin : b < s.right ∧ s.right.val ≤ b.val + 5 * D := by
        simpa [repairWindow] using hw
      refine Finset.mem_filter.mpr ⟨hl s hst, ?_⟩
      simp only [Nat.dist]
      have horder : s.left.val < s.right.val := hsbd.1
      have hlength : s.right.val - s.left.val ≤ 5 * D := hsbd.2
      have hright : b.val < s.right.val := hwin.1
      omega
    · intro s hs t ht heq
      exact trace_left_injective trace hd s
        (List.mem_toFinset.mp (Finset.mem_filter.mp hs).1) t
        (List.mem_toFinset.mp (Finset.mem_filter.mp ht).1) heq
  rw [he]
  exact (Finset.card_image_le).trans (hp.trans (hg.localDensity b))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8e696666b5fcdb3d5a0493e2001361069a5209c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
