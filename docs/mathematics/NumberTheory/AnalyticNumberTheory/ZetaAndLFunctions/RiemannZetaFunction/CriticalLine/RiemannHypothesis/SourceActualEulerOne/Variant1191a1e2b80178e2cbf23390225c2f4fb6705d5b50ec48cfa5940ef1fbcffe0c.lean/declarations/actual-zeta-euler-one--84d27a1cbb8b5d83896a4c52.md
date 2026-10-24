# actual_zeta_euler_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0858c8c0-5767-d614-eead-72985bfe428b",
  "kind": "theorem",
  "lexical_name": "actual_zeta_euler_one",
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
  "slug": "actual-zeta-euler-one--84d27a1cbb8b5d83896a4c52",
  "source": {
    "blob": "e838fde517ad3ebbfa0954f7005ebc7c4df0c88b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84d27a1cbb8b5d83896a4c524af8932d85faf4fbfa0e1f212f4937d95ed374ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0858c8c0-5767-d614-eead-72985bfe428b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_zeta_euler_one {s : ℂ} (hσ : 0 < s.re) (hs : s ≠ 1) :
    riemannZeta s = 1 / (s - 1) + 1 / 2 - s *
      ∫ x in Ioi (1 : ℝ), (periodicB1 x : ℂ) *
        (x : ℂ) ^ (-(s + 1)) := by
  have hs0 : s ≠ 0 := by
    intro he
    simp only [he, Complex.zero_re, lt_self_iff_false] at hσ
  have hζ := Zeta0EqZeta (N := 1) (by norm_num) hσ hs
  have hi :
      (∫ x in Ioi (1 : ℝ), ((⌊x⌋ : ℝ) + 1 / 2 - x : ℂ) *
        (x : ℂ) ^ (-(s + 1))) =
      -(∫ x in Ioi (1 : ℝ), (periodicB1 x : ℂ) *
        (x : ℂ) ^ (-(s + 1))) := by
    rw [← integral_neg]
    apply integral_congr_ae
    exact Filter.Eventually.of_forall fun x => by
      rw [sourceFloorWeight_eq_neg_periodicB1]
      simp
  rw [← hζ, riemannZeta0_apply]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, Nat.cast_zero,
    Nat.cast_one, Complex.zero_cpow hs0, div_zero, zero_add,
    Complex.one_cpow, div_one, one_mul]
  rw [hi]
  have hs' : 1 - s ≠ 0 := sub_ne_zero.mpr hs.symm
  field_simp
  ring

end

end RH16ActualEulerOne
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e838fde517ad3ebbfa0954f7005ebc7c4df0c88b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
