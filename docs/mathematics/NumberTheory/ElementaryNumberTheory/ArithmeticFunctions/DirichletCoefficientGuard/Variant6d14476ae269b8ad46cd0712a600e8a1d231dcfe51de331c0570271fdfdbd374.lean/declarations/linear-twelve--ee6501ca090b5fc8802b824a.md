# linear_twelve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4f19b78-e655-d948-70f3-ac507bbab343",
  "kind": "theorem",
  "lexical_name": "linear_twelve",
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
  "slug": "linear-twelve--ee6501ca090b5fc8802b824a",
  "source": {
    "blob": "dd3660f25ca41586eb687cdd17713f85a438ab21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 18,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletCoefficientGuard/Variant6d14476ae269b8ad46cd0712a600e8a1d231dcfe51de331c0570271fdfdbd374.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee6501ca090b5fc8802b824abd441280ccc84be012f030edd4e32d9db41dc59d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletCoefficientGuard/Variant6d14476ae269b8ad46cd0712a600e8a1d231dcfe51de331c0570271fdfdbd374.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4f19b78-e655-d948-70f3-ac507bbab343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linear_twelve : (truncatedMoebius 5 * ArithmeticFunction.log) 12 = - Real.log 2 := by
  rw [ArithmeticFunction.mul_apply]
  have hd : Nat.divisorsAntidiagonal 12 =
      {(1,12), (2,6), (3,4), (4,3), (6,2), (12,1)} := by decide
  rw [hd]
  have hm4 : ArithmeticFunction.moebius 4 = 0 := by
    simpa using ArithmeticFunction.moebius_apply_prime_pow (by norm_num : Nat.Prime 2)
      (by decide : (2 : ℕ) ≠ 0)
  have hl12 : Real.log 12 = Real.log 2 + Real.log 6 := by
    rw [← show (2 : ℝ) * 6 = 12 by norm_num]
    exact Real.log_mul (by norm_num) (by norm_num)
  have hl4 : Real.log 4 = 2 * Real.log 2 := by
    rw [← show (2 : ℝ) ^ 2 = 4 by norm_num, Real.log_pow]
    norm_num
  simp [truncatedMoebius, ArithmeticFunction.log_apply, hm4, hl12, hl4,
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletCoefficientGuard/Variant6d14476ae269b8ad46cd0712a600e8a1d231dcfe51de331c0570271fdfdbd374.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletCoefficientGuard/Variant6d14476ae269b8ad46cd0712a600e8a1d231dcfe51de331c0570271fdfdbd374.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd3660f25ca41586eb687cdd17713f85a438ab21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
