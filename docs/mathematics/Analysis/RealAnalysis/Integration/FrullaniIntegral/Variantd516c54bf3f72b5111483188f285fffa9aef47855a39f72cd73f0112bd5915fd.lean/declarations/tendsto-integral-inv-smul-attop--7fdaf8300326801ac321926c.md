# tendsto_integral_inv_smul_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4468427c6f5cfe1029c51f5f9f7b111ae5b5c4c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2022811-5daf-c7ec-d5cd-846a7bfdcbf1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ddd5f516-8bfc-a069-763f-7225d6b06a1d",
  "kind": "lemma",
  "lexical_name": "tendsto_integral_inv_smul_atTop",
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
  "slug": "tendsto-integral-inv-smul-attop--7fdaf8300326801ac321926c",
  "source": {
    "blob": "4468427c6f5cfe1029c51f5f9f7b111ae5b5c4c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 150,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fdaf8300326801ac321926c82c3afcc90386a24003a720880f2ab255fcbfbfe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddd5f516-8bfc-a069-763f-7225d6b06a1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_integral_inv_smul_atTop (hf : LocallyIntegrableOn f (Ioi 0)) (ha : 0 < a) (hb : 0 < b)
    (hR : Tendsto f atTop (𝓝 R)) :
    Tendsto (fun r ↦ ∫ x in (a * r)..(b * r), x⁻¹ • f x) atTop (𝓝 (log (b / a) • R)) := by
  apply tendsto_integral_inv_smul_of_tendsto_uniform hf ha hb
    (eventually_atTop.2 ⟨1, fun r hr ↦ zero_lt_one.trans_le hr⟩)
  intro δ hδ
  have hev : ∀ᶠ x in atTop, dist (f x) R < δ :=
    hR.eventually (ball_mem_nhds R hδ)
  rw [Filter.eventually_atTop] at hev
  obtain ⟨N, hN⟩ := hev
  have hm : 0 < min a b := lt_min ha hb
  filter_upwards [eventually_atTop.2 ⟨max 1 (N / min a b), fun r hr ↦ hr⟩] with t ht
  intro x hx
  have ht_pos : 0 < t := lt_of_lt_of_le one_pos ((le_max_left 1 _).trans ht)
  have hNx : N ≤ x :=
    calc N
      _ = min a b * (N / min a b) := by field_simp
      _ ≤ min a b * t :=
        mul_le_mul_of_nonneg_left ((le_max_right _ _).trans ht) hm.le
      _ = min (a * t) (b * t) := by rw [min_mul_of_nonneg _ _ ht_pos.le]
      _ ≤ x := (uIoc_subset_uIcc hx).1
  have hdist := hN x hNx
  rw [dist_eq_norm] at hdist
  exact le_of_lt hdist

/-- **Frullani's integral**, limit form, for functions valued in a complete normed space.
If `f` is locally integrable on `(0, ∞)` with `f x → L` as `x → 0⁺` and `f x → R` as `x → +∞`,
and `0 < a` and `0 < b`, then `∫ x in ε..r, x⁻¹ • (f (a * x) - f (b * x)) → log (b / a) • (L - R)`
as `ε → 0⁺` and `r → +∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4468427c6f5cfe1029c51f5f9f7b111ae5b5c4c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
