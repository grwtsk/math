# unitDensityTail_integral_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ebfa36da6aa2fb44468ce9373c8e4c79db31cd29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8897a074dff5d55cf6a12c553eaaae1fdb12ac3f1132563ddcee70af588cd3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54d770b9-d48e-31fc-b3c4-e96164c724d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64bfeb62-8cf0-932b-baf9-64b49cc1c643",
  "kind": "theorem",
  "lexical_name": "unitDensityTail_integral_abs_le",
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
  "slug": "unitdensitytail-integral-abs-le--d2f1134dc7f55c4472260222",
  "source": {
    "blob": "ebfa36da6aa2fb44468ce9373c8e4c79db31cd29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSyntheticCriticalObstruction/Varianta8897a074dff5d55cf6a12c553eaaae1fdb12ac3f1132563ddcee70af588cd3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2f1134dc7f55c44722602223ea842fa0469d3cff06a230b61ab83fb4cf16b3e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSyntheticCriticalObstruction/Varianta8897a074dff5d55cf6a12c553eaaae1fdb12ac3f1132563ddcee70af588cd3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64bfeb62-8cf0-932b-baf9-64b49cc1c643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitDensityTail_integral_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |∫ u in 0..1, criticalDensity u*pairedTailTest A u| ≤
      1+Real.exp (1/2 : ℝ) := by
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := (0 : ℝ)) (b := 1) (C := 1+Real.exp (1/2 : ℝ))
    (f := fun u : ℝ => criticalDensity u*pairedTailTest A u) (fun u hu => by
      have hu' : u ∈ Icc (0 : ℝ) 1 := by
        simp only [uIoc_of_le (by norm_num : (0 : ℝ) ≤ 1), mem_Ioc] at hu
        exact ⟨hu.1.le, hu.2⟩
      have hr := criticalDensity_mem_Icc u hu'.1
      have hd := actualUnitWindowTail_abs_le hA hu'
      have hr0 : 0 ≤ criticalDensity u := by linarith [hr.1]
      calc
        _ = |criticalDensity u|*|pairedTailTest A u| := by
          rw [Real.norm_eq_abs, abs_mul]
        _ = criticalDensity u*|pairedTailTest A u| := by rw [abs_of_nonneg hr0]
        _ ≤ 1*(1+Real.exp (1/2 : ℝ)) :=
          mul_le_mul hr.2 hd (abs_nonneg _) (by norm_num)
        _ = _ := by ring)
  simpa only [Real.norm_eq_abs, sub_zero, abs_one, mul_one] using hb

/-- The removed unit-interval density mass supplies a nonzero fixed coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSyntheticCriticalObstruction/Varianta8897a074dff5d55cf6a12c553eaaae1fdb12ac3f1132563ddcee70af588cd3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSyntheticCriticalObstruction/Varianta8897a074dff5d55cf6a12c553eaaae1fdb12ac3f1132563ddcee70af588cd3c.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebfa36da6aa2fb44468ce9373c8e4c79db31cd29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
