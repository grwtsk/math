# actual_residual_eq_full_short_main_add_complement_add_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:422e6a76-4152-7aaa-f099-6c3e41b97117",
  "kind": "theorem",
  "lexical_name": "actual_residual_eq_full_short_main_add_complement_add_error",
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
  "slug": "actual-residual-eq-full-short-main-add-complement-add-error--18e0890b141f97aed3b58daf",
  "source": {
    "blob": "117f2b48d2a8e0270ee9588f70c190ba6a661ef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 233,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Source/Varianta6ca1bb4721b0407600c1e37c131647395b86c6a5d9bc10db1e291711e3ae75e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18e0890b141f97aed3b58dafb739792f7c434f6d25dfadeed5b46f9b2c9ea60d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Source/Varianta6ca1bb4721b0407600c1e37c131647395b86c6a5d9bc10db1e291711e3ae75e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:422e6a76-4152-7aaa-f099-6c3e41b97117`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_residual_eq_full_short_main_add_complement_add_error
    (A : ℝ) (hA : 91 ≤ A) :
    mertensResidual A =
      ((∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        wholeCubicMainTerm A (d : ℝ)) + literalOmegaComplementarySector A) +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        wholeCubicErrorRow A (d : ℝ)) := by
  rw [actual_mertensResidual_eq_short_add_literal_L A (by linarith)]
  have hs : (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) (n : ℝ))) =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * wholeCubicMainTerm A (d : ℝ)) +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * wholeCubicErrorRow A (d : ℝ)) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro d hd
    have hd1 : 1 ≤ (d : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hd).1
    rw [actual_samples_eq_full_main_add_error hA hd1]
    ring
  rw [hs]
  ring

/-- Only the separately supplied joint signed block is left to control arithmetically. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Source/Varianta6ca1bb4721b0407600c1e37c131647395b86c6a5d9bc10db1e291711e3ae75e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Source/Varianta6ca1bb4721b0407600c1e37c131647395b86c6a5d9bc10db1e291711e3ae75e.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117f2b48d2a8e0270ee9588f70c190ba6a661ef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
