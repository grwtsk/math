# actualMuntz_memLp_global

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9a0a0ce-eb7b-de3f-6fa4-c12ac3ef54ef",
  "kind": "theorem",
  "lexical_name": "actualMuntz_memLp_global",
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
  "slug": "actualmuntz-memlp-global--dcb2a5b4fe3a641ce18324fc",
  "source": {
    "blob": "6ed0fdc3b39e91d3f0e9a60cd4d66c462fe079c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 197,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt09/Variantbae7cfd5ea77e927c865f26ea25eb50cec1e3305c3c4e434b2ab9d00af8e52d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcb2a5b4fe3a641ce18324fc7c78c1e2f20d75f4a60281d2520119483a7d255a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt09/Variantbae7cfd5ea77e927c865f26ea25eb50cec1e3305c3c4e434b2ab9d00af8e52d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9a0a0ce-eb7b-de3f-6fa4-c12ac3ef54ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMuntz_memLp_global {A : ℝ} (hA : 1 ≤ A) :
    MemLp (actualMuntz A) 2 volume := by
  have hf : MemLp (actualMuntz A) 2 (volume.restrict (Set.Icc 0 (Real.exp A))) :=
    MemLp.of_bound ((actualMuntz_measurable hA).aestronglyMeasurable.restrict)
      (derivativeBudget A) (Eventually.of_forall fun x => by
        simpa only [Real.norm_eq_abs] using actualMuntz_abs_le_budget hA x)
  have he : (Set.Icc 0 (Real.exp A)).indicator (actualMuntz A) = actualMuntz A := by
    funext x
    by_cases hx : x ∈ Set.Icc 0 (Real.exp A)
    · simp [hx]
    · have hz : actualMuntz A x = 0 := by
        apply actualMuntz_zero_outside hA
        simp only [Set.mem_Icc,not_and_or,not_le] at hx
        rcases hx with hx | hx
        · exact Or.inl hx.le
        · exact Or.inr hx.le
      simp [hx,hz]
  rw [←he]
  exact (memLp_indicator_iff_restrict measurableSet_Icc).mpr hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt09/Variantbae7cfd5ea77e927c865f26ea25eb50cec1e3305c3c4e434b2ab9d00af8e52d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt09/Variantbae7cfd5ea77e927c865f26ea25eb50cec1e3305c3c4e434b2ab9d00af8e52d6.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ed0fdc3b39e91d3f0e9a60cd4d66c462fe079c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
