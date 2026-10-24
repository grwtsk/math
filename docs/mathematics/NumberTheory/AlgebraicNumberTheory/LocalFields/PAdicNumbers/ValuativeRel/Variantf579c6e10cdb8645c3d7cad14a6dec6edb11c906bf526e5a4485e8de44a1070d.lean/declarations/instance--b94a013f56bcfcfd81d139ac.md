# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b523a412c471cd82b15f294b5379e1b3d0e3cdbfe4ed7940b0d3bf766a68cdab",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--b94a013f56bcfcfd81d139ac",
  "source": {
    "blob": "201b02eb134d5301b4a61e401f067bd18b331290",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ValuativeRel/Variantf579c6e10cdb8645c3d7cad14a6dec6edb11c906bf526e5a4485e8de44a1070d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b94a013f56bcfcfd81d139acb0ffbe6b1f2a80b5e767940376e4c469ed3bc20c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ValuativeRel/Variantf579c6e10cdb8645c3d7cad14a6dec6edb11c906bf526e5a4485e8de44a1070d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b523a412c471cd82b15f294b5379e1b3d0e3cdbfe4ed7940b0d3bf766a68cdab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsValuativeTopology ℚ_[p] := by
  refine IsValuativeTopology.of_mem_nhds_zero_iff_vle (mulValuation (p := p)) fun {s} ↦ ?_
  rw [Metric.mem_nhds_iff]
  have h1p : (1 : ℝ) < p := mod_cast hp.out.one_lt
  constructor
  · -- A metric ball `‖·‖ < ε` contains the valuation ball of radius `v (p ^ n)` for large `n`.
    intro ⟨ε, hε, hball⟩
    obtain ⟨n, hn⟩ := exists_pow_lt_of_lt_one hε (inv_lt_one_of_one_lt₀ h1p)
    have hnorm : ‖(p : ℚ_[p]) ^ n‖ < ε := by simpa [norm_pow, norm_p] using hn
    refine ⟨Units.mk0 (mulValuation.restrict (p ^ n)) ?_,
      fun z hz ↦ hball (mem_ball_zero_iff.mpr ?_)⟩
    · exact (ne_zero_iff _).mpr (pow_ne_zero _ (Nat.cast_ne_zero.mpr hp.out.ne_zero))
    simp only [Set.mem_ofPred_eq, Units.val_mk0, restrict_lt_iff] at hz
    exact (norm_lt_norm_iff_mulValuation_lt.mpr hz).trans hnorm
  · -- Conversely, a valuation ball `v · < γ` is the metric ball of radius `p ^ log γ`.
    intro ⟨γ, hγ⟩
    refine ⟨p ^ log (embedding γ.val), zpow_pos (by positivity) _, fun _ hz ↦ hγ ?_⟩
    rw [mem_ball_zero_iff, norm_lt_zpow_iff_mulValuation_lt_exp, exp_log (by simp)] at hz
    simpa [restrict_lt_iff_lt_embedding] using hz

end Padic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ValuativeRel/Variantf579c6e10cdb8645c3d7cad14a6dec6edb11c906bf526e5a4485e8de44a1070d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ValuativeRel/Variantf579c6e10cdb8645c3d7cad14a6dec6edb11c906bf526e5a4485e8de44a1070d.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `201b02eb134d5301b4a61e401f067bd18b331290` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
