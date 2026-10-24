# exists_pow_Uniformizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7af84f7a1a36036fbf18bc04ace2360fb5422cd9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56536e709daf5b64965fc476e3bb7e47e84b9dcb9d100f04bf36de045a19128c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ab72ffd-6e68-5f44-ab54-377488adabc7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50919df7-e48c-81a5-6af3-a579d91fef27",
  "kind": "theorem",
  "lexical_name": "exists_pow_Uniformizer",
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
  "slug": "exists-pow-uniformizer--cfc403fde4785b8db5507925",
  "source": {
    "blob": "7af84f7a1a36036fbf18bc04ace2360fb5422cd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 337,
    "path": "GRWTSK/Algebra/Basic/Variant56536e709daf5b64965fc476e3bb7e47e84b9dcb9d100f04bf36de045a19128c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfc403fde4785b8db5507925f8774bab5bc42d70e706dd59d4c79c457aef2693",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant56536e709daf5b64965fc476e3bb7e47e84b9dcb9d100f04bf36de045a19128c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50919df7-e48c-81a5-6af3-a579d91fef27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pow_Uniformizer {r : K₀} (hr : r ≠ 0) (π : Uniformizer v) :
    ∃ n : ℕ, ∃ u : K₀ˣ, r = (π.1 ^ n).1 * u.1 := by
  have hr₀ : v r ≠ 0 := by rw [ne_eq, zero_iff, Subring.coe_eq_zero_iff]; exact hr
  set vr : Γˣ := Units.mk0 (v r) hr₀ with hvr_def
  have hvr : vr ∈ (valueGroup (.ofClass v)) := by
    apply mem_valueGroup
    rw [hvr_def, Units.val_mk0 hr₀]
    exact mem_range_self _
  rw [π.2.zpowers_eq_valueGroup, mem_zpowers_iff] at hvr
  obtain ⟨m, hm⟩ := hvr
  have hm' : v π.val ^ m = v r := by
    rw [hvr_def] at hm
    rw [← Units.val_mk0 hr₀, ← hm]
    simp [Units.val_zpow_eq_zpow_val, Units.val_mk0]
  have hm₀ : 0 ≤ m := by
    rw [← zpow_le_one_iff_right_of_lt_one₀ π.2.val_pos π.2.val_lt_one, hm']
    exact r.2
  obtain ⟨n, hn⟩ := Int.eq_ofNat_of_zero_le hm₀
  use n
  have hpow : v (π.1.1 ^ (-m) * r) = 1 := by
    rw [map_mul, map_zpow₀, ← hm', zpow_neg, hm', inv_mul_cancel₀ hr₀]
  set a : K₀ := ⟨π.1.1 ^ (-m) * r, by apply le_of_eq hpow⟩ with ha
  have ha₀ : (↑a : K) ≠ 0 := by
    simp only [zpow_neg, ne_eq, mul_eq_zero, inv_eq_zero, ZeroMemClass.coe_eq_zero, not_or, ha]
    refine ⟨?_, hr⟩
    rw [hn, zpow_natCast, pow_eq_zero_iff', not_and_or]
    exact Or.inl π.ne_zero
  have h_unit_a : IsUnit a :=
    Integers.isUnit_of_one (integer.integers v) (isUnit_iff_ne_zero.mpr ha₀) hpow
  use h_unit_a.unit
  rw [IsUnit.unit_spec, Subring.coe_pow, ha, ← mul_assoc, zpow_neg, hn, zpow_natCast,
    mul_inv_cancel₀ (pow_ne_zero _ π.ne_zero), one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant56536e709daf5b64965fc476e3bb7e47e84b9dcb9d100f04bf36de045a19128c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant56536e709daf5b64965fc476e3bb7e47e84b9dcb9d100f04bf36de045a19128c.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7af84f7a1a36036fbf18bc04ace2360fb5422cd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
