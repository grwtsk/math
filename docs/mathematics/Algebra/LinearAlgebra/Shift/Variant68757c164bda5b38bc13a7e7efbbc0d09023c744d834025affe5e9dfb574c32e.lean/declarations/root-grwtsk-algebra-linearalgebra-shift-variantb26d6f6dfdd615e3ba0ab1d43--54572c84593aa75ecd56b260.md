# _root_.GRWTSK.Algebra.LinearAlgebra.Shift.Variantb26d6f6dfdd615e3ba0ab1d43817a31e34ad0f2fec177013ebd68ac288eac1fa.AffineIndependent.affineCombination_mem_shift_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0927640-53fb-1c22-7e46-1e62d22a9200",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.Shift.Variantb26d6f6dfdd615e3ba0ab1d43817a31e34ad0f2fec177013ebd68ac288eac1fa.AffineIndependent.affineCombination_mem_shift_iff",
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
  "slug": "root-grwtsk-algebra-linearalgebra-shift-variantb26d6f6dfdd615e3ba0ab1d43--54572c84593aa75ecd56b260",
  "source": {
    "blob": "631de5e102c49fb2f5e6a80323906c2318aab9c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 141,
    "path": "GRWTSK/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54572c84593aa75ecd56b26081dbdd3c0978c83a62732e3ce1ea30b90542751a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0927640-53fb-1c22-7e46-1e62d22a9200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.Shift.Variantb26d6f6dfdd615e3ba0ab1d43817a31e34ad0f2fec177013ebd68ac288eac1fa.AffineIndependent.affineCombination_mem_shift_iff
    {ι : Type*} [Fintype ι] [Nontrivial ι] {p : ι → P}
    (h : AffineIndependent k p) (i : ι) {w : ι → k} (hw : ∑ i, w i = 1) (c : k) :
    affineCombination k univ p w ∈ (affineSpan k <| p '' {i}ᶜ).shift (p i) c ↔
    w i = 1 - c := by
  classical
  refine ⟨?_, fun h ↦ by simpa [h] using affineCombination_mem_shift p i hw⟩
  obtain ⟨j, hj⟩ := exists_ne i
  rw [shift_eq ⟨p j, mem_affineSpan k <| Set.mem_image_of_mem _ hj⟩]
  suffices ∀ q ∈ affineSpan k (p '' {i}ᶜ),
    (1 - c) • (p i -ᵥ p j) +ᵥ q = affineCombination k univ p w → w i = 1 - c by simpa
  intro q hqmem heq
  obtain ⟨t, w', ht, hw', rfl⟩ := eq_affineCombination_of_mem_affineSpan_image hqmem
  have ht : (t : Set ι).indicator w' i = 0 := Set.indicator_of_notMem (by simpa using ht) w'
  rw [affineCombination_indicator_subset _ _ t.subset_univ,
    ← affineCombination_piSingle k _ p (mem_univ i),
    ← affineCombination_piSingle k _ p (mem_univ j), affineCombination_vsub, ← map_smul,
    weightedVSub_vadd_affineCombination, h.affineCombination_eq_iff_eq ?_ hw] at heq
  · simpa [hj.symm, ht] using (heq i (mem_univ i)).symm
  · simp [sum_add_distrib, sum_indicator_subset, ← mul_sum, hw']

end Ring

section CommRing
variable [CommRing k] [AddCommGroup V] [AddTorsor V P] [Module k V]

/-- For a unit parameter, shifting is the same as mapping by homothety. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `631de5e102c49fb2f5e6a80323906c2318aab9c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
