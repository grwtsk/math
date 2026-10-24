# theta_remainder_two_difference_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "265ac85d58c925c8a4202ea06de1c7f5e5dab49d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75e470e9-b40b-8b57-fede-713a5a7a3f73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd24bc89-bd66-0991-e4a0-b45f3cb8aa68",
  "kind": "theorem",
  "lexical_name": "theta_remainder_two_difference_abs_le",
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
  "slug": "theta-remainder-two-difference-abs-le--903480f5df20804f4a858cb0",
  "source": {
    "blob": "265ac85d58c925c8a4202ea06de1c7f5e5dab49d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:903480f5df20804f4a858cb04075f43593459c531566b8d65e56f5176be59b24",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd24bc89-bd66-0991-e4a0-b45f3cb8aa68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_remainder_two_difference_abs_le (A : ℝ) (q : ℕ)
    (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |ThetaRemainder.thetaRemainder A (2 * q) -
      ThetaRemainder.thetaRemainder A q / Real.sqrt 2| ≤
      scaleComparisonCoefficient A * Real.log 2 / (Real.sqrt 2 * Real.sqrt (q : ℝ)) := by
  have hs : 0 < Real.sqrt (2 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have heq : ThetaRemainder.thetaRemainder A (2*q) -
      ThetaRemainder.thetaRemainder A q / Real.sqrt 2 =
      (Real.sqrt 2 * ThetaRemainder.thetaRemainder A (2*q) -
        ThetaRemainder.thetaRemainder A q) / Real.sqrt 2 := by field_simp
  rw [heq, abs_div, abs_of_pos hs]
  have h := div_le_div_of_nonneg_right
    (theta_remainder_scale_comparison A q 2 hA hq (by norm_num)) hs.le
  norm_num only [Nat.cast_ofNat] at h
  simpa only [div_div, mul_comm] using h

end
end ScaleComparisonScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `265ac85d58c925c8a4202ea06de1c7f5e5dab49d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
