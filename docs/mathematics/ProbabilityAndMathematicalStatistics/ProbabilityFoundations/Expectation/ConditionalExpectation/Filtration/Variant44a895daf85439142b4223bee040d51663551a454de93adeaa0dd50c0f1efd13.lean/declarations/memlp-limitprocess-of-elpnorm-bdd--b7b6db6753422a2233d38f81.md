# memLp_limitProcess_of_eLpNorm_bdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29cced2c-8fc5-b462-d6b6-fe62c27551b6",
  "kind": "theorem",
  "lexical_name": "memLp_limitProcess_of_eLpNorm_bdd",
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
  "slug": "memlp-limitprocess-of-elpnorm-bdd--b7b6db6753422a2233d38f81",
  "source": {
    "blob": "9f45749d3fc89b982da163f5915bbbdf22be1ee9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 333,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant44a895daf85439142b4223bee040d51663551a454de93adeaa0dd50c0f1efd13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7b6db6753422a2233d38f81f312f41d873e2a54cd80131b14faf8591737a41c",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant44a895daf85439142b4223bee040d51663551a454de93adeaa0dd50c0f1efd13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29cced2c-8fc5-b462-d6b6-fe62c27551b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem memLp_limitProcess_of_eLpNorm_bdd {R : ℝ≥0} {p : ℝ≥0∞} {F : Type*} [NormedAddCommGroup F]
    {ℱ : Filtration ℕ m} {f : ℕ → Ω → F} (hfm : ∀ n, AEStronglyMeasurable (f n) μ)
    (hbdd : ∀ n, eLpNorm (f n) p μ ≤ R) : MemLp (limitProcess f ℱ μ) p μ := by
  rw [limitProcess]
  split_ifs with h
  · refine ⟨StronglyMeasurable.aestronglyMeasurable
      ((Classical.choose_spec h).1.mono (sSup_le fun m ⟨n, hn⟩ => hn ▸ ℱ.le _)),
      lt_of_le_of_lt (Lp.eLpNorm_lim_le_liminf_eLpNorm hfm _ (Classical.choose_spec h).2)
        (lt_of_le_of_lt ?_ (ENNReal.coe_lt_top : ↑R < ∞))⟩
    simp_rw [liminf_eq, eventually_atTop]
    exact sSup_le fun b ⟨a, ha⟩ => (ha a le_rfl).trans (hbdd _)
  · exact MemLp.zero

@[deprecated (since := "2025-02-21")]
alias memℒp_limitProcess_of_eLpNorm_bdd := memLp_limitProcess_of_eLpNorm_bdd

end Limit

section piLE

/-! ### Filtration of the first events -/

open MeasurableSpace Preorder

variable {X : ι → Type*} [∀ i, MeasurableSpace (X i)]

/-- The canonical filtration on the product space `Π i, X i`, where `piLE i`
consists of measurable sets depending only on coordinates `≤ i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant44a895daf85439142b4223bee040d51663551a454de93adeaa0dd50c0f1efd13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant44a895daf85439142b4223bee040d51663551a454de93adeaa0dd50c0f1efd13.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f45749d3fc89b982da163f5915bbbdf22be1ee9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
