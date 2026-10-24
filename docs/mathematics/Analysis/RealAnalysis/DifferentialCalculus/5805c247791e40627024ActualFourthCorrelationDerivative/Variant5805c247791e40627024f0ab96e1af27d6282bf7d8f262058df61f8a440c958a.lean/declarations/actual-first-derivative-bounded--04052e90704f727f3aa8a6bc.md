# actual_first_derivative_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45277d23d54d7018eff4b47dabb52a01200b9305",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a11f6aa-f72f-4846-7d73-659edbc8450e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a1e35dc-366a-acc5-c345-8f979d8c5df6",
  "kind": "theorem",
  "lexical_name": "actual_first_derivative_bounded",
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
  "slug": "actual-first-derivative-bounded--04052e90704f727f3aa8a6bc",
  "source": {
    "blob": "45277d23d54d7018eff4b47dabb52a01200b9305",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/5805c247791e40627024ActualFourthCorrelationDerivative/Variant5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04052e90704f727f3aa8a6bcbda4772407596f1bb7d7fd79106c6e3e78513e30",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/5805c247791e40627024ActualFourthCorrelationDerivative/Variant5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a1e35dc-366a-acc5-c345-8f979d8c5df6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_first_derivative_bounded (A : ℝ) (hA : 0 < A) :
    ∃ M : ℝ, 0 ≤ M ∧ ∀ x : ℝ,
      |deriv (normalizedTest explicitSecondDerivative A) x| ≤ M := by
  have hc : Continuous (normalizedInteriorDerivative A) := by
    unfold normalizedInteriorDerivative thirdInterior firstInterior
    fun_prop
  obtain ⟨M, hM⟩ := (isCompact_Icc : IsCompact (Icc (-A) A)).exists_bound_of_continuousOn
    hc.continuousOn
  refine ⟨max 0 M, le_max_left _ _, ?_⟩
  intro x
  rw [actual_first_derivative_eq_indicator A hA]
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem hx]
    have hb : |normalizedInteriorDerivative A x| ≤ M := by
      simpa only [Real.norm_eq_abs] using hM x hx
    exact hb.trans (le_max_right _ _)
  · rw [indicator_of_notMem hx, abs_zero]
    exact le_max_left _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/5805c247791e40627024ActualFourthCorrelationDerivative/Variant5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/5805c247791e40627024ActualFourthCorrelationDerivative/Variant5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45277d23d54d7018eff4b47dabb52a01200b9305` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
