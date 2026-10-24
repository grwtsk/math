# atomNatural_mem_inventory_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f329ce5f2f6d2c6630cabe958e2b04863749e81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc030c1f5c0e760c427b33d97f16680d0103a42cc17a024780ed374c9595cf16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:effb2ca8-c96f-7849-68bb-6d8fa05f05c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4a7c35b-0e9e-a978-752c-566af4a0875b",
  "kind": "theorem",
  "lexical_name": "atomNatural_mem_inventory_iff",
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
  "slug": "atomnatural-mem-inventory-iff--6fc9c279e857e900ca19915a",
  "source": {
    "blob": "3f329ce5f2f6d2c6630cabe958e2b04863749e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/InventoryV3Input/Variantbc030c1f5c0e760c427b33d97f16680d0103a42cc17a024780ed374c9595cf16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fc9c279e857e900ca19915aaf3ac0ad679d79a3bc5f16dec682dff4bcf2bf91",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/InventoryV3Input/Variantbc030c1f5c0e760c427b33d97f16680d0103a42cc17a024780ed374c9595cf16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4a7c35b-0e9e-a978-752c-566af4a0875b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atomNatural_mem_inventory_iff (A : ℝ) (i : HigherIndex) :
    atomNatural i ∈ higherPrimePowerInventory A ↔
      i.1.val ^ (i.2 + 3) ≤ ⌊Real.exp (2 * A)⌋₊ := by
  change (i.1.val, i.2 + 3) ∈ higherPrimePowerInventory A ↔ _
  constructor
  · intro h
    exact (Finset.mem_filter.mp h).2
  · intro h
    have hp := i.1.property
    have hbase : i.1.val ≤ i.1.val ^ (i.2 + 3) := Nat.le_pow (by omega)
    have hk : ∀ k : ℕ, k ≤ i.1.val ^ k := by
      intro k
      induction k with
      | zero => simp
      | succ k ih =>
        rw [pow_succ]
        have hpos := pow_pos hp.pos k
        have hp2 := hp.two_le
        nlinarith
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_product.mpr ⟨?_, ?_⟩, h⟩
    · exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨hp.pos, hbase.trans h⟩, hp⟩
    · exact Finset.mem_Icc.mpr ⟨by omega, (hk _).trans h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/InventoryV3Input/Variantbc030c1f5c0e760c427b33d97f16680d0103a42cc17a024780ed374c9595cf16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/InventoryV3Input/Variantbc030c1f5c0e760c427b33d97f16680d0103a42cc17a024780ed374c9595cf16.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f329ce5f2f6d2c6630cabe958e2b04863749e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
