# actualDiscreteLogProfile_right_strip_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91496354-645b-954e-5e9b-c15c1cd81bdf",
  "kind": "theorem",
  "lexical_name": "actualDiscreteLogProfile_right_strip_zero",
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
  "slug": "actualdiscretelogprofile-right-strip-zero--1af594a67fc514a3491bf372",
  "source": {
    "blob": "ad654dc4e699b12ca3e9c0b1c765a0650c90e8c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualDiscreteLogRowVolterraNative01/Variant2f21faaf3d82ac748a97968c8f5309d8016994ac942bfeff7e888cc11fe7c10d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1af594a67fc514a3491bf3722b87bb63adb9aa9b44fae849c05c2d79718d0949",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualDiscreteLogRowVolterraNative01/Variant2f21faaf3d82ac748a97968c8f5309d8016994ac942bfeff7e888cc11fe7c10d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91496354-645b-954e-5e9b-c15c1cd81bdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDiscreteLogProfile_right_strip_zero (A s : ℝ) (hA : 1 ≤ A)
    (hs : s ≤ Real.log 2) : actualDiscreteLogProfile A (A-s) = 0 := by
  unfold actualDiscreteLogProfile
  apply Finset.sum_eq_zero
  intro k hk
  have hk1 : 1 ≤ k := (Finset.mem_Icc.mp hk).1
  by_cases hk2 : k = 1
  · subst k
    simp
  · have hkpos : 0 < k := by omega
    have hkge : 2 ≤ k := by omega
    have hl : Real.log 2 ≤ Real.log (k : ℝ) :=
      Real.log_le_log (by norm_num) (by exact_mod_cast hkge)
    have hx : A ≤ |A-s+Real.log (k : ℝ)| :=
      le_trans (by linarith) (le_abs_self _)
    rw [normalizedTest_zero_of_le_abs A _ (by linarith) hx, mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualDiscreteLogRowVolterraNative01/Variant2f21faaf3d82ac748a97968c8f5309d8016994ac942bfeff7e888cc11fe7c10d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualDiscreteLogRowVolterraNative01/Variant2f21faaf3d82ac748a97968c8f5309d8016994ac942bfeff7e888cc11fe7c10d.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad654dc4e699b12ca3e9c0b1c765a0650c90e8c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
