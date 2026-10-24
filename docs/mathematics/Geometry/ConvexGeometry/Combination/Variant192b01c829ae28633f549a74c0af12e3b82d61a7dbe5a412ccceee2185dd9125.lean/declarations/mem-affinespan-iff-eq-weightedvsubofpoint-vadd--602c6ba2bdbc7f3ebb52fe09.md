# mem_affineSpan_iff_eq_weightedVSubOfPoint_vadd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6969cc1a9de419f6a1de3c975d60329c2a59a0c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 927,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96ea016f-9ae1-2f7f-7702-e426f4dc4769",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ad54f24-0148-768a-2138-7ac976e1f69a",
  "kind": "theorem",
  "lexical_name": "mem_affineSpan_iff_eq_weightedVSubOfPoint_vadd",
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
  "slug": "mem-affinespan-iff-eq-weightedvsubofpoint-vadd--602c6ba2bdbc7f3ebb52fe09",
  "source": {
    "blob": "6969cc1a9de419f6a1de3c975d60329c2a59a0c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 954,
    "line": 927,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:602c6ba2bdbc7f3ebb52fe09966ff8ac8f8fadd833cce2b80b012735d4fd53ab",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ad54f24-0148-768a-2138-7ac976e1f69a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 927–954.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_affineSpan_iff_eq_weightedVSubOfPoint_vadd [Nontrivial k] (p : ι → P) (j : ι) (q : P) :
    q ∈ affineSpan k (Set.range p) ↔
      ∃ (s : Finset ι) (w : ι → k), q = s.weightedVSubOfPoint p (p j) w +ᵥ p j := by
  constructor
  · intro hq
    obtain ⟨s, w, hw, rfl⟩ := eq_affineCombination_of_mem_affineSpan hq
    exact ⟨s, w, s.affineCombination_eq_weightedVSubOfPoint_vadd_of_sum_eq_one w p hw (p j)⟩
  · rintro ⟨s, w, rfl⟩
    classical
      let w' : ι → k := Function.update w j (1 - (s \ {j}).sum w)
      have h₁ : (insert j s).sum w' = 1 := by
        by_cases hj : j ∈ s
        · simp [w', Finset.sum_update_of_mem hj, Finset.insert_eq_of_mem hj]
        · simp_rw [w', Finset.sum_insert hj, Finset.sum_update_of_notMem hj, Function.update_self,
            ← Finset.erase_eq, Finset.erase_eq_of_notMem hj, sub_add_cancel]
      have hww : ∀ i, i ≠ j → w i = w' i := by
        intro i hij
        simp [w', hij]
      rw [s.weightedVSubOfPoint_eq_of_weights_eq p j w w' hww, ←
        s.weightedVSubOfPoint_insert w' p j, ←
        (insert j s).affineCombination_eq_weightedVSubOfPoint_vadd_of_sum_eq_one w' p h₁ (p j)]
      exact affineCombination_mem_affineSpan h₁ p

variable {k V}

/-- Given a set of points, together with a chosen base point in this set, if we affinely transport
all other members of the set along the line joining them to this base point, the affine span is
unchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean#L927).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6969cc1a9de419f6a1de3c975d60329c2a59a0c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
