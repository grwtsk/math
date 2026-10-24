# eq_X_pow_char_pow_sub_C_pow_of_natSepDegree_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:242d50b7-bd88-6a1c-8686-c0eee0c08af4",
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
  "slug": "eq-x-pow-char-pow-sub-c-pow-of-natsepdegree-eq-one--67fb39e11fee019fbb9ff593",
  "source": {
    "blob": "c2781d2f1988236663c814b18c761f967d3d7081",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 616,
    "line": 595,
    "path": "GRWTSK/Algebra/SeparableDegree/Variant1e8e3634a15f533c85062b0c5477df035f9bf6fcf65ba358fbbb0ff7b8c6f8be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67fb39e11fee019fbb9ff5930f2d6c16af3feab450b73884ce8037db4cc3b686",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableDegree/Variant1e8e3634a15f533c85062b0c5477df035f9bf6fcf65ba358fbbb0ff7b8c6f8be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:242d50b7-bd88-6a1c-8686-c0eee0c08af4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 595–616.

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

[Verification target and public status](../../../../../verification/Algebra/SeparableDegree/Variant1e8e3634a15f533c85062b0c5477df035f9bf6fcf65ba358fbbb0ff7b8c6f8be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableDegree/Variant1e8e3634a15f533c85062b0c5477df035f9bf6fcf65ba358fbbb0ff7b8c6f8be.lean#L595).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2781d2f1988236663c814b18c761f967d3d7081` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
