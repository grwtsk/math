# irrational_of_isRoot_T_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "724dd1124087dcbceb37803144d7e849716a8ef5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc2d99d0-3b7b-4020-2458-259ac03f210e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:432f9631-f2e0-1de7-7b40-6961032bab44",
  "kind": "theorem",
  "lexical_name": "irrational_of_isRoot_T_real",
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
  "slug": "irrational-of-isroot-t-real--21a901df73c2e719be7458be",
  "source": {
    "blob": "724dd1124087dcbceb37803144d7e849716a8ef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 315,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21a901df73c2e719be7458be41f256fc151bcfdad5c4d294d3b337628a3548fb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:432f9631-f2e0-1de7-7b40-6961032bab44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irrational_of_isRoot_T_real {n : ℕ} {x : ℝ} (hroot : (T ℝ n).IsRoot x) (hnz : x ≠ 0) :
    Irrational x := by
  rw [← mem_roots (T_ne_zero ℝ n), roots_T_real, Finset.mem_val] at hroot
  obtain ⟨k, hk₁, hk₂⟩ := Finset.mem_image.mp hroot
  have hn : n ≠ 0 := by grind
  suffices Irrational (cos ((Rat.divInt (2 * k + 1) (2 * n)) * π)) by
    rw [← hk₂]; convert! this using 2; push_cast; field_simp
  apply irrational_cos_rat_mul_pi
  contrapose! hnz
  have : (Rat.divInt (2 * k + 1) (2 * n)).den = 2 * (n / n.gcd (2 * k + 1)) := calc
    _ = 2 * n / (2 * n).gcd (2 * k + 1) := by rw [Rat.den_divInt]; norm_cast; simp [hn]
    _ = _ := by rw [Nat.Coprime.gcd_mul_left_cancel n (by simp),
      Nat.mul_div_assoc _ (Nat.gcd_dvd_left ..)]
  have hn : 2 * k + 1 = n := Nat.eq_of_dvd_of_lt_two_mul (by simp) (Nat.gcd_eq_left_iff_dvd.mp <|
    Nat.eq_of_dvd_of_div_eq_one (Nat.gcd_dvd_left ..) (by grind [Rat.den_pos])) (by grind)
  rw_mod_cast [← hk₂, hn]; convert! cos_pi_div_two using 2; push_cast; field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `724dd1124087dcbceb37803144d7e849716a8ef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
