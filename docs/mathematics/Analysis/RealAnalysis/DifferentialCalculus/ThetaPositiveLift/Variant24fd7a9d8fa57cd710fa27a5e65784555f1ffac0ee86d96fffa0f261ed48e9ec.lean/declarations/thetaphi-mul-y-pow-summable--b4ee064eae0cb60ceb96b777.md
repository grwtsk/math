# thetaPhi_mul_y_pow_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21cc4e69a422cde4ddae8bbbbefb242b40875f1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 423,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24fd7a9d8fa57cd710fa27a5e65784555f1ffac0ee86d96fffa0f261ed48e9ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef337029-58b2-7817-eb6e-5a25d8216c47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:016951de-bb2c-5c32-d519-2b0629011182",
  "kind": "theorem",
  "lexical_name": "thetaPhi_mul_y_pow_summable",
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
  "slug": "thetaphi-mul-y-pow-summable--b4ee064eae0cb60ceb96b777",
  "source": {
    "blob": "21cc4e69a422cde4ddae8bbbbefb242b40875f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 423,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant24fd7a9d8fa57cd710fa27a5e65784555f1ffac0ee86d96fffa0f261ed48e9ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4ee064eae0cb60ceb96b7779f90c5a2cc224942bb7931822eaf90d7278abbfe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant24fd7a9d8fa57cd710fa27a5e65784555f1ffac0ee86d96fffa0f261ed48e9ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:016951de-bb2c-5c32-d519-2b0629011182`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhi_mul_y_pow_summable (k : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    Summable (fun m => thetaPhiTerm m t * thetaModeY m t ^ k) := by
  let C : ℝ := (2 * Real.pi ^ 2 * Real.exp (9 * t)) * thetaModeA t ^ k
  have hs := (HurwitzKernelBounds.summable_f_nat (4 + 2 * k) 1
    (Real.exp_pos (4 * t))).mul_left C
  apply hs.of_norm_bounded
  intro m
  have hy : 0 ≤ thetaModeY m t := by unfold thetaModeY thetaModeA; positivity
  rw [Real.norm_of_nonneg (mul_nonneg (thetaPhiTerm_positive m ht).le (pow_nonneg hy k))]
  have hb : thetaPhiTerm m t ≤ (2 * Real.pi ^ 2 * Real.exp (9 * t)) *
      HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * t)) m := by
    rw [thetaPhiTerm_eq_gaussians]
    exact sub_le_self _ (by unfold HurwitzKernelBounds.f_nat; positivity)
  refine (mul_le_mul_of_nonneg_right hb (pow_nonneg hy k)).trans_eq ?_
  unfold C thetaModeY HurwitzKernelBounds.f_nat
  simp only [Nat.cast_add, Nat.cast_one, mul_pow, pow_add, pow_mul]
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant24fd7a9d8fa57cd710fa27a5e65784555f1ffac0ee86d96fffa0f261ed48e9ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant24fd7a9d8fa57cd710fa27a5e65784555f1ffac0ee86d96fffa0f261ed48e9ec.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21cc4e69a422cde4ddae8bbbbefb242b40875f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
