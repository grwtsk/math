# fwdDiff_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d019085-6dd4-49de-5b44-beeb456e753a",
  "kind": "lemma",
  "lexical_name": "fwdDiff_tendsto_zero",
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
  "slug": "fwddiff-tendsto-zero--f67d0222b64d9d8c5079d7de",
  "source": {
    "blob": "931ff2159c5075009d8814d107a0a0bc1cdd0198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 225,
    "path": "GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f67d0222b64d9d8c5079d7de7ce1e68ab4c49f263e2c9692b9b55697ec00891d",
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

Occurrence: `result:3d019085-6dd4-49de-5b44-beeb456e753a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fwdDiff_tendsto_zero (f : C(ℤ_[p], E)) : Tendsto (Δ_[1]^[·] f 0) atTop (𝓝 0) := by
  -- first extract an `s`
  refine NormedAddCommGroup.tendsto_nhds_zero.mpr (fun ε hε ↦ ?_)
  have : Tendsto (fun s ↦ ‖f‖ / p ^ s) _ _ := tendsto_const_nhds.div_atTop
    (tendsto_pow_atTop_atTop_of_one_lt (mod_cast hp.out.one_lt))
  obtain ⟨s, hs⟩ := (this.eventually_lt_const hε).exists
  refine .mp ?_ (.of_forall fun x hx ↦ lt_of_le_of_lt hx hs)
  -- use uniform continuity to find `t`
  obtain ⟨t, ht⟩ : ∃ t : ℕ, ∀ x y, ‖x - y‖ ≤ p ^ (-t : ℤ) → ‖f x - f y‖ ≤ ‖f‖ / p ^ s := by
    rcases eq_or_ne f 0 with rfl | hf
    · -- silly case : f = 0
      simp
    have : 0 < ‖f‖ / p ^ s := div_pos (norm_pos_iff.mpr hf) (mod_cast pow_pos hp.out.pos _)
    obtain ⟨δ, hδpos, hδf⟩ := f.uniform_continuity _ this
    obtain ⟨t, ht⟩ := PadicInt.exists_pow_neg_lt p hδpos
    exact ⟨t, fun x y hxy ↦  by simpa only [dist_eq_norm_sub] using (hδf (hxy.trans_lt ht)).le⟩
  filter_upwards [eventually_ge_atTop (s * p ^ t)] with m hm
  simpa only [Nat.sub_add_cancel hm] using fwdDiff_iter_le_of_forall_le ht (m - s * p ^ t)

end norm_fwdDiff

section mahler_coeff

variable {E : Type*} [NormedAddCommGroup E] [Module ℤ_[p] E] [IsBoundedSMul ℤ_[p] E]
  (a : E) (n : ℕ) (x : ℤ_[p])

/--
A single term of a Mahler series, given by the product of the scalar-valued continuous map
`mahler n : ℤ_[p] → ℤ_[p]` with a constant vector in some normed `ℤ_[p]`-module.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `931ff2159c5075009d8814d107a0a0bc1cdd0198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
