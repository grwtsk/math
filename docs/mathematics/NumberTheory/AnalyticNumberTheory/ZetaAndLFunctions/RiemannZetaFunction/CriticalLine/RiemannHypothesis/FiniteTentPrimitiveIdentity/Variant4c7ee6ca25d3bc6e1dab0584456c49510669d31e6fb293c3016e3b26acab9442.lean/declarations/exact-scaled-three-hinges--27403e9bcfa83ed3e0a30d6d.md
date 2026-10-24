# exact_scaled_three_hinges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb01e302-d066-ec55-feab-fb805d496977",
  "kind": "theorem",
  "lexical_name": "exact_scaled_three_hinges",
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
  "slug": "exact-scaled-three-hinges--27403e9bcfa83ed3e0a30d6d",
  "source": {
    "blob": "f339f48b421bae4ecb39b67728c9039ea265bf8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentPrimitiveIdentity/Variant4c7ee6ca25d3bc6e1dab0584456c49510669d31e6fb293c3016e3b26acab9442.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27403e9bcfa83ed3e0a30d6df95abc808bad3a04d71adff43eb68517f5eeb946",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentPrimitiveIdentity/Variant4c7ee6ca25d3bc6e1dab0584456c49510669d31e6fb293c3016e3b26acab9442.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb01e302-d066-ec55-feab-fb805d496977`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_scaled_three_hinges {x : ℝ} (hx : 0 < x) {n : ℕ} (hn : 1 ≤ n) :
    2 * max (1 / Real.sqrt n - 1 / Real.sqrt (16 * x)) 0 -
      3 * max (1 / Real.sqrt n - 1 / Real.sqrt (4 * x)) 0 +
      max (1 / Real.sqrt n - 1 / Real.sqrt x) 0 =
        (1 / Real.sqrt x) * tentWeight (n / x) := by
  have hnpos : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hsnp := Real.sqrt_pos.mpr hnpos
  have hsxp := Real.sqrt_pos.mpr hx
  let b : ℝ := 1 / Real.sqrt x
  let r : ℝ := 1 / Real.sqrt (n / x)
  have hscale : 1 / Real.sqrt n = b * r := by
    dsimp [b, r]
    rw [Real.sqrt_div (Nat.cast_nonneg n) x]
    field_simp [hsnp.ne', hsxp.ne']
  have hmax (c : ℝ) : max (1 / Real.sqrt n - b * c) 0 = b * max (r - c) 0 := by
    have ht : 1 / Real.sqrt n - b * c = b * (r - c) := by rw [hscale]; ring
    rw [ht]
    have hb : 0 ≤ b := by dsimp [b]; positivity
    simpa only [mul_zero] using (mul_max_of_nonneg (r - c) 0 hb).symm
  have hmaxOne : max (1 / Real.sqrt n - b) 0 = b * max (r - 1) 0 := by
    simpa using hmax 1
  have h4 : Real.sqrt (4 * x) = 2 * Real.sqrt x := by
    rw [Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 4)]
    norm_num
  have h16 : Real.sqrt (16 * x) = 4 * Real.sqrt x := by
    rw [Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 16)]
    norm_num
  have hd4 : 1 / (2 * Real.sqrt x) = b * (1 / 2) := by dsimp [b]; ring
  have hd16 : 1 / (4 * Real.sqrt x) = b * (1 / 4) := by dsimp [b]; ring
  rw [h4, h16, hd4, hd16]
  change 2 * max (1 / Real.sqrt n - b * (1 / 4)) 0 -
    3 * max (1 / Real.sqrt n - b * (1 / 2)) 0 +
    max (1 / Real.sqrt n - b) 0 = b * tentWeight (n / x)
  rw [hmax (1 / 4), hmax (1 / 2), hmaxOne,
    ← exact_normalized_three_hinges (div_pos hnpos hx)]
  dsimp [r]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentPrimitiveIdentity/Variant4c7ee6ca25d3bc6e1dab0584456c49510669d31e6fb293c3016e3b26acab9442.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentPrimitiveIdentity/Variant4c7ee6ca25d3bc6e1dab0584456c49510669d31e6fb293c3016e3b26acab9442.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f339f48b421bae4ecb39b67728c9039ea265bf8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
