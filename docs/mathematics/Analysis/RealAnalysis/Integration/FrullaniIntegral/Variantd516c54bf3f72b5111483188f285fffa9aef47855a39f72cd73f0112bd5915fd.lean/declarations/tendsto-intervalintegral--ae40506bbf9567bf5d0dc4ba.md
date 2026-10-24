# tendsto_intervalIntegral

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
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92311d67-5886-d840-7c1f-3759338f69b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:144b6548-2ea6-73ff-30bc-29a39c149ea3",
  "kind": "theorem",
  "lexical_name": "tendsto_intervalIntegral",
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
  "slug": "tendsto-intervalintegral--ae40506bbf9567bf5d0dc4ba",
  "source": {
    "blob": "4468427c6f5cfe1029c51f5f9f7b111ae5b5c4c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 179,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae40506bbf9567bf5d0dc4bab759fa35ce5d3252ccd51335b69645e59967b2a2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:144b6548-2ea6-73ff-30bc-29a39c149ea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_intervalIntegral (hf : LocallyIntegrableOn f (Ioi 0)) (ha : 0 < a) (hb : 0 < b)
    (hL : Tendsto f (𝓝[>] 0) (𝓝 L)) (hR : Tendsto f atTop (𝓝 R)) :
    Tendsto (fun p : ℝ × ℝ ↦ ∫ x in p.1..p.2, x⁻¹ • (f (a * x) - f (b * x)))
      ((𝓝[>] 0) ×ˢ atTop) (𝓝 (log (b / a) • (L - R))) := by
  let u := fun x ↦ x⁻¹ • f x
  have hint {p q : ℝ} (hp : 0 < p) (hq : 0 < q) : IntervalIntegrable u volume p q :=
    intervalIntegrable_inv_smul hf hp hq
  have hsplit {ε r : ℝ} (hε : 0 < ε) (hr : 0 < r) :
      ∫ x in ε..r, x⁻¹ • (f (a * x) - f (b * x)) =
      (∫ x in (a * ε)..(b * ε), u x) - ∫ x in (a * r)..(b * r), u x := by
    calc ∫ x in ε..r, x⁻¹ • (f (a * x) - f (b * x))
      _ = (∫ x in ε..r, x⁻¹ • f (a * x)) - ∫ x in ε..r, x⁻¹ • f (b * x) := by
        simp_rw [smul_sub]
        exact integral_sub (intervalIntegrable_inv_smul_comp_mul hf hε hr ha)
          (intervalIntegrable_inv_smul_comp_mul hf hε hr hb)
      _ = (∫ y in a * ε..a * r, u y) - ∫ y in b * ε..b * r, u y := by
        rw [integral_comp_mul_inv_smul ha.ne', integral_comp_mul_inv_smul hb.ne']
      _ = _ := integral_interval_sub_interval_comm
                 (hint (mul_pos ha hε) (mul_pos ha hr))
                 (hint (mul_pos hb hε) (mul_pos hb hr))
                 (hint (mul_pos ha hε) (mul_pos hb hε))
  have h_ev : (fun p : ℝ × ℝ ↦ ∫ x in p.1..p.2, x⁻¹ • (f (a * x) - f (b * x))) =ᶠ[(𝓝[>] 0) ×ˢ atTop]
      fun p ↦ (∫ x in (a * p.1)..(b * p.1), u x) - ∫ x in (a * p.2)..(b * p.2), u x := by
    filter_upwards [prod_mem_prod (eventually_nhdsWithin_of_forall fun _ h ↦ h)
      (eventually_atTop.2 ⟨1, fun _ h ↦ lt_of_lt_of_le one_pos h⟩)] with ⟨ε, r⟩ ⟨hε, hr⟩
    exact hsplit hε hr
  rw [tendsto_congr' h_ev, show log (b / a) • (L - R) =
    log (b / a) • L - log (b / a) • R from smul_sub _ _ _]
  exact ((tendsto_integral_inv_smul_nhdsWithin hf ha hb hL).comp tendsto_fst).sub
    ((tendsto_integral_inv_smul_atTop hf ha hb hR).comp tendsto_snd)

/-- **Frullani's integral** for functions valued in a complete normed space.
If `f` is locally integrable on `(0, ∞)` with `f x → L` as `x → 0⁺` and `f x → R` as `x → +∞`,
`0 < a` and `0 < b`, and `x ↦ x⁻¹ • (f (a * x) - f (b * x))` is integrable on `(0, ∞)`, then
`∫ x in Ioi 0, x⁻¹ • (f (a * x) - f (b * x)) = log (b / a) • (L - R)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4468427c6f5cfe1029c51f5f9f7b111ae5b5c4c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
