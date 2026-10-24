# integratedTypeTwo_eq_rectangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b298a4d4ab6e4448a9fe7f23231c6a3b626cdaea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e25b46ae0e1bf6054f44e3c56f604ecd68129fdec3dbb3498f006e5b7a8b9b4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9275602-9874-386d-b992-b1041b4dff6e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cf3923d-9ca0-d970-d3f5-26dde3bab5d7",
  "kind": "theorem",
  "lexical_name": "integratedTypeTwo_eq_rectangle",
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
  "slug": "integratedtypetwo-eq-rectangle--85e0d070e7316a577249cdab",
  "source": {
    "blob": "b298a4d4ab6e4448a9fe7f23231c6a3b626cdaea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante25b46ae0e1bf6054f44e3c56f604ecd68129fdec3dbb3498f006e5b7a8b9b4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85e0d070e7316a577249cdabee465fe486d91ba6ff96669b76444431891a874c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante25b46ae0e1bf6054f44e3c56f604ecd68129fdec3dbb3498f006e5b7a8b9b4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cf3923d-9ca0-d970-d3f5-26dde3bab5d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integratedTypeTwo_eq_rectangle (T : ℝ) (hT : 1 ≤ T) :
    integratedTypeTwo T =
      ∑ m ∈ Finset.Icc 1 (sourceKernelCutoff T),
      ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff T),
      ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff T),
        (vonMangoldt m * (moebius d : ℝ) / Real.sqrt ((m*d*k : ℕ) : ℝ)) *
          omegaWeight T m d k := by
  have hi (m d k : ℕ) (hm : 1 ≤ m) (hd : 1 ≤ d) (hk : 1 ≤ k) :
      IntervalIntegrable (fun A ↦
        (vonMangoldt m * (moebius d : ℝ) / Real.sqrt ((m*d*k : ℕ) : ℝ)) *
          scaleWindow A (Real.log ((m*d*k : ℕ) : ℝ)) m d) volume 1 T :=
    (scaleWindow_intervalIntegrable T _ m d hT
      (Real.log_nonneg (by exact_mod_cast (Nat.mul_pos (Nat.mul_pos hm hd) hk)))).const_mul _
  unfold integratedTypeTwo
  have he := intervalIntegral.integral_congr (μ := volume) (a := (1:ℝ)) (b := T) (fun A hA ↦
    weighted_typeTwo_eq A T (by rw [uIcc_of_le hT] at hA; exact hA.1)
      (by rw [uIcc_of_le hT] at hA; exact hA.2))
  rw [he, intervalIntegral.integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro m hm
    rw [intervalIntegral.integral_finsetSum]
    · apply Finset.sum_congr rfl
      intro d hd
      rw [intervalIntegral.integral_finsetSum]
      · apply Finset.sum_congr rfl
        intro k hk
        rw [intervalIntegral.integral_const_mul, integral_scaleWindow T m d k hT
          (Nat.mul_pos (Nat.mul_pos (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hd).1)
            (Finset.mem_Icc.mp hk).1)]
      · intro k hk
        exact hi m d k (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hd).1 (Finset.mem_Icc.mp hk).1
    · intro d hd
      exact sum_integrable (fun k hk ↦ hi m d k
        (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hd).1 (Finset.mem_Icc.mp hk).1)
  · intro m hm
    exact sum_integrable (fun d hd ↦ sum_integrable (fun k hk ↦
      hi m d k (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hd).1 (Finset.mem_Icc.mp hk).1))

/-- Products outside the closed upper inventory have an empty scale window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante25b46ae0e1bf6054f44e3c56f604ecd68129fdec3dbb3498f006e5b7a8b9b4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante25b46ae0e1bf6054f44e3c56f604ecd68129fdec3dbb3498f006e5b7a8b9b4e.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b298a4d4ab6e4448a9fe7f23231c6a3b626cdaea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
