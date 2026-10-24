# bojanic_mahler_step1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1eea98c66d3488a3dce3b861ea4e06b85fdf325",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0b1b54d-6837-fa84-5ccc-0e0539e79755",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da7b7a34-70aa-1ff5-ae00-71e255c88f92",
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
  "slug": "bojanic-mahler-step1--f44852773e0e70a28029793e",
  "source": {
    "blob": "c1eea98c66d3488a3dce3b861ea4e06b85fdf325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/MahlerBasis/Variantfee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f44852773e0e70a28029793e9e96ba456441e0694ca3510d720d07a315abfb6e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MahlerBasis/Variantfee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da7b7a34-70aa-1ff5-ae00-71e255c88f92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma bojanic_mahler_step1 [AddCommMonoidWithOne M] [AddCommGroup G] (f : M → G)
    (n : ℕ) {R : ℕ} (hR : 1 ≤ R) :
    Δ_[1]^[n + R] f 0 = -∑ j ∈ range (R - 1), R.choose (j + 1) • Δ_[1]^[n + (j + 1)] f 0 +
      ∑ k ∈ range (n + 1), ((-1 : ℤ) ^ (n - k) * n.choose k) • (f (k + R) - f k) := by
  have aux : Δ_[1]^[n + R] f 0 = R.choose (R - 1 + 1) • Δ_[1]^[n + R] f 0 := by
    rw [Nat.sub_add_cancel hR, Nat.choose_self, one_smul]
  rw [neg_add_eq_sub, eq_sub_iff_add_eq, add_comm, aux, (by lia : n + R = (n + ((R - 1) + 1))),
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MahlerBasis/Variantfee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MahlerBasis/Variantfee7216cede5fa28e444e63b798a1e8a81c0ed0f4710e1dcf029cfd448a5bf83.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1eea98c66d3488a3dce3b861ea4e06b85fdf325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
