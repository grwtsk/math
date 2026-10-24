# exists_bound_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de9045a7-c4b5-ef1c-78db-056c93a26e7d",
  "kind": "theorem",
  "lexical_name": "exists_bound_of_continuous",
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
  "slug": "exists-bound-of-continuous--d460637050dcdf5a6b281703",
  "source": {
    "blob": "eb7d6a77e37c67ebd04eb70781e0d39590c8ab69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 134,
    "path": "GRWTSK/Topology/GeneralTopology/Multilinear/Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d460637050dcdf5a6b281703d87c962aaa0442a84525119b2a2052d386852fc0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Multilinear/Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de9045a7-c4b5-ef1c-78db-056c93a26e7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_bound_of_continuous (hf : Continuous f) :
    ∃ C : ℝ, 0 < C ∧ ∀ m, ‖f m‖ ≤ C * ∏ i, ‖m i‖ := by
  cases isEmpty_or_nonempty ι
  · refine' ⟨‖f 0‖ + 1, add_pos_of_nonneg_of_pos (norm_nonneg _) zero_lt_one, fun m => _⟩
    obtain rfl : m = 0
    exact funext (IsEmpty.elim ‹_›)
    simp [univ_eq_empty, zero_le_one]
  obtain ⟨ε : ℝ, ε0 : 0 < ε, hε : ∀ m : ∀ i, E i, ‖m - 0‖ < ε → ‖f m - f 0‖ < 1⟩ :=
    NormedAddCommGroup.tendsto_nhds_nhds.1 (hf.tendsto 0) 1 zero_lt_one
  simp only [sub_zero, f.map_zero] at hε
  rcases NormedField.exists_one_lt_norm 𝕜 with ⟨c, hc⟩
  have : 0 < (‖c‖ / ε) ^ Fintype.card ι := pow_pos (div_pos (zero_lt_one.trans hc) ε0) _
  refine' ⟨_, this, _⟩
  refine' f.bound_of_shell (fun _ => ε0) (fun _ => hc) fun m hcm hm => _
  refine' (hε m ((pi_norm_lt_iff ε0).2 hm)).le.trans _
  rw [← div_le_iff' this, one_div, ← inv_pow, inv_div, Fintype.card, ← prod_const]
  exact prod_le_prod (fun _ _ => div_nonneg ε0.le (norm_nonneg _)) fun i _ => hcm i
#align multilinear_map.exists_bound_of_continuous MultilinearMap.exists_bound_of_continuous

/-- If `f` satisfies a boundedness property around `0`, one can deduce a bound on `f m₁ - f m₂`
using the multilinearity. Here, we give a precise but hard to use version. See
`norm_image_sub_le_of_bound` for a less precise but more usable version. The bound reads
`‖f m - f m'‖ ≤
  C * ‖m 1 - m' 1‖ * max ‖m 2‖ ‖m' 2‖ * max ‖m 3‖ ‖m' 3‖ * ... * max ‖m n‖ ‖m' n‖ + ...`,
where the other terms in the sum are the same products where `1` is replaced by any `i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Multilinear/Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Multilinear/Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb7d6a77e37c67ebd04eb70781e0d39590c8ab69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
