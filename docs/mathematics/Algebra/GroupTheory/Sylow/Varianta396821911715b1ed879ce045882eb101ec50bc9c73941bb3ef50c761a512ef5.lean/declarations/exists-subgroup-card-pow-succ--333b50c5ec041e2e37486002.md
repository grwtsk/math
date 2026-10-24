# exists_subgroup_card_pow_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae48c178-d003-c338-4c8d-24ecf441f47e",
  "kind": "theorem",
  "lexical_name": "exists_subgroup_card_pow_succ",
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
  "slug": "exists-subgroup-card-pow-succ--333b50c5ec041e2e37486002",
  "source": {
    "blob": "6f6750c538e50bc8b80418211303f4b260632e22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 690,
    "line": 655,
    "path": "GRWTSK/Algebra/GroupTheory/Sylow/Varianta396821911715b1ed879ce045882eb101ec50bc9c73941bb3ef50c761a512ef5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:333b50c5ec041e2e374860022d75c1dc37af063083017bde9dfcac964c1316b8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Sylow/Varianta396821911715b1ed879ce045882eb101ec50bc9c73941bb3ef50c761a512ef5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae48c178-d003-c338-4c8d-24ecf441f47e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 655–690.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_subgroup_card_pow_succ [Finite G] {p : ℕ} {n : ℕ} [hp : Fact p.Prime]
    (hdvd : p ^ (n + 1) ∣ Nat.card G) {H : Subgroup G} (hH : Nat.card H = p ^ n) :
    ∃ K : Subgroup G, Nat.card K = p ^ (n + 1) ∧ H ≤ K :=
  let ⟨s, hs⟩ := exists_eq_mul_left_of_dvd hdvd
  have hcard : Nat.card (G ⧸ H) = s * p :=
    (mul_left_inj' (show Nat.card H ≠ 0 from Nat.card_pos.ne')).1
      (by
        rw [← card_eq_card_quotient_mul_card_subgroup H, hH, hs, pow_succ', mul_assoc, mul_comm p])
  have hm : s * p % p = Nat.card (normalizer H ⧸ H.subgroupOf (normalizer H)) % p :=
    Nat.card_congr (fixedPointsMulLeftCosetsEquivQuotient H) ▸
      hcard ▸ (IsPGroup.of_card hH).card_modEq_card_fixedPoints _
  have hm' : p ∣ Nat.card (normalizer H ⧸ H.subgroupOf (normalizer H)) :=
    Nat.dvd_of_mod_eq_zero (by rwa [Nat.mod_eq_zero_of_dvd (dvd_mul_left _ _), eq_comm] at hm)
  let ⟨x, hx⟩ := @exists_prime_orderOf_dvd_card' _ (QuotientGroup.Quotient.group _) _ _ hp hm'
  have hequiv : H ≃ H.subgroupOf (normalizer H) := (subgroupOfEquivOfLe le_normalizer).symm.toEquiv
  ⟨((zpowers x).comap (mk' (H.subgroupOf (normalizer H)))).map (normalizer H).subtype, by
    show Nat.card (Subgroup.map (normalizer (H : Set G)).subtype
      (comap (mk' (H.subgroupOf (normalizer H))) (Subgroup.zpowers x))) = p ^ (n + 1)
    suffices Nat.card (Subtype.val ''
      ((zpowers x).comap (mk' (H.subgroupOf (normalizer H))) : Set (normalizer H))) = p ^ (n + 1)
      by convert! this using 2
    rw [Nat.card_image_of_injective Subtype.val_injective
        ((zpowers x).comap (mk' (H.subgroupOf (normalizer H))) : Set (normalizer (H : Set G))),
      pow_succ, ← hH, Nat.card_congr hequiv, ← hx, ← Nat.card_zpowers, ← Nat.card_prod]
    exact Nat.card_congr
      (preimageMkEquivSubgroupProdSet (H.subgroupOf (normalizer H)) (zpowers x)), by
    intro y hy
    simp only [Subgroup.coe_subtype, mk'_apply, Subgroup.mem_map, Subgroup.mem_comap]
    refine ⟨⟨y, le_normalizer hy⟩, ⟨0, ?_⟩, rfl⟩
    dsimp only
    rw [zpow_zero, eq_comm, QuotientGroup.eq_one_iff]
    simpa using! hy⟩

/-- If `H` is a subgroup of `G` of cardinality `p ^ n`,
  then `H` is contained in a subgroup of cardinality `p ^ m`
  if `n ≤ m` and `p ^ m` divides the cardinality of `G` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Sylow/Varianta396821911715b1ed879ce045882eb101ec50bc9c73941bb3ef50c761a512ef5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Sylow/Varianta396821911715b1ed879ce045882eb101ec50bc9c73941bb3ef50c761a512ef5.lean#L655).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f6750c538e50bc8b80418211303f4b260632e22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
