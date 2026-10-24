# exists_eq_pow_of_pow_eq_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:562ade9e-ca6d-70b1-c505-d311352b7be8",
  "kind": "theorem",
  "lexical_name": "exists_eq_pow_of_pow_eq_pow",
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
  "slug": "exists-eq-pow-of-pow-eq-pow--596090028ae40e2f527b729e",
  "source": {
    "blob": "69e7a5d768360a638f661bc8144af4aa693539d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 611,
    "line": 590,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant3a4646ea0314397a0e3f369e0062c66a8537795bcf626d451f77f93ffc2460b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:596090028ae40e2f527b729e6709ed09abb3f0a4863517455e59e952c431218c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant3a4646ea0314397a0e3f369e0062c66a8537795bcf626d451f77f93ffc2460b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:562ade9e-ca6d-70b1-c505-d311352b7be8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_pow_of_pow_eq_pow
    {a b m n : ℕ} (hmn : m ≠ 0 ∨ n ≠ 0) (h : a ^ m = b ^ n) :
    letI g := gcd m n; ∃ c, a = c ^ (n / g) ∧ b = c ^ (m / g) := by
  set g := gcd m n
  let m' := m / gcd m n
  let n' := n / gcd m n
  have coprime : m'.Coprime n' := by
    rcases hmn with hm | hn
    · exact gcd_div_gcd_div_gcd_of_pos_left (zero_lt_of_ne_zero hm)
    · exact gcd_div_gcd_div_gcd_of_pos_right (zero_lt_of_ne_zero hn)
  have pow_eq : a ^ m' = b ^ n' := by
    conv_lhs at h => rw [show m = m' * g from (Nat.div_mul_cancel (gcd_dvd_left m n)).symm]
    conv_rhs at h => rw [show n = n' * g from (Nat.div_mul_cancel (gcd_dvd_right m n)).symm]
    rw [pow_mul, pow_mul] at h
    have : g ≠ 0 := by
      rcases hmn with hm | hn
      · exact gcd_ne_zero_left hm
      · exact gcd_ne_zero_right hn
    exact Nat.pow_left_injective this h
  exact exists_eq_pow_of_exponent_coprime_of_pow_eq_pow coprime pow_eq

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant3a4646ea0314397a0e3f369e0062c66a8537795bcf626d451f77f93ffc2460b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant3a4646ea0314397a0e3f369e0062c66a8537795bcf626d451f77f93ffc2460b6.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e7a5d768360a638f661bc8144af4aa693539d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
