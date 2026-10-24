# exists_subgroup_card_pow_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9cc54b6af9d7453bedad270fd15b9cc8222d86a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 592,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f04b1d4d1493168c6f559184b8ddd16870c9b7233e4221ddaf6c94b48b758d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e091074-8654-dbce-8847-deba12c8b225",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5712776e-e934-521e-cf47-dbd03349f8be",
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
  "slug": "exists-subgroup-card-pow-succ--7e7e5649910e13a10bb3d655",
  "source": {
    "blob": "d9cc54b6af9d7453bedad270fd15b9cc8222d86a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 632,
    "line": 592,
    "path": "GRWTSK/Algebra/GroupTheory/Sylow/Variant0f04b1d4d1493168c6f559184b8ddd16870c9b7233e4221ddaf6c94b48b758d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e7e5649910e13a10bb3d655b483e8dba02cf0b76bb64254c7e78614bd0ac2ee",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Sylow/Variant0f04b1d4d1493168c6f559184b8ddd16870c9b7233e4221ddaf6c94b48b758d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5712776e-e934-521e-cf47-dbd03349f8be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–632.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_subgroup_card_pow_succ [Fintype G] {p : ℕ} {n : ℕ} [hp : Fact p.Prime]
    (hdvd : p ^ (n + 1) ∣ card G) {H : Subgroup G} (hH : Fintype.card H = p ^ n) :
    ∃ K : Subgroup G, Fintype.card K = p ^ (n + 1) ∧ H ≤ K :=
  let ⟨s, hs⟩ := exists_eq_mul_left_of_dvd hdvd
  have hcard : card (G ⧸ H) = s * p :=
    (mul_left_inj' (show card H ≠ 0 from Fintype.card_ne_zero)).1
      (by
        rw [← card_eq_card_quotient_mul_card_subgroup H, hH, hs, pow_succ', mul_assoc, mul_comm p])
  have hm : s * p % p = card (normalizer H ⧸ H.subgroupOf H.normalizer) % p :=
    Fintype.card_congr (fixedPointsMulLeftCosetsEquivQuotient H) ▸
      hcard ▸ (IsPGroup.of_card hH).card_modEq_card_fixedPoints _
  have hm' : p ∣ card (normalizer H ⧸ H.subgroupOf H.normalizer) :=
    Nat.dvd_of_mod_eq_zero (by rwa [Nat.mod_eq_zero_of_dvd (dvd_mul_left _ _), eq_comm] at hm)
  let ⟨x, hx⟩ := @exists_prime_orderOf_dvd_card _ (QuotientGroup.Quotient.group _) _ _ hp hm'
  have hequiv : H ≃ H.subgroupOf H.normalizer := (subgroupOfEquivOfLe le_normalizer).symm.toEquiv
  ⟨Subgroup.map (normalizer H).subtype
      (Subgroup.comap (mk' (H.subgroupOf H.normalizer)) (zpowers x)), by
    show Fintype.card (Subgroup.map H.normalizer.subtype
              (comap (mk' (H.subgroupOf H.normalizer)) (Subgroup.zpowers x))) = p ^ (n + 1)
    suffices Fintype.card (Subtype.val ''
              (Subgroup.comap (mk' (H.subgroupOf H.normalizer)) (zpowers x) : Set H.normalizer)) =
        p ^ (n + 1)
      by convert this using 2
    rw [Set.card_image_of_injective
        (Subgroup.comap (mk' (H.subgroupOf H.normalizer)) (zpowers x) : Set H.normalizer)
        Subtype.val_injective,
      pow_succ', ← hH, Fintype.card_congr hequiv, ← hx, orderOf_eq_card_zpowers, ←
      Fintype.card_prod]
    exact @Fintype.card_congr _ _ (_) (_)
      (preimageMkEquivSubgroupProdSet (H.subgroupOf H.normalizer) (zpowers x)), by
    intro y hy
    simp only [exists_prop, Subgroup.coeSubtype, mk'_apply, Subgroup.mem_map, Subgroup.mem_comap]
    refine' ⟨⟨y, le_normalizer hy⟩, ⟨0, _⟩, rfl⟩
    dsimp only
    rw [zpow_zero, eq_comm, QuotientGroup.eq_one_iff]
    simpa using hy⟩
#align sylow.exists_subgroup_card_pow_succ Sylow.exists_subgroup_card_pow_succ

/-- If `H` is a subgroup of `G` of cardinality `p ^ n`,
  then `H` is contained in a subgroup of cardinality `p ^ m`
  if `n ≤ m` and `p ^ m` divides the cardinality of `G` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Sylow/Variant0f04b1d4d1493168c6f559184b8ddd16870c9b7233e4221ddaf6c94b48b758d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Sylow/Variant0f04b1d4d1493168c6f559184b8ddd16870c9b7233e4221ddaf6c94b48b758d3.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9cc54b6af9d7453bedad270fd15b9cc8222d86a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
