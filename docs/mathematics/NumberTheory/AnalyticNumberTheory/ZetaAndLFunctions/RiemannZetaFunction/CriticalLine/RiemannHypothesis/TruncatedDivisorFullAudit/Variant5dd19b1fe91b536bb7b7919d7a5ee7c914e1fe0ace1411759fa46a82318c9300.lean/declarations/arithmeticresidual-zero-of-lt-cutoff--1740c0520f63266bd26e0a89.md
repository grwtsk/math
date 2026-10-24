# arithmeticResidual_zero_of_lt_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4a2733d-8ac4-7d19-8eb3-8b3f4819d48b",
  "kind": "theorem",
  "lexical_name": "arithmeticResidual_zero_of_lt_cutoff",
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
  "slug": "arithmeticresidual-zero-of-lt-cutoff--1740c0520f63266bd26e0a89",
  "source": {
    "blob": "876b7c7206959c40f1ed37a883f92e5d17aeb272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 119,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variant5dd19b1fe91b536bb7b7919d7a5ee7c914e1fe0ace1411759fa46a82318c9300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1740c0520f63266bd26e0a894af2f2569c31959d2ee5796880e5b273ac561cc8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variant5dd19b1fe91b536bb7b7919d7a5ee7c914e1fe0ace1411759fa46a82318c9300.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4a2733d-8ac4-7d19-8eb3-8b3f4819d48b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticResidual_zero_of_lt_cutoff (X : ℕ) (x : ℝ)
    (hX : 1 ≤ X) (hx : 1 ≤ x) (hxX : x < X) : arithmeticResidual X 0 x = 0 := by
  have hN : 1 ≤ ⌊x⌋₊ := (Nat.le_floor_iff (by linarith)).mpr (by simpa using hx)
  rw [arithmeticResidual_eq_divisor_prefix X 0 x hX hx hxX]
  simp only [Complex.ofReal_zero, add_zero, correctedNumerator_half, mul_zero,
    neg_zero, zero_mul, dampedDivisorCoefficient, Real.exp_zero, mul_one,
    CoprimeCount.sum_moebius_divisors]
  simp [hN]

/-- At the cutoff itself the actual endpoint coefficient is retained instead of claiming zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variant5dd19b1fe91b536bb7b7919d7a5ee7c914e1fe0ace1411759fa46a82318c9300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variant5dd19b1fe91b536bb7b7919d7a5ee7c914e1fe0ace1411759fa46a82318c9300.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `876b7c7206959c40f1ed37a883f92e5d17aeb272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
