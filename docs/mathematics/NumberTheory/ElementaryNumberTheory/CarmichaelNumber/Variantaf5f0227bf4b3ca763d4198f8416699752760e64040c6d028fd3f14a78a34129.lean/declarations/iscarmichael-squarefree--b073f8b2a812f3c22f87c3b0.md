# IsCarmichael.squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ae7760b938a24cdab0a3825a1de25842a74d86b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a703497-0870-5e22-faf2-3e4b612c3b88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a9618cf-c8bc-e67f-e3db-03f39ee97db7",
  "kind": "theorem",
  "lexical_name": "IsCarmichael.squarefree",
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
  "slug": "iscarmichael-squarefree--b073f8b2a812f3c22f87c3b0",
  "source": {
    "blob": "8ae7760b938a24cdab0a3825a1de25842a74d86b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 98,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b073f8b2a812f3c22f87c3b04e951010bfac4fe4c5fc4fe3480a29f43e10a47a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a9618cf-c8bc-e67f-e3db-03f39ee97db7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCarmichael.squarefree (h : n.IsCarmichael) : Squarefree n := by
  refine squarefree_iff_prime_squarefree.mpr fun p hp p_dvd ↦ ?_
  have : NeZero (p ^ 2) := ⟨pow_ne_zero 2 hp.ne_zero⟩
  have p_odd : Odd p := h.odd.of_dvd_nat <| dvd_trans (p.dvd_mul_left p) p_dvd
  obtain ⟨r, hr⟩ := isCyclic_iff_exists_orderOf_eq_natCard.mp <|
    (ZMod.isCyclic_units_iff_of_odd p_odd.pow).mpr ⟨p, 2, hp, p_odd, rfl⟩
  rw [card_eq_fintype_card, ZMod.card_units_eq_totient] at hr
  have : NeZero n := h.neZero
  obtain ⟨s, hs⟩ := ZMod.unitsMap_surjective (pow_two p ▸ p_dvd) r
  have phi_dvd : φ (p ^ 2) ∣ n - 1 := by
    rw [← hr, ← hs]
    apply orderOf_dvd_of_pow_eq_one
    rw [← map_pow, h.zmod_unit_pow_sub_one, map_one]
  have p_dvd_n : p ∣ n := dvd_trans (dvd_mul_left p p) p_dvd
  refine hp.not_dvd_one <| dvd_sub_iff_right (by grind [h.two_lt]) p_dvd_n |>.mp ?_
  exact dvd_trans (by simp [totient_prime_pow_succ hp 1]) phi_dvd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ae7760b938a24cdab0a3825a1de25842a74d86b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
