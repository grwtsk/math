# actual_zeta_euler_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf9ce1da-f8f0-6a24-d392-bd234e32f46b",
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
  "slug": "actual-zeta-euler-one--e717a9931eb298eae52cc475",
  "source": {
    "blob": "b4e16a93c00651ad5ae7e5eec12fda1ce83bec3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant348a0a331300636b81b67c75dd9d6f0fd2a88d1abe68cc239d9caa85a5911b0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e717a9931eb298eae52cc4752cec7ec0be03dbf6c32097d43358c36257b99425",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant348a0a331300636b81b67c75dd9d6f0fd2a88d1abe68cc239d9caa85a5911b0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf9ce1da-f8f0-6a24-d392-bd234e32f46b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–86.

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
      (∫ x in Ioi (1 : ℝ), ((⌊x⌋ : ℂ) + 1 / 2 - (x : ℂ)) *
        (x : ℂ) ^ (-(s + 1))) =
      -(∫ x in Ioi (1 : ℝ), (periodicB1 x : ℂ) *
        (x : ℂ) ^ (-(s + 1))) := by
    rw [← integral_neg]
    apply integral_congr_ae
    exact Filter.Eventually.of_forall fun x => by
      dsimp
      unfold periodicB1 Int.fract
      push_cast
      ring
  rw [← hζ, riemannZeta0_apply]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, Nat.cast_zero,
    Nat.cast_one, Complex.zero_cpow hs0, div_zero, zero_add,
    Complex.one_cpow, div_one]
  rw [hi]
  have hs' : 1 - s ≠ 0 := sub_ne_zero.mpr hs.symm
  field_simp [hs, hs']
  ring

end

end RH16ActualEulerOne
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant348a0a331300636b81b67c75dd9d6f0fd2a88d1abe68cc239d9caa85a5911b0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant348a0a331300636b81b67c75dd9d6f0fd2a88d1abe68cc239d9caa85a5911b0b.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4e16a93c00651ad5ae7e5eec12fda1ce83bec3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
