# full_coefficient_eighteen_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74949f4a6e4dad4bb5da7a75fb1410f363d1f1c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1569d3ff392216febb5f0e79ede38eac7c3961cd98a7acd2a6df60dfe7d9942.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a11f0fda-1a26-d8e7-77f5-073a46bdd78a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:211a9d4d-ebcb-dd92-181d-563cc89be6c4",
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
  "slug": "full-coefficient-eighteen-zero--69b2ea6ed9cc0279d4c37c9d",
  "source": {
    "blob": "74949f4a6e4dad4bb5da7a75fb1410f363d1f1c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 54,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentFringeSigns/Variantb1569d3ff392216febb5f0e79ede38eac7c3961cd98a7acd2a6df60dfe7d9942.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69b2ea6ed9cc0279d4c37c9dbc4c6527081658017e1fa08cbf1d4622c8889729",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentFringeSigns/Variantb1569d3ff392216febb5f0e79ede38eac7c3961cd98a7acd2a6df60dfe7d9942.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:211a9d4d-ebcb-dd92-181d-563cc89be6c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–77.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentFringeSigns/Variantb1569d3ff392216febb5f0e79ede38eac7c3961cd98a7acd2a6df60dfe7d9942.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentFringeSigns/Variantb1569d3ff392216febb5f0e79ede38eac7c3961cd98a7acd2a6df60dfe7d9942.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74949f4a6e4dad4bb5da7a75fb1410f363d1f1c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
