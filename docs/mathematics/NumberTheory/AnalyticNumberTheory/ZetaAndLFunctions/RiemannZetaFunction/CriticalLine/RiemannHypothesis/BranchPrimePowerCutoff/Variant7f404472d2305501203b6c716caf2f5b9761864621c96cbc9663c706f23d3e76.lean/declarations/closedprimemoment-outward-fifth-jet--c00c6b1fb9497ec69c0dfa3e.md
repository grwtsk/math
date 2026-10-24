# closedPrimeMoment_outward_fifth_jet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a14f3f1-bdb7-2976-c7bb-f817e2a2154c",
  "kind": "theorem",
  "lexical_name": "closedPrimeMoment_outward_fifth_jet",
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
  "slug": "closedprimemoment-outward-fifth-jet--c00c6b1fb9497ec69c0dfa3e",
  "source": {
    "blob": "4a1dc0eea28aba23e01af59d227a0209de44fa88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 185,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c00c6b1fb9497ec69c0dfa3e40cbc276ade12e5ae02614dc366cb6225fc8d858",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a14f3f1-bdb7-2976-c7bb-f817e2a2154c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeMoment_outward_fifth_jet {n : ℕ} (hn : IsPrimePow n) :
    iteratedDerivWithin 5 closedPrimeMoment
        (Icc (Real.log n / 2 / 2) (Real.log n / 2)) (Real.log n / 2) =
      iteratedDeriv 5 (priorMoment n) (Real.log n / 2) := by
  have hn2 := hn.two_le
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (by omega : 1 < n)
  have ha : 0 < Real.log (n : ℝ) / 2 := div_pos (Real.log_pos hn1) (by norm_num)
  have he := closedPrimeMoment_eventually_eq_partial hn2
  rw [partialMoment_eq_prior_add hn2] at he
  have hw := (he.filter_mono (nhdsWithin_le_nhds
    (s := Icc (Real.log n / 2 / 2) (Real.log n / 2)))).iteratedDerivWithin_eq
      (n := 5) he.eq_of_nhds
  have hm : Real.log (n : ℝ) / 2 ∈ Icc (Real.log n / 2 / 2) (Real.log n / 2) :=
    ⟨by linarith, le_rfl⟩
  have hu := uniqueDiffOn_Icc (by linarith : Real.log (n : ℝ) / 2 / 2 < Real.log n / 2)
  rw [hw, iteratedDerivWithin_fun_add hm hu
    (priorMoment_contDiffAt_five hn2).contDiffWithinAt
    (primePowerTerm_outward_contDiffWithin_five hn),
    iteratedDerivWithin_eq_iteratedDeriv hu (priorMoment_contDiffAt_five hn2) hm]
  have hz := singleLagTerm_outward_fifth_jet
    (ArithmeticFunction.vonMangoldt n / Real.sqrt n) ha
  rw [← primePowerTerm_eq_singleLagTerm n] at hz
  rw [hz, add_zero]

/-- Both full-source jets retain every earlier term, so their difference is the exact fifth jump. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a1dc0eea28aba23e01af59d227a0209de44fa88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
