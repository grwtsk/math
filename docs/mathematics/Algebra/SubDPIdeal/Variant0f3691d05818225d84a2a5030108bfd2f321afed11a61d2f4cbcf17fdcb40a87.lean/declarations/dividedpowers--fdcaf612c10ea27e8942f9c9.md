# dividedPowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65a3cd1ca9dd6d6ffd0984155bdab1280a9afd3985c47846f78185ce86cc1445",
  "kind": "def",
  "lexical_name": "dividedPowers",
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
  "slug": "dividedpowers--fdcaf612c10ea27e8942f9c9",
  "source": {
    "blob": "7854e39795ffabb5082ab39d799549ae6c79ddb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 614,
    "line": 577,
    "path": "GRWTSK/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdcaf612c10ea27e8942f9c924bfbf1ab2bc1f38ef4b81693b31354417558ba3",
  "verification": {
    "reference": "docs/verification/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65a3cd1ca9dd6d6ffd0984155bdab1280a9afd3985c47846f78185ce86cc1445`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–614.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def dividedPowers : DividedPowers J where
  dpow := dpow hI f
  dpow_null n {x} hx' := by
    classical
    rw [dpow, Function.extend_def, dite_eq_right, Pi.zero_apply]
    rintro ⟨⟨a, ha⟩, rfl⟩
    exact (hIJ ▸ hx') (apply_coe_mem_map f I ⟨a, ha⟩)
  dpow_zero {x} hx := by
    obtain ⟨a, ha, rfl⟩ := (mem_map_iff_of_surjective f hf).mp (hIJ ▸ hx)
    rw [dpow_apply' hI hIf ha, hI.dpow_zero ha, map_one]
  dpow_one {x} hx := by
    obtain ⟨a, ha, hax⟩ := (mem_map_iff_of_surjective f hf).mp (hIJ ▸ hx)
    rw [← hax, dpow_apply' hI hIf ha, hI.dpow_one ha]
  dpow_mem {n x} hn hx := by
    rw [hIJ] at hx ⊢
    obtain ⟨a, ha, rfl⟩ := (mem_map_iff_of_surjective f hf).mp hx
    rw [dpow_apply' hI hIf ha]
    exact mem_map_of_mem _ (hI.dpow_mem hn ha)
  dpow_add hx hy := by
    obtain ⟨a, ha, rfl⟩ := (mem_map_iff_of_surjective f hf).mp (hIJ ▸ hx)
    obtain ⟨b, hb, rfl⟩ := (mem_map_iff_of_surjective f hf).mp (hIJ ▸ hy)
    rw [← map_add, dpow_apply' hI hIf (I.add_mem ha hb), hI.dpow_add ha hb, map_sum,
      Finset.sum_congr rfl]
    exact fun k _ ↦ by rw [dpow_apply' hI hIf ha, dpow_apply' hI hIf hb, ← _root_.map_mul]
  dpow_mul {n x y} hy := by
    obtain ⟨a, rfl⟩ := hf x
    obtain ⟨b, hb, rfl⟩ := (mem_map_iff_of_surjective f hf).mp (hIJ ▸ hy)
    rw [dpow_apply' hI hIf hb, ← _root_.map_mul, ← map_pow,
      dpow_apply' hI hIf (mul_mem_left I a hb), hI.dpow_mul hb, _root_.map_mul]
  mul_dpow hx := by
    obtain ⟨a, ha, rfl⟩ := (mem_map_iff_of_surjective f hf).mp (hIJ ▸ hx)
    simp only [dpow_apply' hI hIf ha]
    rw [← _root_.map_mul, hI.mul_dpow ha, _root_.map_mul, map_natCast]
  dpow_comp hn hx := by
    obtain ⟨a, ha, rfl⟩ := (mem_map_iff_of_surjective f hf).mp (hIJ ▸ hx)
    simp only [dpow_apply' hI hIf, ha, hI.dpow_mem hn ha]
    rw [hI.dpow_comp hn ha, _root_.map_mul, map_natCast]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7854e39795ffabb5082ab39d799549ae6c79ddb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
