# convexCombPair_eq_lineMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbe472c5-4b82-2004-edde-5c632e9105d6",
  "kind": "theorem",
  "lexical_name": "convexCombPair_eq_lineMap",
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
  "slug": "convexcombpair-eq-linemap--7d5a874eb278d017c343141a",
  "source": {
    "blob": "00f72b87895ca9d19e7a5c0cc3160f65a572257f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d5a874eb278d017c343141a83dbced1f5fb909a7a3445034ec7ba59a8b7995f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbe472c5-4b82-2004-edde-5c632e9105d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexCombPair_eq_lineMap (s t : R) (hs : 0 ≤ s) (ht : 0 ≤ t)
    (h : s + t = 1) (x y : P) :
    convexCombPair s t hs ht h x y = AffineMap.lineMap y x s := by
  simp only [convexCombPair, AddTorsor.sConvexComb_eq_affineCombination, StdSimplex.duple,
    AffineMap.lineMap_apply]
  classical
  -- Use weighted subtraction with base point y
  rw [Finset.affineCombination_eq_weightedVSubOfPoint_vadd_of_sum_eq_one _ _ id (b := y)]
  swap
  · -- Prove sum of weights equals 1
    trans (Finsupp.single x s + Finsupp.single y t).sum fun _ r => r
    · apply Finset.sum_congr rfl
      intro i _
      simp only [Finsupp.coe_add, Pi.add_apply]
    · rw [Finsupp.sum_add_index (by simp) (by simp), Finsupp.sum_single_index (by simp),
        Finsupp.sum_single_index (by simp), h]
  -- Now simplify the weighted subtraction
  congr 1
  rw [Finset.weightedVSubOfPoint_apply]
  simp only [id]
  -- Convert to Finsupp.sum
  change (Finsupp.single x s + Finsupp.single y t).sum (fun p w => w • (p -ᵥ y)) = _
  rw [Finsupp.sum_add_index (by simp) (fun _ a b => by simp [add_smul]),
    Finsupp.sum_single_index (by simp), Finsupp.sum_single_index (by simp)]
  simp [vsub_self]

end AddTorsor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AffineSpace/Variantae9afdd9aa7bd736558988eaae2e76467064375a738c4024d0bde0aa914dab3b.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00f72b87895ca9d19e7a5c0cc3160f65a572257f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
