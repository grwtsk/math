# eq_X_pow_char_pow_sub_C_pow_of_natSepDegree_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5bf4540985e4ca58160e62e2b1ee530f01c1b98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 587,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22b0ac2d-c3de-7b5f-4888-6851c38cfe26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f35919b-8989-cde9-c38d-2bc0eb330596",
  "kind": "theorem",
  "lexical_name": "eq_X_pow_char_pow_sub_C_pow_of_natSepDegree_eq_one",
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
  "slug": "eq-x-pow-char-pow-sub-c-pow-of-natsepdegree-eq-one--aa67bba6746d99525cfb4f4a",
  "source": {
    "blob": "a5bf4540985e4ca58160e62e2b1ee530f01c1b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 608,
    "line": 587,
    "path": "GRWTSK/Algebra/SeparableDegree/Variantfb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa67bba6746d99525cfb4f4a168b250dca7a10be71ab99531f2aacb98a9d5ef3",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableDegree/Variantfb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f35919b-8989-cde9-c38d-2bc0eb330596`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 587–608.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_X_pow_char_pow_sub_C_pow_of_natSepDegree_eq_one (q : ℕ) [ExpChar F q] (hm : f.Monic)
    (h : f.natSepDegree = 1) : ∃ (m n : ℕ) (y : F),
      m ≠ 0 ∧ (n = 0 ∨ y ∉ (frobenius F q).range) ∧ f = (X ^ q ^ n - C y) ^ m := by
  obtain ⟨p, hM, hI, hf⟩ := exists_monic_irreducible_factor _ <| not_isUnit_of_natDegree_pos _
    <| Nat.pos_of_ne_zero <| (natSepDegree_ne_zero_iff _).1 (h.symm ▸ Nat.one_ne_zero)
  have hD := (h ▸ natSepDegree_le_of_dvd p f hf hm.ne_zero).antisymm <|
    Nat.pos_of_ne_zero <| (natSepDegree_ne_zero_iff _).2 hI.natDegree_pos.ne'
  obtain ⟨n, y, H, hp⟩ := hM.eq_X_pow_char_pow_sub_C_of_natSepDegree_eq_one_of_irreducible q hI hD
  have hF := finiteMultiplicity_of_degree_pos_of_monic (degree_pos_of_irreducible hI) hM hm.ne_zero
  classical
  have hne := (multiplicity_pos_of_dvd hf).ne'
  refine ⟨_, n, y, hne, H, ?_⟩
  obtain ⟨c, hf, H⟩ := hF.exists_eq_pow_mul_and_not_dvd
  rw [hf, natSepDegree_mul_of_isCoprime _ c <| IsCoprime.pow_left <|
    (hI.isCoprime_or_dvd c).resolve_right H, natSepDegree_pow_of_ne_zero _ hne, hD,
    add_eq_left, natSepDegree_eq_zero_iff] at h
  simpa only [eq_one_of_monic_natDegree_zero ((hM.pow _).of_mul_monic_left (hf ▸ hm)) h,
    mul_one, ← hp] using hf

/-- A monic polynomial over a field `F` of exponential characteristic `q` has separable degree one
if and only if it is of the form `(X ^ (q ^ n) - C y) ^ m` for some non-zero natural number `m`,
some natural number `n`, and some element `y` of `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SeparableDegree/Variantfb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableDegree/Variantfb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean#L587).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5bf4540985e4ca58160e62e2b1ee530f01c1b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
