# map_wittStructureInt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eed952ff3d28fff79a6870c87ca9421776486fb4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca71bc0fa8916d911550afe0cfd0b4f7eff43e35409a1888264d43781038555b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4561a3a3-f73c-2a23-b41b-282779242564",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c3d2a24-e409-a0cc-5486-bf6cac054444",
  "kind": "theorem",
  "lexical_name": "map_wittStructureInt",
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
  "slug": "map-wittstructureint--6b343c7f51d8cb889345c47e",
  "source": {
    "blob": "eed952ff3d28fff79a6870c87ca9421776486fb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 266,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variantca71bc0fa8916d911550afe0cfd0b4f7eff43e35409a1888264d43781038555b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b343c7f51d8cb889345c47e37952274d9594156e25583b73c1081892fd7d1db",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variantca71bc0fa8916d911550afe0cfd0b4f7eff43e35409a1888264d43781038555b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c3d2a24-e409-a0cc-5486-bf6cac054444`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_wittStructureInt (Φ : MvPolynomial idx ℤ) (n : ℕ) :
    map (Int.castRingHom ℚ) (wittStructureInt p Φ n) =
      wittStructureRat p (map (Int.castRingHom ℚ) Φ) n := by
  induction n using Nat.strong_induction_on with | h n IH => ?_
  rw [wittStructureInt, map_mapRange_eq_iff, Int.coe_castRingHom]
  intro c
  rw [wittStructureRat_rec, coeff_C_mul, mul_comm, mul_div_assoc', mul_one]
  have sum_induction_steps :
      map (Int.castRingHom ℚ)
        (∑ i ∈ range n, C ((p : ℤ) ^ i) * wittStructureInt p Φ i ^ p ^ (n - i)) =
      ∑ i ∈ range n,
        C ((p : ℚ) ^ i) * wittStructureRat p (map (Int.castRingHom ℚ) Φ) i ^ p ^ (n - i) := by
    rw [map_sum]
    apply Finset.sum_congr rfl
    intro i hi
    rw [Finset.mem_range] at hi
    simp only [IH i hi, map_mul, map_pow, map_C]
    rfl
  simp only [← sum_induction_steps, ← map_wittPolynomial p (Int.castRingHom ℚ), ← map_rename, ←
    map_bind₁, ← map_sub, coeff_map]
  rw [show (p : ℚ) ^ n = ((↑(p ^ n) : ℤ) : ℚ) by norm_cast]
  rw [← Rat.den_eq_one_iff, eq_intCast, Rat.den_div_intCast_eq_one_iff]
  swap; · exact mod_cast pow_ne_zero n hp.1.ne_zero
  revert c; rw [← C_dvd_iff_dvd_coeff]
  exact C_p_pow_dvd_bind₁_rename_wittPolynomial_sub_sum Φ n IH

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variantca71bc0fa8916d911550afe0cfd0b4f7eff43e35409a1888264d43781038555b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variantca71bc0fa8916d911550afe0cfd0b4f7eff43e35409a1888264d43781038555b.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eed952ff3d28fff79a6870c87ca9421776486fb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
