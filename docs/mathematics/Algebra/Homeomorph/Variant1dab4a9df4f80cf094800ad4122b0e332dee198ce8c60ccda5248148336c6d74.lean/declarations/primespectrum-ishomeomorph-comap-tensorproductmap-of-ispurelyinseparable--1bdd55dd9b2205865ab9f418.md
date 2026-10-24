# PrimeSpectrum.isHomeomorph_comap_tensorProductMap_of_isPurelyInseparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:956ad082-ccf6-1548-da20-12d459f6db40",
  "kind": "lemma",
  "lexical_name": "PrimeSpectrum.isHomeomorph_comap_tensorProductMap_of_isPurelyInseparable",
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
  "slug": "primespectrum-ishomeomorph-comap-tensorproductmap-of-ispurelyinseparable--1bdd55dd9b2205865ab9f418",
  "source": {
    "blob": "c82bc15aabdf28c0b1cb60e6304533c79851d986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 79,
    "path": "GRWTSK/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bdd55dd9b2205865ab9f418e4f3f87909d00b9bafcef874d437e276e3de8f36",
  "verification": {
    "reference": "docs/verification/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:956ad082-ccf6-1548-da20-12d459f6db40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PrimeSpectrum.isHomeomorph_comap_tensorProductMap_of_isPurelyInseparable [Algebra R K]
    [Algebra R S] (L : Type*) [Field L] [Algebra R L] [Algebra K L] [IsScalarTower R K L]
    [IsPurelyInseparable K L] :
    IsHomeomorph (comap (Algebra.TensorProduct.map (Algebra.ofId K L) (.id R S)).toRingHom) := by
  let e : (L ⊗[R] S) ≃ₐ[K] L ⊗[K] (K ⊗[R] S) :=
    (Algebra.TensorProduct.cancelBaseChange R K K L S).symm
  let e2 : L ⊗[K] (K ⊗[R] S) ≃ₐ[K] (K ⊗[R] S) ⊗[K] L := Algebra.TensorProduct.comm ..
  have heq : Algebra.TensorProduct.map (Algebra.ofId K L) (AlgHom.id R S) =
      (e.symm.toAlgHom.comp e2.symm.toAlgHom).comp
        (IsScalarTower.toAlgHom K (K ⊗[R] S) ((K ⊗[R] S) ⊗[K] L)) := by
    ext; simp [e, e2]
  rw [heq]
  simp only [AlgEquiv.toAlgHom_eq_coe, AlgHom.toRingHom_eq_coe, AlgHom.comp_toRingHom,
    AlgEquiv.toAlgHom_toRingHom, IsScalarTower.coe_toAlgHom, comap_comp, ContinuousMap.coe_comp]
  exact (isHomeomorph_comap_of_isPurelyInseparable K L (K ⊗[R] S)).comp <|
    (isHomeomorph_comap_of_bijective e2.symm.bijective).comp <|
    isHomeomorph_comap_of_bijective e.symm.bijective
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c82bc15aabdf28c0b1cb60e6304533c79851d986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
