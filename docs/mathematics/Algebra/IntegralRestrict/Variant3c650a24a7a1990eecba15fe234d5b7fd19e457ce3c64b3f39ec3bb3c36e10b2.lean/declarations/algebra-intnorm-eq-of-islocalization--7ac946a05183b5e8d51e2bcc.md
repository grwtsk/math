# Algebra.intNorm_eq_of_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d63e02ca-97c4-4d3e-6a8f-0a78ed9afb6b",
  "kind": "lemma",
  "lexical_name": "Algebra.intNorm_eq_of_isLocalization",
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
  "slug": "algebra-intnorm-eq-of-islocalization--7ac946a05183b5e8d51e2bcc",
  "source": {
    "blob": "40382404349b2815648537a2bb46a3ce1953b233",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 490,
    "path": "GRWTSK/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ac946a05183b5e8d51e2bcc4b3f695611bdd2b76c73c46bca231e0bdbd2b7b0",
  "verification": {
    "reference": "docs/verification/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d63e02ca-97c4-4d3e-6a8f-0a78ed9afb6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.intNorm_eq_of_isLocalization [FiniteDimensional (FractionRing A) (FractionRing B)]
    (x : B) :
    algebraMap A Aₘ (Algebra.intNorm A B x) = Algebra.intNorm Aₘ Bₘ (algebraMap B Bₘ x) := by
  by_cases hM : 0 ∈ M
  · subsingleton [IsLocalization.uniqueOfZeroMem (S := Aₘ) hM]
  replace hM : M ≤ A⁰ := fun x hx ↦ mem_nonZeroDivisors_iff_ne_zero.mpr (fun e ↦ hM (e ▸ hx))
  let K := FractionRing A
  let L := FractionRing B
  let f : Aₘ →+* K := IsLocalization.map _ (T := A⁰) (RingHom.id A) hM
  let := f.toAlgebra
  have : IsScalarTower A Aₘ K := IsScalarTower.of_algebraMap_eq'
    (by rw [RingHom.algebraMap_toAlgebra, IsLocalization.map_comp, RingHomCompTriple.comp_eq])
  let := IsFractionRing.isFractionRing_of_isDomain_of_isLocalization M Aₘ K
  let g : Bₘ →+* L := IsLocalization.map _
      (M := algebraMapSubmonoid B M) (T := algebraMapSubmonoid B A⁰)
      (RingHom.id B) (Submonoid.monotone_map hM)
  let := g.toAlgebra
  have : IsScalarTower B Bₘ L := IsScalarTower.of_algebraMap_eq'
    (by rw [RingHom.algebraMap_toAlgebra, IsLocalization.map_comp, RingHomCompTriple.comp_eq])
  let := ((algebraMap K L).comp f).toAlgebra
  have : IsScalarTower Aₘ K L := IsScalarTower.of_algebraMap_eq' rfl
  have : IsScalarTower Aₘ Bₘ L := by
    apply IsScalarTower.of_algebraMap_eq'
    apply IsLocalization.ringHom_ext M
    rw [RingHom.algebraMap_toAlgebra, RingHom.algebraMap_toAlgebra (R := Bₘ), RingHom.comp_assoc,
      RingHom.comp_assoc, ← IsScalarTower.algebraMap_eq, IsScalarTower.algebraMap_eq A B Bₘ,
      IsLocalization.map_comp, RingHom.comp_id, ← RingHom.comp_assoc, IsLocalization.map_comp,
      RingHom.comp_id, ← IsScalarTower.algebraMap_eq, ← IsScalarTower.algebraMap_eq]
  let := IsFractionRing.isFractionRing_of_isDomain_of_isLocalization
    (algebraMapSubmonoid B M) Bₘ L
  have : IsIntegralClosure Bₘ Aₘ L :=
    IsIntegralClosure.of_isIntegrallyClosed _ _ _
  apply IsFractionRing.injective Aₘ K
  rw [← IsScalarTower.algebraMap_apply, Algebra.algebraMap_intNorm_fractionRing,
    Algebra.algebraMap_intNorm (L := L), ← IsScalarTower.algebraMap_apply]

end norm

variable [IsDomain A] [IsIntegrallyClosed A] [IsDomain B] [IsIntegrallyClosed B]
  [Module.Finite A B] [IsTorsionFree A B]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40382404349b2815648537a2bb46a3ce1953b233` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
