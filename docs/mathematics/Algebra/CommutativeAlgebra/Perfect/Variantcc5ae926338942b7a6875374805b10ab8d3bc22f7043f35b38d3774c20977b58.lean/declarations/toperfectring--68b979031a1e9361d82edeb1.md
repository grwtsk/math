# toPerfectRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:151d107fdd52eff6199ba4a13f4cefce3f4bc3c773fd464fccd55cda9d80b95f",
  "kind": "instance",
  "lexical_name": "toPerfectRing",
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
  "slug": "toperfectring--68b979031a1e9361d82edeb1",
  "source": {
    "blob": "61bbf53606e28df8b56ca897475705124e945f5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 151,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68b979031a1e9361d82edeb14171b6628df1a9a908dd520f9dc03ee17845c472",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:151d107fdd52eff6199ba4a13f4cefce3f4bc3c773fd464fccd55cda9d80b95f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance toPerfectRing (p : ℕ) [hp : Fact p.Prime] [CharP K p] : PerfectRing K p := by
  refine' PerfectRing.ofSurjective _ _ $ fun y ↦ _
  let f : K[X] := X ^ p - C y
  let L := f.SplittingField
  let ι := algebraMap K L
  have hf_deg : f.degree ≠ 0 := by
    rw [degree_X_pow_sub_C hp.out.pos y, p.cast_ne_zero]; exact hp.out.ne_zero
  let a : L := f.rootOfSplits ι (SplittingField.splits f) hf_deg
  have hfa : aeval a f = 0 := by rw [aeval_def, map_rootOfSplits _ (SplittingField.splits f) hf_deg]
  have ha_pow : a ^ p = ι y := by rwa [AlgHom.map_sub, aeval_X_pow, aeval_C, sub_eq_zero] at hfa
  let g : K[X] := minpoly K a
  suffices : (g.map ι).natDegree = 1
  · rw [g.natDegree_map, ← degree_eq_iff_natDegree_eq_of_pos Nat.one_pos] at this
    obtain ⟨a' : K, ha' : ι a' = a⟩ := minpoly.mem_range_of_degree_eq_one K a this
    refine' ⟨a', NoZeroSMulDivisors.algebraMap_injective K L _⟩
    rw [RingHom.map_frobenius, ha', frobenius_def, ha_pow]
  have hg_dvd : g.map ι ∣ (X - C a) ^ p := by
    convert Polynomial.map_dvd ι (minpoly.dvd K a hfa)
    rw [sub_pow_char, Polynomial.map_sub, Polynomial.map_pow, map_X, map_C, ← ha_pow, map_pow]
  have ha : IsIntegral K a := isIntegral_of_finite K a
  have hg_pow : g.map ι = (X - C a) ^ (g.map ι).natDegree := by
    obtain ⟨q, -, hq⟩ := (dvd_prime_pow (prime_X_sub_C a) p).mp hg_dvd
    rw [eq_of_monic_of_associated ((minpoly.monic ha).map ι) ((monic_X_sub_C a).pow q) hq,
      natDegree_pow, natDegree_X_sub_C, mul_one]
  have hg_sep : (g.map ι).Separable := (separable_of_irreducible $ minpoly.irreducible ha).map
  rw [hg_pow] at hg_sep
  refine' (Separable.of_pow (not_isUnit_X_sub_C a) _ hg_sep).2
  rw [g.natDegree_map ι, ← Nat.pos_iff_ne_zero, natDegree_pos_iff_degree_pos]
  exact minpoly.degree_pos ha

end PerfectField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Perfect/Variantcc5ae926338942b7a6875374805b10ab8d3bc22f7043f35b38d3774c20977b58.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61bbf53606e28df8b56ca897475705124e945f5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
