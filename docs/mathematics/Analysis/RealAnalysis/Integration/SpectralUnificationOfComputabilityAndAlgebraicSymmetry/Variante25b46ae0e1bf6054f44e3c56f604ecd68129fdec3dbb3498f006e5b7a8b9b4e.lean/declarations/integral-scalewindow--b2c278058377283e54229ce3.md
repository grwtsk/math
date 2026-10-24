# integral_scaleWindow

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
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e25b46ae0e1bf6054f44e3c56f604ecd68129fdec3dbb3498f006e5b7a8b9b4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11937474-8b72-b2be-6348-def0dbbd8aa4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75d69ea6-c62b-82a9-580a-7ea263266a1e",
  "kind": "theorem",
  "lexical_name": "integral_scaleWindow",
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
  "slug": "integral-scalewindow--b2c278058377283e54229ce3",
  "source": {
    "blob": "b298a4d4ab6e4448a9fe7f23231c6a3b626cdaea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante25b46ae0e1bf6054f44e3c56f604ecd68129fdec3dbb3498f006e5b7a8b9b4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2c278058377283e54229ce3181821f93e35ff71010509195ef4ef988bb0a66c",
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

Occurrence: `result:75d69ea6-c62b-82a9-580a-7ea263266a1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_scaleWindow (T : ℝ) (m d k : ℕ) (hT : 1 ≤ T)
    (hn : 1 ≤ m * d * k) :
    (∫ A in (1:ℝ)..T, scaleWindow A (Real.log ((m*d*k : ℕ) : ℝ)) m d) =
      omegaWeight T m d k := by
  let t := Real.log ((m*d*k : ℕ) : ℝ)
  have ht : 0 ≤ t := Real.log_nonneg (by exact_mod_cast hn)
  rw [intervalIntegral.integral_of_le hT,
    integral_congr_ae (scaleWindow_ae T t m d ht), setIntegral_indicator measurableSet_Ioc]
  have hsub : Ioc (lowerScale t) (upperScale T m d) ⊆ Ioc 1 T := by
    intro A hA
    exact ⟨(le_max_left _ _).trans_lt hA.1, hA.2.trans (min_le_left _ _)⟩
  rw [inter_eq_right.mpr hsub]
  unfold omegaWeight
  change (∫ A in Ioc (lowerScale t) (upperScale T m d), scalePolynomial A t) =
    if lowerScale t < upperScale T m d then
      scalePrimitive (upperScale T m d) t - scalePrimitive (lowerScale t) t else 0
  split_ifs with h
  · rw [← intervalIntegral.integral_of_le h.le]
    apply intervalIntegral.integral_eq_sub_of_hasDerivAt (f := fun A ↦ scalePrimitive A t)
    · intro A _
      exact scalePrimitive_hasDerivAt A t
    · exact (by unfold scalePolynomial; fun_prop :
        Continuous (fun A ↦ scalePolynomial A t)).intervalIntegrable _ _
  · rw [Ioc_eq_empty_of_le (le_of_not_gt h), setIntegral_empty]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante25b46ae0e1bf6054f44e3c56f604ecd68129fdec3dbb3498f006e5b7a8b9b4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante25b46ae0e1bf6054f44e3c56f604ecd68129fdec3dbb3498f006e5b7a8b9b4e.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b298a4d4ab6e4448a9fe7f23231c6a3b626cdaea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
