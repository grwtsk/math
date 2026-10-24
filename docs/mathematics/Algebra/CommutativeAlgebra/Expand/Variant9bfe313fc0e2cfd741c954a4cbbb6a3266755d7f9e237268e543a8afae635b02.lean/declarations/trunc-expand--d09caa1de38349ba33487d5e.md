# trunc'_expand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20426c63f715fb65b633153f6b046fdca3288ef4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bfe313fc0e2cfd741c954a4cbbb6a3266755d7f9e237268e543a8afae635b02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fcd9f14d-b45d-5a8f-f185-27bbd0e815ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0045e8c5-d018-50e6-3773-821357414902",
  "kind": "theorem",
  "lexical_name": "trunc'_expand",
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
  "slug": "trunc-expand--d09caa1de38349ba33487d5e",
  "source": {
    "blob": "20426c63f715fb65b633153f6b046fdca3288ef4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 197,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant9bfe313fc0e2cfd741c954a4cbbb6a3266755d7f9e237268e543a8afae635b02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d09caa1de38349ba33487d5e3ece8e3c93feae25d578246b4b63b1e6f9ef717a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Expand/Variant9bfe313fc0e2cfd741c954a4cbbb6a3266755d7f9e237268e543a8afae635b02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0045e8c5-d018-50e6-3773-821357414902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trunc'_expand [DecidableEq σ] {n : σ →₀ ℕ} (φ : MvPowerSeries σ R) :
    trunc' R (p • n) (expand p hp φ) = (trunc' R n φ).expand p := by
  ext d
  by_cases! h : ∀ i, p ∣ d i
  · obtain ⟨m, hm⟩ : ∃ m, p • m = d := ⟨d.mapRange (fun a ↦ a / p) (by simp),
      by ext i; simp [(Nat.mul_div_cancel' (h i))]⟩
    by_cases h_le : m ≤ n
    · rw [← hm, coeff_trunc', ite_eq_left (nsmul_le_nsmul_right h_le p), coeff_expand_smul,
        MvPolynomial.coeff_expand_smul _ hp, coeff_trunc', ite_eq_left h_le]
    · have not_le : ¬ p • m ≤ p • n := by
        obtain ⟨i, hi⟩ : ∃ i, m i > n i := by
          by_contra! hc
          exact h_le (Finsupp.coe_le_coe.mp hc)
        have : ¬ p • m i ≤ p • n i := by
          simp [Nat.mul_lt_mul_of_pos_left hi (p.ne_zero_iff_zero_lt.mp hp)]
        exact Not.intro fun a ↦ this (a i)
      rw [coeff_trunc', ← hm, ite_eq_right not_le, MvPolynomial.coeff_expand_smul _ hp,
        coeff_trunc', ite_eq_right h_le]
  · obtain ⟨i, hi⟩ := h
    rw [MvPolynomial.coeff_expand_of_not_dvd _ hi]
    by_cases hd : d ≤ p • n
    · rw [coeff_trunc', ite_eq_left hd, coeff_expand_of_not_dvd _ hp _ hi]
    rw [coeff_trunc', ite_eq_right hd]

include hp in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Expand/Variant9bfe313fc0e2cfd741c954a4cbbb6a3266755d7f9e237268e543a8afae635b02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant9bfe313fc0e2cfd741c954a4cbbb6a3266755d7f9e237268e543a8afae635b02.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20426c63f715fb65b633153f6b046fdca3288ef4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
