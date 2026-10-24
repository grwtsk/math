# gaussianDyadicProfile_values_summed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57d8a7b5-f2a1-7b2b-f5a2-5281b4e8245e",
  "kind": "theorem",
  "lexical_name": "gaussianDyadicProfile_values_summed",
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
  "slug": "gaussiandyadicprofile-values-summed--64ba64c123a36473f7619e74",
  "source": {
    "blob": "12f9b335718e93935c7a57dc51f63ba3df026d12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 85,
    "path": "GRWTSK/Analysis/MellinTransform/GaussianDyadicSummation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64ba64c123a36473f7619e74bb26313e429f381bc74c6e4272dedb32d249fa5c",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianDyadicSummation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57d8a7b5-f2a1-7b2b-f5a2-5281b4e8245e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussianDyadicProfile_values_summed (s : ℝ) (hs : 0<s) :
    ∃ C : ℝ, 0<C ∧ ∀ Z : ℝ, 0<Z → ∀ y : ℝ,
      Summable (fun j : ℕ => ((2:ℝ)^j)^s*‖gaussianDyadicProfile Z j y‖) ∧
      (∑' j : ℕ, ((2:ℝ)^j)^s*‖gaussianDyadicProfile Z j y‖) ≤ C*Z^s := by
  obtain ⟨C,hC,h⟩ := gaussianDyadicSchwartz_summed s hs ({(0,0)} : Finset (ℕ×ℕ))
  refine ⟨C,hC,?_⟩
  intro Z hZ y
  obtain ⟨hsm,hbd⟩ := h Z hZ
  simp only [Finset.sup_singleton] at hsm hbd
  have hb (j : ℕ) : ((2:ℝ)^j)^s*‖gaussianDyadicProfile Z j y‖ ≤
      ((2:ℝ)^j)^s*SchwartzMap.seminorm ℝ 0 0 (gaussianDyadicSchwartz Z hZ j) := by
    apply mul_le_mul_of_nonneg_left _ (by positivity)
    have hh := SchwartzMap.le_seminorm' ℝ 0 0 (gaussianDyadicSchwartz Z hZ j) y
    simpa only [pow_zero, one_mul, iteratedDeriv_zero, gaussianDyadicSchwartz_apply] using hh
  have hv := hsm.of_nonneg_of_le (fun _ => by positivity) hb
  exact ⟨hv,(hv.tsum_le_tsum hb hsm).trans hbd⟩

end
end GRWTSK.Analysis.MellinTransform.GaussianDyadicSummation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianDyadicSummation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/GaussianDyadicSummation.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12f9b335718e93935c7a57dc51f63ba3df026d12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
