# exists_nat_abs_mul_sub_round_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "905ff2830110628e736743f6804825b693e65939",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe406c7a-331a-52f8-ac8b-70996d5104b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b125dc4-ffd9-1cf7-c1f3-74ad2f3a2ee1",
  "kind": "theorem",
  "lexical_name": "exists_nat_abs_mul_sub_round_le",
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
  "slug": "exists-nat-abs-mul-sub-round-le--0e26be536288df3c138298f9",
  "source": {
    "blob": "905ff2830110628e736743f6804825b693e65939",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 142,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e26be536288df3c138298f972f97f67634ff8117d8412f3156ae689858da5d3",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b125dc4-ffd9-1cf7-c1f3-74ad2f3a2ee1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nat_abs_mul_sub_round_le (ξ : ℝ) {n : ℕ} (n_pos : 0 < n) :
    ∃ k : ℕ, 0 < k ∧ k ≤ n ∧ |↑k * ξ - round (↑k * ξ)| ≤ 1 / (n + 1) := by
  obtain ⟨j, k, hk₀, hk₁, h⟩ := exists_int_int_abs_mul_sub_le ξ n_pos
  have hk := toNat_of_nonneg hk₀.le
  rw [← hk] at hk₀ hk₁ h
  exact ⟨k.toNat, coe_nat_pos.mp hk₀, Nat.cast_le.mp hk₁, (round_le (↑k.toNat * ξ) j).trans h⟩
#align real.exists_nat_abs_mul_sub_round_le Real.exists_nat_abs_mul_sub_round_le

/-- *Dirichlet's approximation theorem:*
For any real number `ξ` and positive natural `n`, there is a fraction `q`
such that `q.den ≤ n` and `|ξ - q| ≤ 1/((n+1)*q.den)`.

See also `AddCircle.exists_norm_nsmul_le`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `905ff2830110628e736743f6804825b693e65939` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
