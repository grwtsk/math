# PrimeSpectrum.comap_surjective_iff_injective_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca8bcae5-cfbe-ff1d-f65a-1cf32f7e7081",
  "kind": "lemma",
  "lexical_name": "PrimeSpectrum.comap_surjective_iff_injective_of_finite",
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
  "slug": "primespectrum-comap-surjective-iff-injective-of-finite--6d61c72027c07cacefcbe2d2",
  "source": {
    "blob": "f2856d3375b29633a78e0745b9910f627fe39555",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d61c72027c07cacefcbe2d277addaf80a01ed318159ab1ad881fc11af1b29af",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca8bcae5-cfbe-ff1d-f65a-1cf32f7e7081`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PrimeSpectrum.comap_surjective_iff_injective_of_finite :
    (PrimeSpectrum.comap (algebraMap R S)).Surjective ↔ Function.Injective (algebraMap R S) := by
  refine ⟨fun h ↦ ?_, fun h ↦
    have : FaithfulSMul R S := (faithfulSMul_iff_algebraMap_injective R S).mpr h
    Algebra.IsIntegral.comap_surjective _ _⟩
  apply injective_of_isLocalization_isMaximal (fun P _ ↦ Localization.AtPrime P)
    (fun P _ ↦ Localization.AtPrime P ⊗[R] S)
  intro p _
  rw [← faithfulSMul_iff_algebraMap_injective]
  obtain ⟨⟨Q, _⟩, hQ⟩ := h ⟨p, inferInstance⟩
  have : Q.LiesOver p := ⟨congr($(hQ).asIdeal).symm⟩
  let := Localization.AtPrime.algebraOfLiesOver p Q
  have : Nontrivial (Localization.AtPrime p ⊗[R] S) := by
    let f : Localization.AtPrime p ⊗[R] S →ₐ[R] Localization.AtPrime Q :=
      Algebra.TensorProduct.lift (IsScalarTower.toAlgHom R _ _)
        (IsScalarTower.toAlgHom R S _) (fun _ _ ↦ Commute.all _ _)
    exact f.domain_nontrivial
  infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variant32015b2cecccd8d25317d35f5225b35e96c8dce7e43254185cb996e17f7fd69b.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2856d3375b29633a78e0745b9910f627fe39555` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
