# actualRawArithmeticSquaredMass_not_uniformly_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:278fca18-32b0-c0cb-2e47-2186b52a4979",
  "kind": "theorem",
  "lexical_name": "actualRawArithmeticSquaredMass_not_uniformly_bounded",
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
  "slug": "actualrawarithmeticsquaredmass-not-uniformly-bounded--9ab7a7335377fde4cb07ec79",
  "source": {
    "blob": "9a6e4ed86e5da0bf2e839e154fe7f05919cebcd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A2254aab86ed27cf229334e1f6bdb3dd20b0bcaf2855471d43e1d8cd0ad91ef7SourceActualArit/Variant1b968ca2f2705b200b7c4ce8c006eae4ced085b6d8cf4f183d19a7f32ac073e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ab7a7335377fde4cb07ec79319a314596ec80c708fdd8d73959db9b1188bcab",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A2254aab86ed27cf229334e1f6bdb3dd20b0bcaf2855471d43e1d8cd0ad91ef7SourceActualArit/Variant1b968ca2f2705b200b7c4ce8c006eae4ced085b6d8cf4f183d19a7f32ac073e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:278fca18-32b0-c0cb-2e47-2186b52a4979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRawArithmeticSquaredMass_not_uniformly_bounded :
    ¬ ∃ K : ℝ, ∀ A : ℝ, 1 ≤ A → actualRawArithmeticSquaredMass A ≤ K := by
  rintro ⟨K,hK⟩
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  obtain ⟨j,hj⟩ := exists_nat_gt (max 1 (|K|+1) / Real.log 2)
  have hx : max 1 (|K|+1) < (j : ℝ) * Real.log 2 :=
    (div_lt_iff₀ hl).mp hj
  have hx1 : 1 < (j : ℝ) * Real.log 2 := (le_max_left _ _).trans_lt hx
  have hj1 : 1 ≤ j := by
    by_contra h
    have : j = 0 := by omega
    subst j
    norm_num at hx1
  have hbound := actualRawArithmeticSquaredMass_primePowerDilation j hj1
  have hupper := hK ((j : ℝ) * Real.log 2) hx1.le
  have hxK : K+1 < (j : ℝ) * Real.log 2 :=
    (by linarith [le_abs_self K] : K+1 ≤ |K|+1).trans_lt
      ((le_max_right _ _).trans_lt hx)
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceActualArithmeticRawEnergy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A2254aab86ed27cf229334e1f6bdb3dd20b0bcaf2855471d43e1d8cd0ad91ef7SourceActualArit/Variant1b968ca2f2705b200b7c4ce8c006eae4ced085b6d8cf4f183d19a7f32ac073e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A2254aab86ed27cf229334e1f6bdb3dd20b0bcaf2855471d43e1d8cd0ad91ef7SourceActualArit/Variant1b968ca2f2705b200b7c4ce8c006eae4ced085b6d8cf4f183d19a7f32ac073e7.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a6e4ed86e5da0bf2e839e154fe7f05919cebcd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
