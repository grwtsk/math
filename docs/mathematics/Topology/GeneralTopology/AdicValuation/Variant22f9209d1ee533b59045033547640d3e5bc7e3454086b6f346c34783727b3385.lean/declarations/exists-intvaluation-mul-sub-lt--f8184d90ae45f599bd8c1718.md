# exists_intValuation_mul_sub_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84d2e2bd-891b-c2e5-206b-a571409aad6c",
  "kind": "theorem",
  "lexical_name": "exists_intValuation_mul_sub_lt",
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
  "slug": "exists-intvaluation-mul-sub-lt--f8184d90ae45f599bd8c1718",
  "source": {
    "blob": "fc35879c144dcdc3a6ac3ea530c5869201a11449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 551,
    "path": "GRWTSK/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8184d90ae45f599bd8c1718c1e3c969114a45a678a2277c56254736446a4b2a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84d2e2bd-891b-c2e5-206b-a571409aad6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_intValuation_mul_sub_lt {a b : R} (hv : v.intValuation b ≤ v.intValuation a)
    (γ : Multiplicative ℤ) : ∃ y, v.intValuation (b - y * a) < γ := by
  -- If `a = 0`, then `b = 0`, so we can take `y = 0`.
  by_cases ha: a = 0
  · subst ha
    rw [map_zero, le_zero_iff] at hv
    exact ⟨0, by simp [hv]⟩
  · have hvaz := intValuation_ne_zero v a ha
    have hγz : WithZero.coe γ ≠ 0 := WithZero.coe_ne_zero
    -- Otherwise, find `n : ℕ` such that `exp (-n) < γ` and `exp(-n) < v a`.
    obtain ⟨n, hna, hnγ⟩ := exists_exp_neg_natCast_lt_and_lt hvaz hγz
    apply Exists.imp (fun _ h ↦ lt_of_le_of_lt h hnγ)
    -- `v b ≤ v a`, so `b ∈ v.asIdeal ^ -log (v a)`.
    -- From `irreducible_pow_sup_of_ge` we know that
    -- `v.asIdeal ^ -log (v a) = v.asIdeal ^ n ⊔ Ideal.span {a}`.
    -- So, `∃ z ∈ v.asIdeal ^ n, ∃ (y: R), b = z + y * a`. This gives `z` and `y` such that
    -- `b - y * a = z` and `v z ≤ exp (-n)`, as required.
    have hvn : emultiplicity v.asIdeal (Ideal.span {a}) ≤ n := by
      grw [← exp_le_intValuation_iff_emultiplicity_le, hna]
    have hb : b ∈ v.asIdeal ^ multiplicity v.asIdeal (Ideal.span {a}) := by
      rwa [← intValuation_le_pow_iff_mem, ← v.intValuation_eq_exp_neg_multiplicity ha]
    have hnz : Ideal.span {a} ≠ ⊥ := by rwa [ne_eq, Ideal.span_singleton_eq_bot]
    simpa [← Ideal.irreducible_pow_sup_of_ge hnz v.irreducible n hvn, Submodule.mem_sup,
      ← eq_sub_iff_add_eq, ← intValuation_le_pow_iff_mem, Ideal.mem_span_singleton'] using hb

/-- Given `x ∈ 𝒪[K]` we can find `a : A` such that `a` is close to `x` by the valuation `v`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc35879c144dcdc3a6ac3ea530c5869201a11449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
