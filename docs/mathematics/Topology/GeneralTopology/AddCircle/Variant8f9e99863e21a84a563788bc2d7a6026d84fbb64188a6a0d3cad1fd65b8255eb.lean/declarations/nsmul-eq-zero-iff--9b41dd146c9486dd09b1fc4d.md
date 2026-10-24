# nsmul_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6815a942dabfaf83f799770f87e460d55821c012",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 423,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7aefeea-94f4-54c4-f922-88663d7f82c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a59d676-7724-713f-1be0-e02519a97c55",
  "kind": "theorem",
  "lexical_name": "nsmul_eq_zero_iff",
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
  "slug": "nsmul-eq-zero-iff--9b41dd146c9486dd09b1fc4d",
  "source": {
    "blob": "6815a942dabfaf83f799770f87e460d55821c012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 423,
    "path": "GRWTSK/Topology/GeneralTopology/AddCircle/Variant8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b41dd146c9486dd09b1fc4d5c1b002db3df8826919dec9257c625e41a87ae59",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddCircle/Variant8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a59d676-7724-713f-1be0-e02519a97c55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nsmul_eq_zero_iff {u : AddCircle p} {n : ℕ} (h : 0 < n) :
    n • u = 0 ↔ ∃ m < n, ↑(↑m / ↑n * p) = u := by
  refine ⟨QuotientAddGroup.induction_on u fun k hk ↦ ?_, ?_⟩
  · rw [← addOrderOf_dvd_iff_nsmul_eq_zero]
    rintro ⟨m, -, rfl⟩
    constructor; rw [mul_comm, eq_comm]
    exact gcd_mul_addOrderOf_div_eq p m h
  rw [← coe_nsmul, coe_eq_zero_iff] at hk
  obtain ⟨a, ha⟩ := hk
  refine ⟨a.natMod n, Int.natMod_lt h.ne', ?_⟩
  have h0 : (n : 𝕜) ≠ 0 := Nat.cast_ne_zero.2 h.ne'
  rw [nsmul_eq_mul, mul_comm, ← div_eq_iff h0, ← a.ediv_add_emod' n, add_smul, add_div,
    zsmul_eq_mul, Int.cast_mul, Int.cast_natCast, mul_assoc, ← mul_div, mul_comm _ p,
    mul_div_cancel_right₀ p h0] at ha
  rw [← ha, coe_add, ← Int.cast_natCast, Int.natMod, Int.toNat_of_nonneg, zsmul_eq_mul,
    mul_div_right_comm, eq_comm, add_eq_right, ←zsmul_eq_mul, coe_zsmul, coe_period, smul_zero]
  exact Int.emod_nonneg _ (by exact_mod_cast h.ne')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddCircle/Variant8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddCircle/Variant8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6815a942dabfaf83f799770f87e460d55821c012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
