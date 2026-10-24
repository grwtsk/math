# isPrimitiveRoot_exp_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c45dfe9713a82e6500b0b4f2a9df82e924006f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e91d3b5e-c4e5-60ea-8510-ec3ed3b43b55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac75fd8b-7626-5558-075e-4277b55f4101",
  "kind": "theorem",
  "lexical_name": "isPrimitiveRoot_exp_of_coprime",
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
  "slug": "isprimitiveroot-exp-of-coprime--bb3c67ded577cd27fedbd714",
  "source": {
    "blob": "1c45dfe9713a82e6500b0b4f2a9df82e924006f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 32,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb3c67ded577cd27fedbd714faad7373a51f5c4e785461410e9ace2f053ae45e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac75fd8b-7626-5558-075e-4277b55f4101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrimitiveRoot_exp_of_coprime (i n : ℕ) (h0 : n ≠ 0) (hi : i.coprime n) :
    IsPrimitiveRoot (exp (2 * π * I * (i / n))) n := by
  rw [IsPrimitiveRoot.iff_def]
  simp only [← exp_nat_mul, exp_eq_one_iff]
  have hn0 : (n : ℂ) ≠ 0 := by exact_mod_cast h0
  constructor
  · use i
    field_simp [hn0, mul_comm (i : ℂ), mul_comm (n : ℂ)]
  · simp only [hn0, mul_right_comm _ _ ↑n, mul_left_inj' two_pi_I_ne_zero, Ne.def, not_false_iff,
      mul_comm _ (i : ℂ), ← mul_assoc _ (i : ℂ), exists_imp, field_simps]
    norm_cast
    rintro l k hk
    conv_rhs at hk => rw [mul_comm, ← mul_assoc]
    have hz : 2 * ↑π * I ≠ 0 := by simp [pi_pos.ne.symm, I_ne_zero]
    field_simp [hz] at hk
    norm_cast at hk
    have : n ∣ i * l := by rw [← Int.coe_nat_dvd, hk, mul_comm]; apply dvd_mul_left
    exact hi.symm.dvd_of_dvd_mul_left this
#align complex.is_primitive_root_exp_of_coprime Complex.isPrimitiveRoot_exp_of_coprime

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c45dfe9713a82e6500b0b4f2a9df82e924006f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
