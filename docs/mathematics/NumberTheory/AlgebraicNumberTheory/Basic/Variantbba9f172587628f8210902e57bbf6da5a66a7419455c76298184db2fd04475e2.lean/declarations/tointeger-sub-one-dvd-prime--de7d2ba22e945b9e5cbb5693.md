# toInteger_sub_one_dvd_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63ea037c-1ddb-62f3-aeb8-746715e5e0cb",
  "kind": "lemma",
  "lexical_name": "toInteger_sub_one_dvd_prime",
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
  "slug": "tointeger-sub-one-dvd-prime--de7d2ba22e945b9e5cbb5693",
  "source": {
    "blob": "a8be3adc809a6dd3ed3c063e1dddf2e3ace97cc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 536,
    "line": 515,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de7d2ba22e945b9e5cbb56933a8cec90ee68e2ae235e9a2611d29f6525571f73",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63ea037c-1ddb-62f3-aeb8-746715e5e0cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–536.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toInteger_sub_one_dvd_prime [hcycl : IsCyclotomicExtension {p ^ (k + 1)} ℚ K]
    (hζ : IsPrimitiveRoot ζ (p ^ (k + 1))) : ((hζ.toInteger - 1)) ∣ p := by
  by_cases htwo : p ^ (k + 1) = 2
  · have ⟨hp2, hk⟩ := (Nat.Prime.pow_eq_iff Nat.prime_two).1 htwo
    simp only [add_eq_right] at hk
    have hζ' : ζ = -1 := by
      refine IsPrimitiveRoot.eq_neg_one_of_two_right ?_
      rwa [hk, zero_add, pow_one, hp2] at hζ
    replace hζ' : hζ.toInteger = -1 := by
      ext
      exact hζ'
    rw [hζ', hp2]
    exact ⟨-1, by ring⟩
  suffices (hζ.toInteger - 1) ∣ (p : ℤ) by simpa
  have := IsCyclotomicExtension.numberField {p ^ (k + 1)} ℚ K
  have H := hζ.norm_toInteger_pow_sub_one_of_prime_pow_ne_two zero_le htwo
  rw [pow_zero, pow_one] at H
  rw [← Ideal.norm_dvd_iff, H]
  · simp
  · exact prime_norm_toInteger_sub_one_of_prime_pow_ne_two hζ htwo

/-- In a `p`-th cyclotomic extension of `ℚ`, we have that `ζ - 1` divides `p` in `𝓞 K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8be3adc809a6dd3ed3c063e1dddf2e3ace97cc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
