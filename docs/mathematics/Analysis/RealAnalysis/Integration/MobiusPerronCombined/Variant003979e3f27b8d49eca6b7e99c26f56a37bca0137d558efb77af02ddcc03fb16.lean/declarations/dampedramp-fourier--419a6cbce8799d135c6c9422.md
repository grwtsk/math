# dampedRamp_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f6712f8-6719-ff50-1c89-e89180da274b",
  "kind": "theorem",
  "lexical_name": "dampedRamp_fourier",
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
  "slug": "dampedramp-fourier--419a6cbce8799d135c6c9422",
  "source": {
    "blob": "eb9e8c79588b6d6b5878a391564e142feac31fb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 89,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:419a6cbce8799d135c6c94222a7c2e482685ae130c455a2fe2f39f13d856d3bc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f6712f8-6719-ff50-1c89-e89180da274b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedRamp_fourier (c : ℝ) (hc : 0 < c) (ξ : ℝ) :
    𝓕 (dampedRamp c) ξ = 1 / ((c : ℂ) + (2 * Real.pi * ξ : ℝ) * Complex.I) ^ 2 := by
  rw [Real.fourier_eq']
  simp only [smul_eq_mul, RCLike.inner_apply, conj_trivial]
  rw [← setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ))
    (fun t ht => by simp [dampedRamp, max_eq_right (le_of_not_gt (show ¬0 < t from ht))])]
  calc
    _ = ∫ t : ℝ in Ioi 0, (t : ℂ) *
        Complex.exp (-((c : ℂ) + (2 * Real.pi * ξ : ℝ) * Complex.I) * t) := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro t ht
      simp only [dampedRamp, max_eq_left (mem_Ioi.mp ht).le]
      rw [mul_left_comm, ← Complex.exp_add]
      congr 2
      push_cast
      ring
    _ = _ := integral_first_moment _ (by simpa using hc)

/-- The reciprocal-square vertical kernel is absolutely integrable for every c>0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb9e8c79588b6d6b5878a391564e142feac31fb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
