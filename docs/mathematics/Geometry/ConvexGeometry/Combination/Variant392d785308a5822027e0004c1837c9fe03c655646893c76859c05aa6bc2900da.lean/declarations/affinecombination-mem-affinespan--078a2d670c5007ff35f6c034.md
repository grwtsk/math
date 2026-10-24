# affineCombination_mem_affineSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e114d623-90b9-42da-65ab-a57560c9fd93",
  "kind": "theorem",
  "lexical_name": "affineCombination_mem_affineSpan",
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
  "slug": "affinecombination-mem-affinespan--078a2d670c5007ff35f6c034",
  "source": {
    "blob": "065af88e6049f15a6c0c15394f42a0a8b9bfbd6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 789,
    "line": 767,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant392d785308a5822027e0004c1837c9fe03c655646893c76859c05aa6bc2900da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:078a2d670c5007ff35f6c0349f1dbba89f41d26a65285709c1859818261fad56",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Combination/Variant392d785308a5822027e0004c1837c9fe03c655646893c76859c05aa6bc2900da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e114d623-90b9-42da-65ab-a57560c9fd93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 767–789.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineCombination_mem_affineSpan [Nontrivial k] {s : Finset ι} {w : ι → k}
    (h : ∑ i ∈ s, w i = 1) (p : ι → P) :
    s.affineCombination k p w ∈ affineSpan k (Set.range p) := by
  classical
    have hnz : ∑ i ∈ s, w i ≠ 0 := h.symm ▸ one_ne_zero
    have hn : s.Nonempty := Finset.nonempty_of_sum_ne_zero hnz
    obtain ⟨i1, hi1⟩ := hn
    let w1 : ι → k := Function.update (Function.const ι 0) i1 1
    have hw1 : ∑ i ∈ s, w1 i = 1 := by
      simp only [w1, Function.const_zero, Finset.sum_update_of_mem hi1, Pi.zero_apply,
          Finset.sum_const_zero, add_zero]
    have hw1s : s.affineCombination k p w1 = p i1 :=
      s.affineCombination_of_eq_one_of_eq_zero w1 p hi1 (Function.update_self ..) fun _ _ hne =>
        Function.update_of_ne hne ..
    have hv : s.affineCombination k p w -ᵥ p i1 ∈ (affineSpan k (Set.range p)).direction := by
      rw [direction_affineSpan, ← hw1s, Finset.affineCombination_vsub]
      apply weightedVSub_mem_vectorSpan
      simp [Pi.sub_apply, h, hw1]
    rw [← vsub_vadd (s.affineCombination k p w) (p i1)]
    exact AffineSubspace.vadd_mem_of_mem_direction hv (mem_affineSpan k (Set.mem_range_self _))

/-- An `affineCombination` with sum of weights 1 is in the
`affineSpan` of an indexed family, if the family is nonempty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant392d785308a5822027e0004c1837c9fe03c655646893c76859c05aa6bc2900da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant392d785308a5822027e0004c1837c9fe03c655646893c76859c05aa6bc2900da.lean#L767).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `065af88e6049f15a6c0c15394f42a0a8b9bfbd6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
