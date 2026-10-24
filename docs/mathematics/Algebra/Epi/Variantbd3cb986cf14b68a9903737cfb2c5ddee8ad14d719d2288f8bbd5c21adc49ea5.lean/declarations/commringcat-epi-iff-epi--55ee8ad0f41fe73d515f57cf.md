# CommRingCat.epi_iff_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1f8e28d-1930-17f9-2487-e030e06182d0",
  "kind": "lemma",
  "lexical_name": "CommRingCat.epi_iff_epi",
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
  "slug": "commringcat-epi-iff-epi--55ee8ad0f41fe73d515f57cf",
  "source": {
    "blob": "acb57d817f14270bf431603e1fa83f52659ed841",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 34,
    "path": "GRWTSK/Algebra/Epi/Variantbd3cb986cf14b68a9903737cfb2c5ddee8ad14d719d2288f8bbd5c21adc49ea5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55ee8ad0f41fe73d515f57cf051a6b3d1340307bf954bc019cc3fa6f1d8f5b53",
  "verification": {
    "reference": "docs/verification/Algebra/Epi/Variantbd3cb986cf14b68a9903737cfb2c5ddee8ad14d719d2288f8bbd5c21adc49ea5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1f8e28d-1930-17f9-2487-e030e06182d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CommRingCat.epi_iff_epi {R S : Type u} [CommRing R] [CommRing S] [Algebra R S] :
    Epi (CommRingCat.ofHom (algebraMap R S)) ↔ Algebra.IsEpi R S := by
  simp_rw [Algebra.isEpi_iff_forall_one_tmul_eq, eq_comm]
  constructor
  · intro H
    have := H.1 (CommRingCat.ofHom <| Algebra.TensorProduct.includeLeftRingHom)
      (CommRingCat.ofHom <| (Algebra.TensorProduct.includeRight (R := R) (A := S)).toRingHom)
      (by ext r; change algebraMap R S r ⊗ₜ 1 = 1 ⊗ₜ algebraMap R S r;
          simp only [Algebra.algebraMap_eq_smul_one, smul_tmul])
    exact RingHom.congr_fun (congrArg Hom.hom this)
  · refine fun H ↦ ⟨fun {T} f g e ↦ ?_⟩
    let : Algebra R T := (ofHom (algebraMap R S) ≫ g).hom.toAlgebra
    let f' : S →ₐ[R] T := ⟨f.hom, RingHom.congr_fun (congrArg Hom.hom e)⟩
    let g' : S →ₐ[R] T := ⟨g.hom, fun _ ↦ rfl⟩
    ext s
    simpa using! congr(Algebra.TensorProduct.lift f' g' (fun _ _ ↦ .all _ _) $(H s))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Epi/Variantbd3cb986cf14b68a9903737cfb2c5ddee8ad14d719d2288f8bbd5c21adc49ea5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Epi/Variantbd3cb986cf14b68a9903737cfb2c5ddee8ad14d719d2288f8bbd5c21adc49ea5.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acb57d817f14270bf431603e1fa83f52659ed841` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
