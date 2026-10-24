# isJacobsonRing_polynomial_of_domain

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
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:244ef7e6-abb9-72e2-1a1e-10e9b28be664",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:415b8c0d-9374-5918-a8ec-dc1f16da2656",
  "kind": "theorem",
  "lexical_name": "isJacobsonRing_polynomial_of_domain",
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
  "slug": "isjacobsonring-polynomial-of-domain--0dfab8f550107b0fcd7a6e64",
  "source": {
    "blob": "59e34e0f184baf6a3ede242a0820c02ea4e616a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 384,
    "path": "GRWTSK/Algebra/Ring/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dfab8f550107b0fcd7a6e6444b4dd1f3d40fe553b2620be152ae7b53934a066",
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

Occurrence: `result:415b8c0d-9374-5918-a8ec-dc1f16da2656`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem isJacobsonRing_polynomial_of_domain (R : Type*) [CommRing R] [IsDomain R]
    [hR : IsJacobsonRing R] (P : Ideal R[X]) [IsPrime P] (hP : ∀ x : R, C x ∈ P → x = 0) :
    P.jacobson = P := by
  by_cases Pb : P = ⊥
  · exact Pb.symm ▸
      jacobson_bot_polynomial_of_jacobson_bot (hR.out isRadical_bot_of_noZeroDivisors)
  · rw [jacobson_eq_iff_jacobson_quotient_eq_bot]
    let P' := P.comap (C : R →+* R[X])
    haveI : P'.IsPrime := comap_isPrime C P
    haveI hR' : IsJacobsonRing (R ⧸ P') := by infer_instance
    obtain ⟨p, pP, p0⟩ := exists_nonzero_mem_of_ne_bot Pb hP
    let x := (Polynomial.map (Ideal.Quotient.mk P') p).leadingCoeff
    have hx : x ≠ 0 := by rwa [Ne, leadingCoeff_eq_zero]
    let φ : R ⧸ P' →+* R[X] ⧸ P := Ideal.quotientMap P (C : R →+* R[X]) le_rfl
    let hφ : Function.Injective ↑φ := quotientMap_injective
    let Rₘ := Localization.Away x
    let Sₘ := (Localization ((Submonoid.powers x).map φ : Submonoid (R[X] ⧸ P)))
    refine jacobson_bot_of_integral_localization (S := R[X] ⧸ P) (R := R ⧸ P') Rₘ Sₘ _ hφ _ hx ?_
    haveI islocSₘ : IsLocalization (Submonoid.map φ (Submonoid.powers x)) Sₘ := by infer_instance
    exact @isIntegral_isLocalization_polynomial_quotient R _ Rₘ Sₘ _ _ P p pP _ _ _ islocSₘ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e34e0f184baf6a3ede242a0820c02ea4e616a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
