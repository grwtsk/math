# aux_IH

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ff7c7cd-7804-7dda-e505-00525cbb7dc3",
  "kind": "lemma",
  "lexical_name": "aux_IH",
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
  "slug": "aux-ih--4ebe9c9dfd468c281dafc175",
  "source": {
    "blob": "e8468b041b4419287f77937e8b89c347f23bf87f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 695,
    "line": 665,
    "path": "GRWTSK/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ebe9c9dfd468c281dafc17553ff804c2e669d11c03aa71e5f676544257acb87",
  "verification": {
    "reference": "docs/verification/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ff7c7cd-7804-7dda-e505-00525cbb7dc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 665–695.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma aux_IH {R : Type u} {S : Type v} {T : Type w}
  [CommRing R] [CommRing S] [CommRing T] [IsJacobson S] [Algebra R S] [Algebra R T]
  (IH : ∀ (Q : Ideal S), (IsMaximal Q) → RingHom.IsIntegral (algebraMap R (S ⧸ Q)))
  (v : S[X] ≃ₐ[R] T) (P : Ideal T) (hP : P.IsMaximal) :
  RingHom.IsIntegral (algebraMap R (T ⧸ P)) := by
  let Q := P.comap v.toAlgHom.toRingHom
  have hw : Ideal.map v Q = P := map_comap_of_surjective v v.surjective P
  haveI hQ : IsMaximal Q := comap_isMaximal_of_surjective _ v.surjective
  let w : (S[X] ⧸ Q) ≃ₐ[R] (T ⧸ P) := Ideal.quotientEquivAlg Q P v hw.symm
  let Q' := Q.comap (Polynomial.C)
  let w' : (S ⧸ Q') →ₐ[R] (S[X] ⧸ Q) := Ideal.quotientMapₐ Q (Cₐ R S) le_rfl
  have h_eq : algebraMap R (T ⧸ P) =
    w.toRingEquiv.toRingHom.comp (w'.toRingHom.comp (algebraMap R (S ⧸ Q'))) := by
    ext r
    simp only [AlgEquiv.toAlgHom_eq_coe, AlgHom.toRingHom_eq_coe, AlgEquiv.toRingEquiv_eq_coe,
      RingEquiv.toRingHom_eq_coe, AlgHom.comp_algebraMap_of_tower, coe_comp, coe_coe,
      AlgEquiv.coe_ringEquiv, Function.comp_apply, AlgEquiv.commutes]
  rw [h_eq]
  apply RingHom.isIntegral_trans
  apply RingHom.isIntegral_trans
  · apply IH
    apply Polynomial.isMaximal_comap_C_of_isJacobson'
    exact hQ
  · suffices : w'.toRingHom = Ideal.quotientMap Q (Polynomial.C) le_rfl
    · rw [this]
      rw [isIntegral_quotientMap_iff _]
      apply Polynomial.quotient_mk_comp_C_isIntegral_of_jacobson
    · rfl
  · apply RingHom.isIntegral_of_surjective
    exact w.surjective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Jacobson/Variant844947649674691286dabe560f1ccef63da94aa7bf8bf5cf859aeaf1d9dcdff8.lean#L665).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8468b041b4419287f77937e8b89c347f23bf87f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
