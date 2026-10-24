# isJacobsonRing_polynomial_of_isJacobsonRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59e34e0f184baf6a3ede242a0820c02ea4e616a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 405,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d675fca8-fd47-1ca1-8c1d-b393eb5c113d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0cb9e28-48af-8c98-751d-4c1b0dcd7500",
  "kind": "theorem",
  "lexical_name": "isJacobsonRing_polynomial_of_isJacobsonRing",
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
  "slug": "isjacobsonring-polynomial-of-isjacobsonring--73a7c5af6a1d62618bda79f8",
  "source": {
    "blob": "59e34e0f184baf6a3ede242a0820c02ea4e616a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 405,
    "path": "GRWTSK/Algebra/Ring/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73a7c5af6a1d62618bda79f87c7b3c39470cb6d2c64edf7190b3ccaba39033d5",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0cb9e28-48af-8c98-751d-4c1b0dcd7500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isJacobsonRing_polynomial_of_isJacobsonRing (hR : IsJacobsonRing R) :
    IsJacobsonRing R[X] := by
  rw [isJacobsonRing_iff_prime_eq]
  intro I hI
  let R' : Subring (R[X] ⧸ I) := ((Ideal.Quotient.mk I).comp C).range
  let i : R →+* R' := ((Ideal.Quotient.mk I).comp C).rangeRestrict
  have hi : Function.Surjective ↑i := ((Ideal.Quotient.mk I).comp C).rangeRestrict_surjective
  have hi' : RingHom.ker (mapRingHom i) ≤ I := by
    intro f hf
    apply polynomial_mem_ideal_of_coeff_mem_ideal I f
    intro n
    replace hf := congrArg (fun g : Polynomial ((Ideal.Quotient.mk I).comp C).range => g.coeff n) hf
    change (Polynomial.map ((Ideal.Quotient.mk I).comp C).rangeRestrict f).coeff n = 0 at hf
    rw [coeff_map, Subtype.ext_iff] at hf
    rwa [mem_comap, ← Quotient.eq_zero_iff_mem, ← RingHom.comp_apply]
  have R'_jacob : IsJacobsonRing R' := isJacobsonRing_of_surjective ⟨i, hi⟩
  let J := I.map (mapRingHom i)
  -- Porting note: moved ↓ this up a few lines, so that it can be used in the `have`
  have h_surj : Function.Surjective (mapRingHom i) := Polynomial.map_surjective i hi
  have : IsPrime J := map_isPrime_of_surjective h_surj hi'
  suffices h : J.jacobson = J by
    replace h := congrArg (comap (Polynomial.mapRingHom i)) h
    rw [← map_jacobson_of_surjective h_surj hi', comap_map_of_surjective _ h_surj,
      comap_map_of_surjective _ h_surj] at h
    refine le_antisymm ?_ le_jacobson
    exact le_trans (le_sup_of_le_left le_rfl) (le_trans (le_of_eq h) (sup_le le_rfl hi'))
  apply isJacobsonRing_polynomial_of_domain R' J
  exact eq_zero_of_polynomial_mem_map_range I

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e34e0f184baf6a3ede242a0820c02ea4e616a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
