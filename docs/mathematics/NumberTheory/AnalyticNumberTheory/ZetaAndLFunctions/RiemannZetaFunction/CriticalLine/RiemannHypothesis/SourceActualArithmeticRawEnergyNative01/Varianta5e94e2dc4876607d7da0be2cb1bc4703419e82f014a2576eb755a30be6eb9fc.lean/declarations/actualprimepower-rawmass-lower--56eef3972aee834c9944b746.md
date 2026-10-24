# actualPrimePower_rawMass_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94419c4c-0f8f-b5fc-8402-9af233d8044d",
  "kind": "theorem",
  "lexical_name": "actualPrimePower_rawMass_lower",
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
  "slug": "actualprimepower-rawmass-lower--56eef3972aee834c9944b746",
  "source": {
    "blob": "624e928d055b45e9745d65fd44647da26edc4a56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArithmeticRawEnergyNative01/Varianta5e94e2dc4876607d7da0be2cb1bc4703419e82f014a2576eb755a30be6eb9fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56eef3972aee834c9944b7461489d70f67663d5a78720efeb5ef4c5066ac980d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArithmeticRawEnergyNative01/Varianta5e94e2dc4876607d7da0be2cb1bc4703419e82f014a2576eb755a30be6eb9fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94419c4c-0f8f-b5fc-8402-9af233d8044d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPrimePower_rawMass_lower (A : ℝ) (j : ℕ) (hj : 1 ≤ j)
    (hclosed : (j : ℝ)*Real.log 2 ≤ 2*A) :
    1 + ((j : ℝ)*Real.log 2)^2 ≤ actualRawArithmeticSquaredMass A := by
  have hn : 2 ≤ 2^j := by
    have h := pow_le_pow_right₀ (by norm_num : (1 : ℕ) ≤ 2) hj
    simpa using h
  have hpos : (0 : ℝ) < ((2^j : ℕ) : ℝ) := by positivity
  have hlog : Real.log ((2^j : ℕ) : ℝ) = (j : ℝ)*Real.log 2 := by
    rw [Nat.cast_pow, Real.log_pow]
    norm_num
  have hi : 2^j ∈ primePowerInventory (2*A) := by
    apply Finset.mem_Icc.mpr
    refine ⟨hn,(Nat.le_floor_iff (Real.exp_pos _).le).mpr ?_⟩
    exact (Real.log_le_iff_le_exp hpos).mp (hlog.le.trans hclosed)
  simpa only [hlog] using actualRawArithmeticSquaredMass_ge_unit_log A (2^j) hi

/-- These genuine increasing dilations already rule out a unit coefficient norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArithmeticRawEnergyNative01/Varianta5e94e2dc4876607d7da0be2cb1bc4703419e82f014a2576eb755a30be6eb9fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArithmeticRawEnergyNative01/Varianta5e94e2dc4876607d7da0be2cb1bc4703419e82f014a2576eb755a30be6eb9fc.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624e928d055b45e9745d65fd44647da26edc4a56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
