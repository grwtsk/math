# mobius_sum_divisors_eq_one_or_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:357ed346-2115-c627-c8eb-5b2e1a7e73cd",
  "kind": "theorem",
  "lexical_name": "mobius_sum_divisors_eq_one_or_zero",
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
  "slug": "mobius-sum-divisors-eq-one-or-zero--cba7a58cc2c8f77b8599a278",
  "source": {
    "blob": "b73a31d80520248076b59b0d5fdc7bc23e4ee97d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 29,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Variantfe88efd085ea3f67f27bcb7f05a97355a10b956099c30d75c408139632075c39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cba7a58cc2c8f77b8599a278e2bd8ffcbf32d256ac8f5b9520461d3170d60983",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Variantfe88efd085ea3f67f27bcb7f05a97355a10b956099c30d75c408139632075c39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:357ed346-2115-c627-c8eb-5b2e1a7e73cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobius_sum_divisors_eq_one_or_zero
    (n : Nat) :
    (∑ d ∈ Nat.divisors n, mobiusFn d) =
      if n = 1 then 1 else 0 := by
  have h :=
    congrArg (fun F : ArithmeticFunction Int => F n)
      ArithmeticFunction.moebius_mul_coe_zeta
  rw [ArithmeticFunction.coe_mul_zeta_apply] at h
  simpa [mobiusFn, ArithmeticFunction.one_apply] using h

/--
Checked rebuild of finite Moebius inversion.

This is an elementary finite divisor-sum theorem. It is not an analytic theorem
and does not depend on prime-counting asymptotics, zeta continuation, or
zero-free regions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Variantfe88efd085ea3f67f27bcb7f05a97355a10b956099c30d75c408139632075c39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Variantfe88efd085ea3f67f27bcb7f05a97355a10b956099c30d75c408139632075c39.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b73a31d80520248076b59b0d5fdc7bc23e4ee97d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
