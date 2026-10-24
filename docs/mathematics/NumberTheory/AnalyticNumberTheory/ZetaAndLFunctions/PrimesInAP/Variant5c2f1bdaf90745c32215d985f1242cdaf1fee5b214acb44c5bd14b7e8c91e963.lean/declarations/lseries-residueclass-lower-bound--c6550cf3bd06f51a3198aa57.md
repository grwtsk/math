# LSeries_residueClass_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ddc4f06-0b95-8890-6004-bef944f7f00d",
  "kind": "lemma",
  "lexical_name": "LSeries_residueClass_lower_bound",
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
  "slug": "lseries-residueclass-lower-bound--c6550cf3bd06f51a3198aa57",
  "source": {
    "blob": "5e35a5a8dcca8824941af102c2b0fdabd6abecb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 400,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6550cf3bd06f51a3198aa578f4b6e7b13e805eeb6700eb76ac3905f264f4784",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ddc4f06-0b95-8890-6004-bef944f7f00d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries_residueClass_lower_bound (ha : IsUnit a) :
    ∃ C : ℝ, ∀ {x : ℝ} (_ : x ∈ Set.Ioc 1 2),
      (q.totient : ℝ)⁻¹ / (x - 1) - C ≤ ∑' n, residueClass a n / (n : ℝ) ^ x := by
  have H {x : ℝ} (hx : 1 < x) :
      ∑' n, residueClass a n / (n : ℝ) ^ x =
        (LFunctionResidueClassAux a x).re + (q.totient : ℝ)⁻¹ / (x - 1) := by
    refine ofReal_injective ?_
    simp only [ofReal_tsum, ofReal_div, ofReal_cpow (Nat.cast_nonneg _), ofReal_natCast,
      ofReal_add, ofReal_inv, ofReal_sub, ofReal_one]
    simp_rw [← LFunctionResidueClassAux_real ha hx,
      eqOn_LFunctionResidueClassAux ha <| Set.mem_setOf.mpr (ofReal_re x ▸ hx), sub_add_cancel,
      LSeries, term]
    refine tsum_congr fun n ↦ ?_
    split_ifs with hn
    · simp only [hn, residueClass_apply_zero, ofReal_zero, zero_div]
    · rfl
  have : ContinuousOn (fun x : ℝ ↦ (LFunctionResidueClassAux a x).re) (Set.Icc 1 2) :=
    continuous_re.continuousOn.comp (t := Set.univ) (continuousOn_LFunctionResidueClassAux a)
      (fun ⦃x⦄ a ↦ trivial) |>.comp continuous_ofReal.continuousOn fun x hx ↦ by
        simpa only [Set.mem_setOf_eq, ofReal_re] using hx.1
  obtain ⟨C, hC⟩ := bddBelow_def.mp <| IsCompact.bddBelow_image isCompact_Icc this
  replace hC {x : ℝ} (hx : x ∈ Set.Icc 1 2) : C ≤ (LFunctionResidueClassAux a x).re :=
    hC (LFunctionResidueClassAux a x).re <|
      Set.mem_image_of_mem (fun x : ℝ ↦ (LFunctionResidueClassAux a x).re) hx
  refine ⟨-C, fun {x} hx ↦ ?_⟩
  rw [H hx.1, add_comm, sub_neg_eq_add, add_le_add_iff_left]
  exact hC <| Set.mem_Icc_of_Ioc hx

open vonMangoldt Filter Topology in
/-- The function `n ↦ Λ n / n` restricted to primes in an invertible residue class
is not summable. This then implies that there must be infinitely many such primes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e35a5a8dcca8824941af102c2b0fdabd6abecb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
