# norm_ascPochhammer_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:867ef022-c2c3-24e9-71cc-b5606ce9f090",
  "kind": "lemma",
  "lexical_name": "norm_ascPochhammer_le",
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
  "slug": "norm-ascpochhammer-le--dc04db2b6075bfb53440bd5f",
  "source": {
    "blob": "931ff2159c5075009d8814d107a0a0bc1cdd0198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 59,
    "path": "GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc04db2b6075bfb53440bd5fc8d92a957d9ecfa79264bec001cb2449c1c905c9",
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

Occurrence: `result:867ef022-c2c3-24e9-71cc-b5606ce9f090`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_ascPochhammer_le (k : ℕ) (x : ℤ_[p]) :
    ‖(ascPochhammer ℤ_[p] k).eval x‖ ≤ ‖(k.factorial : ℤ_[p])‖ := by
  let f := (ascPochhammer ℤ_[p] k).eval
  change ‖f x‖ ≤ ‖_‖
  have hC : (k.factorial : ℤ_[p]) ≠ 0 := Nat.cast_ne_zero.mpr k.factorial_ne_zero
  have hf : ContinuousAt f x := Polynomial.continuousAt _
  -- find `n : ℕ` such that `‖f x - f n‖ ≤ ‖k!‖`
  obtain ⟨n, hn⟩ : ∃ n : ℕ, ‖f x - f n‖ ≤ ‖(k.factorial : ℤ_[p])‖ := by
    obtain ⟨δ, hδp, hδ⟩ := Metric.continuousAt_iff.mp hf _ (norm_pos_iff.mpr hC)
    obtain ⟨n, hn'⟩ := PadicInt.denseRange_natCast.exists_dist_lt x hδp
    simpa only [← dist_eq_norm_sub'] using ⟨n, (hδ (dist_comm x n ▸ hn')).le⟩
  -- use ultrametric property to show that `‖f n‖ ≤ ‖k!‖` implies `‖f x‖ ≤ ‖k!‖`
  refine sub_add_cancel (f x) _ ▸ (IsUltrametricDist.norm_add_le_max _ (f n)).trans (max_le hn ?_)
  -- finish using the fact that `n.multichoose k ∈ ℤ`
  simp_rw [f, ← ascPochhammer_eval_cast, Polynomial.eval_eq_smeval,
    ← Ring.factorial_nsmul_multichoose_eq_ascPochhammer, smul_eq_mul, Nat.cast_mul, norm_mul]
  exact mul_le_of_le_one_right (norm_nonneg _) (norm_le_one _)

/-- The p-adic integers are a binomial ring, i.e. a ring where binomial coefficients make sense. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `931ff2159c5075009d8814d107a0a0bc1cdd0198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
