# sqrt_nat_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74e4ac82-d99a-d932-5777-f55752bec81c",
  "kind": "theorem",
  "lexical_name": "sqrt_nat_power",
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
  "slug": "sqrt-nat-power--ce7476252632ca0fd0ec73d5",
  "source": {
    "blob": "0a0965c95c13a6a7c2ea86524c9977d16f6cc54b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 19,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/HigherPowerWeight/Variant39dda45059c0578413fd3cf4f7eb7b95594a9d809fd7bf4e1401153ede42e0d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce7476252632ca0fd0ec73d569004dc9938517931e528ebe0353d58f7d6965e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/HigherPowerWeight/Variant39dda45059c0578413fd3cf4f7eb7b95594a9d809fd7bf4e1401153ede42e0d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74e4ac82-d99a-d932-5777-f55752bec81c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_nat_power (p k : ℕ) :
    Real.sqrt ((p ^ k : ℕ) : ℝ) = (p : ℝ) ^ ((k : ℝ) / 2) := by
  rw [Nat.cast_pow, Real.sqrt_eq_rpow, ← Real.rpow_natCast, ← Real.rpow_mul (Nat.cast_nonneg p)]
  congr 1
  ring

/-- The original Mangoldt weight at every exponent at least three has its exact prime-root value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/HigherPowerWeight/Variant39dda45059c0578413fd3cf4f7eb7b95594a9d809fd7bf4e1401153ede42e0d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/HigherPowerWeight/Variant39dda45059c0578413fd3cf4f7eb7b95594a9d809fd7bf4e1401153ede42e0d1.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0965c95c13a6a7c2ea86524c9977d16f6cc54b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
