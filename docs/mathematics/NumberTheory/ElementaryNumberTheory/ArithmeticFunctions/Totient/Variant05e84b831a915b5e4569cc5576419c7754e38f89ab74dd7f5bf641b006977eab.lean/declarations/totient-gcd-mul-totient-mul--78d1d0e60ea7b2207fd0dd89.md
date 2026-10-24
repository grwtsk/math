# totient_gcd_mul_totient_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b3ce75a-562d-f5da-4e03-365edd069a94",
  "kind": "theorem",
  "lexical_name": "totient_gcd_mul_totient_mul",
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
  "slug": "totient-gcd-mul-totient-mul--78d1d0e60ea7b2207fd0dd89",
  "source": {
    "blob": "1adf8f725fd231a0df73efdb6bf812ee0865c6d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 339,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78d1d0e60ea7b2207fd0dd89f1ffffb2b5f81429fc2e2c1bc218a9f1035be7ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b3ce75a-562d-f5da-4e03-365edd069a94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totient_gcd_mul_totient_mul (a b : ℕ) : φ (a.gcd b) * φ (a * b) = φ a * φ b * a.gcd b := by
  have shuffle :
    ∀ a1 a2 b1 b2 c1 c2 : ℕ,
      b1 ∣ a1 → b2 ∣ a2 → a1 / b1 * c1 * (a2 / b2 * c2) = a1 * a2 / (b1 * b2) * (c1 * c2) := by
    intro a1 a2 b1 b2 c1 c2 h1 h2
    calc
      a1 / b1 * c1 * (a2 / b2 * c2) = a1 / b1 * (a2 / b2) * (c1 * c2) := by apply mul_mul_mul_comm
      _ = a1 * a2 / (b1 * b2) * (c1 * c2) := by
        congr 1
        exact div_mul_div_comm h1 h2
  simp only [totient_eq_div_primeFactors_mul]
  rw [shuffle, shuffle]
  rotate_left
  repeat' apply prod_primeFactors_dvd
  simp only [prod_primeFactors_gcd_mul_prod_primeFactors_mul]
  rw [eq_comm, mul_comm, ← mul_assoc, ← Nat.mul_div_assoc]
  exact mul_dvd_mul (prod_primeFactors_dvd a) (prod_primeFactors_dvd b)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant05e84b831a915b5e4569cc5576419c7754e38f89ab74dd7f5bf641b006977eab.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1adf8f725fd231a0df73efdb6bf812ee0865c6d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
