# card_divisors_cast_le_six_mul_sqrt_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d49399e1-eab8-ab1d-0e37-2f5ded67505b",
  "kind": "theorem",
  "lexical_name": "card_divisors_cast_le_six_mul_sqrt_scale",
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
  "slug": "card-divisors-cast-le-six-mul-sqrt-scale--076a06d6f05683ba9f5007e1",
  "source": {
    "blob": "0b9e1a9707dab2219bc11f5be76c01229dd6574f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 96,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:076a06d6f05683ba9f5007e12c0c4afefed2bf4f24a133f193b8fe01d4a63175",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d49399e1-eab8-ab1d-0e37-2f5ded67505b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_divisors_cast_le_six_mul_sqrt_scale
    {X n : ℕ}
    (hX : 1 ≤ X)
    (hn : n ∈ octaveIndexSet X) :
    (n.divisors.card : ℝ) ≤
      6 * Real.sqrt (X : ℝ) := by
  have hnpos : 0 < n := (octave_mem_bounds hn).1
  have hnle : n ≤ 4 * X := (octave_mem_bounds hn).2
  have hcardNat :=
    card_divisors_le_two_mul_sqrt_succ
      (Nat.ne_of_gt hnpos)
  have hcardReal :
      (n.divisors.card : ℝ) ≤
        2 * ((n.sqrt : ℝ) + 1) := by
    exact_mod_cast hcardNat
  have hsqrtNat :
      (n.sqrt : ℝ) ≤ Real.sqrt (n : ℝ) :=
    Real.nat_sqrt_le_real_sqrt
  have hsqrtMono :
      Real.sqrt (n : ℝ) ≤
        Real.sqrt ((4 * X : ℕ) : ℝ) := by
    apply Real.sqrt_le_sqrt
    exact_mod_cast hnle
  have hsqrtFour :
      Real.sqrt ((4 * X : ℕ) : ℝ) =
        2 * Real.sqrt (X : ℝ) := by
    norm_num [Nat.cast_mul, Real.sqrt_mul (show (0 : ℝ) ≤ 4 by norm_num)]
  have hsqrtOne : 1 ≤ Real.sqrt (X : ℝ) := by
    rw [Real.one_le_sqrt]
    exact_mod_cast hX
  rw [hsqrtFour] at hsqrtMono
  nlinarith


end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b9e1a9707dab2219bc11f5be76c01229dd6574f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
