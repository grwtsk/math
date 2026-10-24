# goldbachRationalArcRadius_lt_half_of_denominator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07305683-44b3-d5bf-27cb-494ee6ebb26f",
  "kind": "theorem",
  "lexical_name": "goldbachRationalArcRadius_lt_half_of_denominator",
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
  "slug": "goldbachrationalarcradius-lt-half-of-denominator--f67ffbd2d05e80aac000f3b9",
  "source": {
    "blob": "c04cba84c6dd1708741ae14ac01ad2cc9c36f102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 291,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f67ffbd2d05e80aac000f3b9ecf3227f9bf29d74fe9258eb0bbf06e6c1ce3ca6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07305683-44b3-d5bf-27cb-494ee6ebb26f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachRationalArcRadius_lt_half_of_denominator
    {Q N q : ℕ}
    (hq : 0 < q) (hqQ : q ≤ Q)
    (hscale : 2 * Q ^ 2 < N + 1) :
    goldbachRationalArcRadius Q N q < (1 / 2 : ℝ) := by
  have hQ : 0 < Q := lt_of_lt_of_le hq hqQ
  have hQQ : Q ≤ Q ^ 2 := by
    nlinarith
  have htwoQ : 2 * Q < N + 1 := by
    exact lt_of_le_of_lt
      (Nat.mul_le_mul_left 2 hQQ) hscale
  have hqone : 1 ≤ q := Nat.one_le_iff_ne_zero.mpr hq.ne'
  have hNmul : N + 1 ≤ q * (N + 1) := by
    simpa [one_mul] using
      Nat.mul_le_mul_right (N + 1) hqone
  have hcross : 2 * Q < q * (N + 1) :=
    lt_of_lt_of_le htwoQ hNmul
  have hden :
      (0 : ℝ) < (q : ℝ) * ((N + 1 : ℕ) : ℝ) := by
    positivity
  unfold goldbachRationalArcRadius
  rw [div_lt_iff₀ hden]
  have hcrossR :
      (2 : ℝ) * (Q : ℝ) <
        (q : ℝ) * ((N + 1 : ℕ) : ℝ) := by
    exact_mod_cast hcross
  nlinarith

/-- Indexed form of the radius estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c04cba84c6dd1708741ae14ac01ad2cc9c36f102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
