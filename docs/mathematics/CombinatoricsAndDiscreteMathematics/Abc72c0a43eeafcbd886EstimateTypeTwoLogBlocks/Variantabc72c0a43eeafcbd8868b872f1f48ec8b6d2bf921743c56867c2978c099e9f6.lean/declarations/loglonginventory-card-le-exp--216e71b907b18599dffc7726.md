# logLongInventory_card_le_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31b814d3c658d1ee1a4c6990412ff9ee5757e395",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/abc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2711be4d-5145-b615-3452-1fb854e8962e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce78004c-0a22-8051-396f-e70e300b71d9",
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
  "slug": "loglonginventory-card-le-exp--216e71b907b18599dffc7726",
  "source": {
    "blob": "31b814d3c658d1ee1a4c6990412ff9ee5757e395",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 149,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantabc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:216e71b907b18599dffc7726495ff5e0d555711ffb5a67da3a7dbe6f4d4c9131",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantabc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce78004c-0a22-8051-396f-e70e300b71d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–168.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantabc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Abc72c0a43eeafcbd886EstimateTypeTwoLogBlocks/Variantabc72c0a43eeafcbd8868b872f1f48ec8b6d2bf921743c56867c2978c099e9f6.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31b814d3c658d1ee1a4c6990412ff9ee5757e395` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
