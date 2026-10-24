# tendsto_factorial_div_pow_self_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfd68135-839f-8300-83c0-6147d9e5aafd",
  "kind": "theorem",
  "lexical_name": "tendsto_factorial_div_pow_self_atTop",
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
  "slug": "tendsto-factorial-div-pow-self-attop--32c083fd3e2586a2b53ade2e",
  "source": {
    "blob": "c902b2b00ec3c528e0f33d8de642fb31f0672aa1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 573,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32c083fd3e2586a2b53ade2e8c542195fa11897b0fe3018c2de110d698ecf56a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfd68135-839f-8300-83c0-6147d9e5aafd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_factorial_div_pow_self_atTop :
    Tendsto (fun n => n ! / (n : ℝ) ^ n : ℕ → ℝ) atTop (𝓝 0) :=
  tendsto_of_tendsto_of_tendsto_of_le_of_le' tendsto_const_nhds
    (tendsto_const_div_atTop_nhds_0_nat 1)
    (eventually_of_forall fun n =>
      div_nonneg (by exact_mod_cast n.factorial_pos.le)
        (pow_nonneg (by exact_mod_cast n.zero_le) _))
    (by
      refine' (eventually_gt_atTop 0).mono fun n hn => _
      rcases Nat.exists_eq_succ_of_ne_zero hn.ne.symm with ⟨k, rfl⟩
      rw [← prod_range_add_one_eq_factorial, pow_eq_prod_const, div_eq_mul_inv, ← inv_eq_one_div,
        prod_natCast, Nat.cast_succ, ← prod_inv_distrib, ← prod_mul_distrib,
        Finset.prod_range_succ']
      simp only [prod_range_succ', one_mul, Nat.cast_add, zero_add, Nat.cast_one]
      refine'
            mul_le_of_le_one_left (inv_nonneg.mpr <| by exact_mod_cast hn.le) (prod_le_one _ _) <;>
          intro x hx <;>
        rw [Finset.mem_range] at hx
      · refine' mul_nonneg _ (inv_nonneg.mpr _) <;> norm_cast <;> linarith
      · refine' (div_le_one <| by exact_mod_cast hn).mpr _
        norm_cast
        linarith)
#align tendsto_factorial_div_pow_self_at_top tendsto_factorial_div_pow_self_atTop

/-!
### Ceil and floor
-/


section

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c902b2b00ec3c528e0f33d8de642fb31f0672aa1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
