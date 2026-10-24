# jacobiSum_mul_jacobiSum_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b2c5a59f4c30ec3302b7391a511ca2b0aa1255e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a396e1e3-353e-3d63-d62b-40e444c89d72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4ea28cb-c70e-23c5-3729-ef433c32930e",
  "kind": "lemma",
  "lexical_name": "jacobiSum_mul_jacobiSum_inv",
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
  "slug": "jacobisum-mul-jacobisum-inv--0bcd24c97c0a61ae5f3e67c2",
  "source": {
    "blob": "6b2c5a59f4c30ec3302b7391a511ca2b0aa1255e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 199,
    "path": "GRWTSK/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bcd24c97c0a61ae5f3e67c23b8c3d6e8493a53db1c9a5814d992057401cfc27",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4ea28cb-c70e-23c5-3729-ef433c32930e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma jacobiSum_mul_jacobiSum_inv (h : ringChar F' ≠ ringChar F) {χ φ : MulChar F F'} (hχ : χ ≠ 1)
    (hφ : φ ≠ 1) (hχφ : χ * φ ≠ 1) :
    jacobiSum χ φ * jacobiSum χ⁻¹ φ⁻¹ = Fintype.card F := by
  obtain ⟨n, hp, hc⟩ := FiniteField.card F (ringChar F)
  let ψ := FiniteField.primitiveChar F F' h   -- obtain primitive additive character `ψ : F → FF'`
  let FF' := CyclotomicField ψ.n F'           -- the target field of `ψ`
  let χ' := χ.ringHomComp (algebraMap F' FF') -- consider `χ` and `φ` as characters `F → FF'`
  let φ' := φ.ringHomComp (algebraMap F' FF')
  have hinj := (algebraMap F' FF').injective
  apply hinj
  rw [map_mul, ← jacobiSum_ringHomComp, ← jacobiSum_ringHomComp]
  have Hχφ : χ' * φ' ≠ 1 := by
    rw [← ringHomComp_mul]
    exact (MulChar.ringHomComp_ne_one_iff hinj).mpr hχφ
  have Hχφ' : χ'⁻¹ * φ'⁻¹ ≠ 1 := by
    rwa [← mul_inv, inv_ne_one]
  have Hχ : χ' ≠ 1 := (MulChar.ringHomComp_ne_one_iff hinj).mpr hχ
  have Hφ : φ' ≠ 1 := (MulChar.ringHomComp_ne_one_iff hinj).mpr hφ
  have Hcard : (Fintype.card F : FF') ≠ 0 := by
    intro H
    simp only [hc, Nat.cast_pow, ne_eq, PNat.ne_zero, not_false_eq_true, pow_eq_zero_iff] at H
    exact h <| (Algebra.ringChar_eq F' FF').trans <| CharP.ringChar_of_prime_eq_zero hp H
  have H := (gaussSum_mul_gaussSum_eq_card Hχφ ψ.prim).trans_ne Hcard
  apply_fun (gaussSum (χ' * φ') ψ.char * gaussSum (χ' * φ')⁻¹ ψ.char⁻¹ * ·)
    using mul_right_injective₀ H
  simp only
  rw [mul_mul_mul_comm, jacobiSum_mul_nontrivial Hχφ, mul_inv, ← ringHomComp_inv,
    ← ringHomComp_inv, jacobiSum_mul_nontrivial Hχφ', map_natCast, ← mul_mul_mul_comm,
    gaussSum_mul_gaussSum_eq_card Hχ ψ.prim, gaussSum_mul_gaussSum_eq_card Hφ ψ.prim,
    ← mul_inv, gaussSum_mul_gaussSum_eq_card Hχφ ψ.prim]

end field_field

section image

variable {F R : Type*} [Fintype F] [Field F] [CommRing R] [IsDomain R]

/-- If `χ` and `φ` are multiplicative characters on a finite field `F` satisfying `χ^n = φ^n = 1`
and with values in an integral domain `R`, and `μ` is a primitive `n`th root of unity in `R`,
then the Jacobi sum `J(χ,φ)` is in `ℤ[μ] ⊆ R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b2c5a59f4c30ec3302b7391a511ca2b0aa1255e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
