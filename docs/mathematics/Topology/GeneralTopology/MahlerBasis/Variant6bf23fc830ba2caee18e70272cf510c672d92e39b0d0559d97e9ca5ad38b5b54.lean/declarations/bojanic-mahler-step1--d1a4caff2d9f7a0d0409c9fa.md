# bojanic_mahler_step1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bade222-ca1b-fa40-6284-132739477942",
  "kind": "lemma",
  "lexical_name": "bojanic_mahler_step1",
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
  "slug": "bojanic-mahler-step1--d1a4caff2d9f7a0d0409c9fa",
  "source": {
    "blob": "931ff2159c5075009d8814d107a0a0bc1cdd0198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1a4caff2d9f7a0d0409c9fa4aca26d1f34d6261ee9db4bef239177bcd81c4ee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bade222-ca1b-fa40-6284-132739477942`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma bojanic_mahler_step1 [AddCommMonoidWithOne M] [AddCommGroup G] (f : M → G)
    (n : ℕ) {R : ℕ} (hR : 1 ≤ R) :
    Δ_[1]^[n + R] f 0 = -∑ j ∈ range (R - 1), R.choose (j + 1) • Δ_[1]^[n + (j + 1)] f 0 +
      ∑ k ∈ range (n + 1), ((-1 : ℤ) ^ (n - k) * n.choose k) • (f (k + R) - f k) := by
  have aux : Δ_[1]^[n + R] f 0 = R.choose (R - 1 + 1) • Δ_[1]^[n + R] f 0 := by
    rw [Nat.sub_add_cancel hR, Nat.choose_self, one_smul]
  rw [neg_add_eq_sub, eq_sub_iff_add_eq, add_comm, aux, (by omega : n + R = (n + ((R - 1) + 1))),
    ← sum_range_succ, Nat.sub_add_cancel hR,
    ← sub_eq_iff_eq_add.mpr (sum_range_succ' (fun x ↦ R.choose x • Δ_[1]^[n + x] f 0) R), add_zero,
    Nat.choose_zero_right, one_smul]
  have : ∑ k ∈ Finset.range (R + 1), R.choose k • Δ_[1]^[n + k] f 0 = Δ_[1]^[n] f R := by
    simpa only [← Function.iterate_add_apply, add_comm, nsmul_one, add_zero] using
      (shift_eq_sum_fwdDiff_iter 1 (Δ_[1]^[n] f) R 0).symm
  simp only [this, fwdDiff_iter_eq_sum_shift (1 : M) f n, mul_comm, nsmul_one, mul_smul, add_comm,
    add_zero, smul_sub, sum_sub_distrib]

end fwdDiff

namespace PadicInt

section norm_fwdDiff

variable {p : ℕ} [hp : Fact p.Prime] {E : Type*}
  [NormedAddCommGroup E] [Module ℤ_[p] E] [IsBoundedSMul ℤ_[p] E] [IsUltrametricDist E]

/--
Second step in Bojanić's proof of Mahler's theorem (equation (11) of [bojanic74]): show that values
`Δ_[1]^[n + p ^ t] f 0` for large enough `n` are bounded by the max of `(‖f‖ / p ^ s)` and `1 / p`
times a sup over values for smaller `n`.

We use `nnnorm`s on the RHS since `Finset.sup` requires an order with a bottom element.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `931ff2159c5075009d8814d107a0a0bc1cdd0198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
