# isJacobson_polynomial_of_isJacobson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ab91727-db99-986c-8024-b0280e739830",
  "kind": "theorem",
  "lexical_name": "isJacobson_polynomial_of_isJacobson",
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
  "slug": "isjacobson-polynomial-of-isjacobson--fccb30b5897fea388c3b954d",
  "source": {
    "blob": "e8468b041b4419287f77937e8b89c347f23bf87f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 445,
    "path": "GRWTSK/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fccb30b5897fea388c3b954d1cd45ec7b2b5b94a784bed8e3359e830d422c699",
  "verification": {
    "reference": "docs/verification/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ab91727-db99-986c-8024-b0280e739830`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isJacobson_polynomial_of_isJacobson (hR : IsJacobson R) : IsJacobson R[X] := by
  rw [isJacobson_iff_prime_eq]
  intro I hI
  let R' : Subring (R[X] ⧸ I) := ((Quotient.mk I).comp C).range
  let i : R →+* R' := ((Quotient.mk I).comp C).rangeRestrict
  have hi : Function.Surjective ↑i := ((Quotient.mk I).comp C).rangeRestrict_surjective
  have hi' : RingHom.ker (mapRingHom i) ≤ I
  · intro f hf
    apply polynomial_mem_ideal_of_coeff_mem_ideal I f
    intro n
    replace hf := congrArg (fun g : Polynomial ((Quotient.mk I).comp C).range => g.coeff n) hf
    change (Polynomial.map ((Quotient.mk I).comp C).rangeRestrict f).coeff n = 0 at hf
    rw [coeff_map, Subtype.ext_iff] at hf
    rwa [mem_comap, ← Quotient.eq_zero_iff_mem, ← RingHom.comp_apply]
  have R'_jacob : IsJacobson R' := isJacobson_of_surjective ⟨i, hi⟩
  let J := map (mapRingHom i) I
  -- Porting note: moved ↓ this up a few lines, so that it can be used in the `have`
  have h_surj : Function.Surjective (mapRingHom i) := Polynomial.map_surjective i hi
  have : IsPrime J := map_isPrime_of_surjective h_surj hi'
  suffices h : J.jacobson = J
  · replace h := congrArg (comap (Polynomial.mapRingHom i)) h
    rw [← map_jacobson_of_surjective h_surj hi', comap_map_of_surjective _ h_surj,
      comap_map_of_surjective _ h_surj] at h
    refine le_antisymm ?_ le_jacobson
    exact le_trans (le_sup_of_le_left le_rfl) (le_trans (le_of_eq h) (sup_le le_rfl hi'))
  apply isJacobson_polynomial_of_domain R' J
  exact (eq_zero_of_polynomial_mem_map_range I)
#align ideal.polynomial.is_jacobson_polynomial_of_is_jacobson Ideal.Polynomial.isJacobson_polynomial_of_isJacobson

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8468b041b4419287f77937e8b89c347f23bf87f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
