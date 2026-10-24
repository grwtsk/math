# sturm_bound_levelOne_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75524b7e-53ee-114a-3240-aa2d7364e5ec",
  "kind": "theorem",
  "lexical_name": "sturm_bound_levelOne_nat",
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
  "slug": "sturm-bound-levelone-nat--9819bc84462ed6793befe7d3",
  "source": {
    "blob": "512e3d81fafd3dfcb596bfa5e2fa4fc8292027a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 296,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9819bc84462ed6793befe7d370402d5456fef2c752ff79880213564bcba42b27",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75524b7e-53ee-114a-3240-aa2d7364e5ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sturm_bound_levelOne_nat {k : ℕ} {f : ModularForm 𝒮ℒ (k : ℤ)}
    (h : (↑(k / 12) : ℕ∞) < (qExpansion 1 f).order) : f = 0 := by
  induction k using Nat.strong_induction_on with | _ k ih =>
  have h0 : (qExpansion 1 f).coeff 0 = 0 :=
    PowerSeries.coeff_of_lt_order _ ((Nat.cast_nonneg _).trans_lt h)
  suffices CuspForm.discriminantEquiv (toCuspForm f h0) = 0 by
    simpa [CuspForm.discriminantEquiv.map_eq_zero_iff, DFunLike.ext_iff]
  rcases lt_or_ge k 12 with hk12 | hk12
  · apply rank_zero_iff_forall_zero.mp (levelOne_neg_weight_rank_zero (by lia))
  · rw [← mcast_eq_zero_iff (b := ↑(k - 12)) (by lia) rfl]
    refine ih (k - 12) (by lia) ?_
    have hsucc : k / 12 = (k - 12) / 12 + 1 := by lia
    rw [qExpansion_eq_qExpansion_discriminant_mul f h0, PowerSeries.order_mul,
      discriminant_qExpansion_order, add_comm, hsucc, Nat.cast_add, Nat.cast_one] at h
    exact (ENat.add_lt_add_iff_right (ENat.natCast_ne_top 1)).mp h

/-- **Sturm bound for level-1 modular forms.** If a modular form `f` of weight `k` for `SL(2, ℤ)`
has q-expansion of order strictly greater than `k / 12`, then `f` is identically zero.
Corollary of the natural-weight version `sturm_bound_levelOne_nat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `512e3d81fafd3dfcb596bfa5e2fa4fc8292027a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
