# mem_range_map_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "822fabbe37c272395db2bac994340fd464ed010d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/1070724975d773b556d5094b20a58e611bda18bf1f6a21ec019e5a667d43d22d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:abc66c60-e9f3-4ab8-87cf-bc3fa9626b40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:170921a3-78cb-2179-6820-fa7e3f1a2a05",
  "kind": "lemma",
  "lexical_name": "mem_range_map_iff",
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
  "slug": "mem-range-map-iff--7533b82d981484ddc8223ff4",
  "source": {
    "blob": "822fabbe37c272395db2bac994340fd464ed010d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 220,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant1070724975d773b556d5094b20a58e611bda18bf1f6a21ec019e5a667d43d22d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7533b82d981484ddc8223ff492d7a9e68321feeb273c76ea63085aa1ed0b6df7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant1070724975d773b556d5094b20a58e611bda18bf1f6a21ec019e5a667d43d22d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:170921a3-78cb-2179-6820-fa7e3f1a2a05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_range_map_iff
    (f : X → Y) (s : StdSimplex R Y) :
    s ∈ Set.range (map f) ↔ ∀ (x : Y), x ∉ Set.range f → s.weights x = 0 := by
  refine ⟨?_, fun h ↦ ?_⟩
  · rintro ⟨s, rfl⟩
    intro x hx
    simpa using Finsupp.mapDomain_of_notMem_range s.weights x hx
  · have (i : s.weights.support) : ∃ (m : X), f m = i := by grind
    choose m hm using this
    refine ⟨{
      weights := ∑ (y : s.weights.support), .single (m y) (s.weights y)
      nonneg x := by
        simp only [Finsupp.coe_finsetSum, Finset.sum_apply,
          Finsupp.coe_zero, Pi.zero_apply]
        refine Finset.sum_nonneg fun y ↦ ?_
        obtain rfl | hy := eq_or_ne (m y) x <;> simp [*]
      total := by
        rw [Finsupp.sum_finsetSum _ _ _ (by simp) (by simp), ← s.total]
        conv_rhs => dsimp [Finsupp.sum]; rw [← Finset.sum_attach]
        congr
        ext
        simp }, ?_⟩
    ext y
    by_cases hy : y ∈ s.weights.support
    · simp only [Finset.univ_eq_attach, weights_map, Finsupp.mapDomain, Finsupp.sum_apply]
      rw [Finsupp.sum_finsetSum _ _ _ (by simp) (by simp),
        Finset.sum_eq_single ⟨y, hy⟩ ?_ (by simp)]
      · simp [hm]
      · intro z hz hz'
        simp only [hm, Finsupp.single_zero, Finsupp.coe_zero, Pi.zero_apply,
          Finsupp.sum_single_index]
        aesop
    · rw [Finsupp.notMem_support_iff] at hy
      rw [hy]
      refine Finsupp.mapDomain_of_not_mem_image_support ?_
      simp only [Finset.univ_eq_attach, Set.mem_image, SetLike.mem_coe, Finsupp.mem_support_iff,
        Finsupp.coe_finsetSum, Finset.sum_apply, ne_eq, not_exists, not_and]
      intro x hx rfl
      refine hx (Finset.sum_eq_zero (fun z hz ↦ Finsupp.single_eq_of_ne ?_))
      intro rfl
      simp only [hm, ← Finsupp.notMem_support_iff] at hy
      exact hy z.prop

section

variable {R' : Type*} [Ring R'] [PartialOrder R'] [IsStrictOrderedRing R']
/-- The bijection between the one dimensional standard simplex
and the interval `[0, 1]`. -/
@[simps -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant1070724975d773b556d5094b20a58e611bda18bf1f6a21ec019e5a667d43d22d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant1070724975d773b556d5094b20a58e611bda18bf1f6a21ec019e5a667d43d22d.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `822fabbe37c272395db2bac994340fd464ed010d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
