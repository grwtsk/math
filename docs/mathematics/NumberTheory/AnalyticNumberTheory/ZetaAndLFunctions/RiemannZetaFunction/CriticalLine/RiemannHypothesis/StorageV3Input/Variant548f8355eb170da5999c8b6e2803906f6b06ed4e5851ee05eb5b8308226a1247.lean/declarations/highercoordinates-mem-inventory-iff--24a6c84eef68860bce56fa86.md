# higherCoordinates_mem_inventory_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1c80c910ae3d280b2e5450787e3e6d32334ea90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/548f8355eb170da5999c8b6e2803906f6b06ed4e5851ee05eb5b8308226a1247.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0460c98c-3298-893d-6f40-d7740ff7eff8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12ef16c5-3290-d5a7-251b-77b644011156",
  "kind": "theorem",
  "lexical_name": "higherCoordinates_mem_inventory_iff",
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
  "slug": "highercoordinates-mem-inventory-iff--24a6c84eef68860bce56fa86",
  "source": {
    "blob": "f1c80c910ae3d280b2e5450787e3e6d32334ea90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 142,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Input/Variant548f8355eb170da5999c8b6e2803906f6b06ed4e5851ee05eb5b8308226a1247.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24a6c84eef68860bce56fa86344c0831a57ba5d985080f62a759b2ae6dece777",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Input/Variant548f8355eb170da5999c8b6e2803906f6b06ed4e5851ee05eb5b8308226a1247.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12ef16c5-3290-d5a7-251b-77b644011156`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherCoordinates_mem_inventory_iff (A : ℝ) (i : HigherPrimePowerIndex) :
    higherAtomCoordinates i ∈ higherPrimePowerInventory A ↔
      higherAtomNatural i ≤ ⌊Real.exp (2 * A)⌋₊ := by
  change ((i.1 : ℕ), i.2 + 3) ∈ higherPrimePowerInventory A ↔ _
  constructor
  · intro h
    exact (Finset.mem_filter.mp h).2
  · intro h
    have hp := i.1.property
    have hbase : (i.1 : ℕ) ≤ (i.1 : ℕ) ^ (i.2 + 3) := Nat.le_pow (by omega)
    have hk : ∀ k : ℕ, k ≤ (i.1 : ℕ) ^ k := by
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

/-- No endpoint convention is changed by the complete-index finite adapter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Input/Variant548f8355eb170da5999c8b6e2803906f6b06ed4e5851ee05eb5b8308226a1247.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Input/Variant548f8355eb170da5999c8b6e2803906f6b06ed4e5851ee05eb5b8308226a1247.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1c80c910ae3d280b2e5450787e3e6d32334ea90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
