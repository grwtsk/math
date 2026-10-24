# literal_I_eq_actual_local_profile_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9395f71c-60ca-8e1c-648d-2bffdb92e260",
  "kind": "theorem",
  "lexical_name": "literal_I_eq_actual_local_profile_sum",
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
  "slug": "literal-i-eq-actual-local-profile-sum--8a6da7911dadfc18cb519491",
  "source": {
    "blob": "b06e3197a433d271a0abace9ec8d385c0268a640",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F39ba5921290f1103fbdSourcePeanoSignedShortJet/Variant3d11cf72c606e02a43b99123f2b7f8594852256495ec565c73e5377826ad0606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a6da7911dadfc18cb5194915b6d8046d279dde10bf5a7be7347480b55c6329b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F39ba5921290f1103fbdSourcePeanoSignedShortJet/Variant3d11cf72c606e02a43b99123f2b7f8594852256495ec565c73e5377826ad0606.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9395f71c-60ca-8e1c-648d-2bffdb92e260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_I_eq_actual_local_profile_sum (A : ℝ) (hA : 1 ≤ A) :
    literalOmegaIntegralSector A =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
        actualLocalPeanoProfile A (Real.log (d : ℝ)) := by
  rw [← full_short_continuous_sector_eq_literal_I A hA]
  apply Finset.sum_congr rfl
  intro d hd
  have hdp : 0 < (d : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
  have hdN : d ≤ sourceKernelCutoff A :=
    (Finset.mem_Icc.mp hd).2.trans (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hdX : (d : ℝ) ≤ Real.exp (2 * A) :=
    (by exact_mod_cast hdN : (d : ℝ) ≤ sourceKernelCutoff A).trans
      (Nat.floor_le (Real.exp_pos (2 * A)).le)
  rw [actual_upper_continuous_row_eq_local_profile hA hdp hdX]
  ring

/-- Every source cubic coefficient equals the independently specified four-kappa jet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F39ba5921290f1103fbdSourcePeanoSignedShortJet/Variant3d11cf72c606e02a43b99123f2b7f8594852256495ec565c73e5377826ad0606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F39ba5921290f1103fbdSourcePeanoSignedShortJet/Variant3d11cf72c606e02a43b99123f2b7f8594852256495ec565c73e5377826ad0606.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b06e3197a433d271a0abace9ec8d385c0268a640` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
