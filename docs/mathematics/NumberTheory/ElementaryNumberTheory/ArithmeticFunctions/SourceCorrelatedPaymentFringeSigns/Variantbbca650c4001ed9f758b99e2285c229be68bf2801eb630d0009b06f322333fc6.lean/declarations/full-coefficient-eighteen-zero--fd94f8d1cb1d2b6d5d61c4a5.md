# full_coefficient_eighteen_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e96a1ba-9838-d528-3e73-05ccf6483f44",
  "kind": "theorem",
  "lexical_name": "full_coefficient_eighteen_zero",
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
  "slug": "full-coefficient-eighteen-zero--fd94f8d1cb1d2b6d5d61c4a5",
  "source": {
    "blob": "6d75b300f9b078c913f3a1064c798d969080ff66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 62,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentFringeSigns/Variantbbca650c4001ed9f758b99e2285c229be68bf2801eb630d0009b06f322333fc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd94f8d1cb1d2b6d5d61c4a57641f76c7b79bad01359b41553f7e97a0128195b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentFringeSigns/Variantbbca650c4001ed9f758b99e2285c229be68bf2801eb630d0009b06f322333fc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e96a1ba-9838-d528-3e73-05ccf6483f44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_coefficient_eighteen_zero :
    ((moebius : ArithmeticFunction ℝ) * vonMangoldt) 18 = 0 := by
  have hd : Nat.divisorsAntidiagonal 18 =
      {(1, 18), (2, 9), (3, 6), (6, 3), (9, 2), (18, 1)} := by decide
  have hm2 : (moebius : ArithmeticFunction ℝ) 2 = -1 := by
    rw [intCoe_apply, moebius_apply_prime Nat.prime_two]
    norm_num
  have hm9 : (moebius : ArithmeticFunction ℝ) 9 = 0 := by
    have h : moebius (3 ^ 2) = 0 := by
      rw [moebius_apply_prime_pow Nat.prime_three (by decide)]
      norm_num
    norm_num at h
    rw [intCoe_apply, h]
    norm_num
  have hl3 : vonMangoldt 3 = Real.log 3 := vonMangoldt_apply_prime Nat.prime_three
  have hl9 : vonMangoldt 9 = Real.log 3 := by
    have h := vonMangoldt_apply_pow (n := 3) (k := 2) (by decide)
    norm_num at h
    exact h.trans hl3
  have hl18 : vonMangoldt 18 = 0 := vonMangoldt_eq_zero_iff.mpr (by decide)
  norm_num [ArithmeticFunction.mul_apply, hd, hm2, hm9, real_moebius_six,
    mangoldt_six_zero, hl3, hl9, hl18, intCoe_apply]

/-- The retained fringe has both coefficient signs; no weighted sign is asserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentFringeSigns/Variantbbca650c4001ed9f758b99e2285c229be68bf2801eb630d0009b06f322333fc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentFringeSigns/Variantbbca650c4001ed9f758b99e2285c229be68bf2801eb630d0009b06f322333fc6.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d75b300f9b078c913f3a1064c798d969080ff66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
