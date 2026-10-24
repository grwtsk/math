# logLongInventory_card_le_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:310ab1ff-fa25-b33f-7438-c17904bf875b",
  "kind": "theorem",
  "lexical_name": "logLongInventory_card_le_exp",
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
  "slug": "loglonginventory-card-le-exp--db842c9e73442dd8dbb5dc5e",
  "source": {
    "blob": "a7ffc921f376ae1374f18a9ee1e51af6945f51c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 157,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantf457cdd5c4f6ac5919bf29904db2f5dffee58491585e4d8a004746967e1f7e0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db842c9e73442dd8dbb5dc5ef59e7cb8c3d7e17f49d4b6d8f0c710275061e031",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantf457cdd5c4f6ac5919bf29904db2f5dffee58491585e4d8a004746967e1f7e0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:310ab1ff-fa25-b33f-7438-c17904bf875b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logLongInventory_card_le_exp (A : ℝ) (i : ℕ) :
    ((logLongInventory A i).card : ℝ) ≤ Real.exp ((i : ℝ)+1) := by
  have hs : logLongInventory A i ⊆ Finset.Icc 1 ⌊Real.exp ((i : ℝ)+1)⌋₊ := by
    intro n hn
    have hN := (Finset.mem_filter.mp hn).1
    have hi := (Finset.mem_filter.mp hn).2
    have hn1 : 1 ≤ n := by have := (Finset.mem_Ioc.mp hN).1; omega
    have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
    refine Finset.mem_Icc.mpr ⟨hn1, ?_⟩
    apply (Nat.le_floor_iff (Real.exp_pos _).le).2
    have hl := Nat.lt_floor_add_one (Real.log (n : ℝ))
    rw [hi] at hl
    exact ((Real.log_le_iff_le_exp hn0).1 hl.le)
  have hc : (logLongInventory A i).card ≤ ⌊Real.exp ((i : ℝ)+1)⌋₊ := by
    simpa only [Nat.card_Icc, Nat.add_sub_cancel] using Finset.card_le_card hs
  have hcR : ((logLongInventory A i).card : ℝ) ≤ ⌊Real.exp ((i : ℝ)+1)⌋₊ := by
    exact_mod_cast hc
  exact hcR.trans (Nat.floor_le (Real.exp_pos _).le)

/-- Normalized square-root pair counts cost at most exp(1), independent of A and the cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantf457cdd5c4f6ac5919bf29904db2f5dffee58491585e4d8a004746967e1f7e0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantf457cdd5c4f6ac5919bf29904db2f5dffee58491585e4d8a004746967e1f7e0b.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7ffc921f376ae1374f18a9ee1e51af6945f51c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
