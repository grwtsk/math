# baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec2607928279b60b2eacaf26b7ce5b7ca07739cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe88c72a-6a18-f238-29e8-b3e873c70c99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25644ace-c49e-ad5c-3f5e-749ce5df20a1",
  "kind": "lemma",
  "lexical_name": "baseChange",
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
  "slug": "basechange--0f33bfd87dcf8cb4d26753f2",
  "source": {
    "blob": "ec2607928279b60b2eacaf26b7ce5b7ca07739cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 168,
    "path": "GRWTSK/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f33bfd87dcf8cb4d26753f236435e0172f6fbe6680ed93ad7e03d0b9abbf6a3",
  "verification": {
    "reference": "docs/verification/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25644ace-c49e-ad5c-3f5e-749ce5df20a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma baseChange (p : Ideal S) [p.IsPrime] [WeaklyQuasiFiniteAt R p]
    {A : Type*} [CommRing A] [Algebra R A] (q : Ideal (A ⊗[R] S)) [q.IsPrime]
    (hq : p = q.comap TensorProduct.includeRight.toRingHom) :
    WeaklyQuasiFiniteAt A q := by
  delta WeaklyQuasiFiniteAt at *
  let φ : A ⊗[R] S →ₐ[A] (A ⧸ q.under A) ⊗[R] (S ⧸ (p.under R).map (algebraMap R S)) :=
    Algebra.TensorProduct.map (Ideal.Quotient.mkₐ _ _) (Ideal.Quotient.mkₐ _ _)
  have hφ₁ : Function.Surjective φ :=
    Algebra.TensorProduct.map_surjective _ _
      Ideal.Quotient.mk_surjective Ideal.Quotient.mk_surjective
  have hφ₂ : RingHom.ker φ.toRingHom = (q.under A).map (algebraMap _ _) := by
    refine (Algebra.TensorProduct.map_ker _ _
      Ideal.Quotient.mk_surjective Ideal.Quotient.mk_surjective).trans ?_
    rw [← RingHom.ker_coe_toRingHom, ← RingHom.ker_coe_toRingHom (F := AlgHom _ _ _),
      ← Ideal.map_coe, ← Ideal.map_coe (F := AlgHom _ _ _)]
    simp only [Ideal.under, Ideal.Quotient.mkₐ_ker, hq, AlgHom.toRingHom_eq_coe, Ideal.comap_comap,
      AlgHom.comp_algebraMap_of_tower, Ideal.map_map]
    refine sup_eq_left.mpr ?_
    simp only [← TensorProduct.includeLeft.comp_algebraMap, ← Ideal.map_map, ← Ideal.comap_comap]
    exact Ideal.map_mono Ideal.map_comap_le
  have hφ₃ : φ.toRingHom.comp Algebra.TensorProduct.includeRight.toRingHom =
      Algebra.TensorProduct.includeRight.toRingHom.comp (Ideal.Quotient.mk _) := rfl
  have : (Ideal.map φ.toRingHom q).IsPrime :=
    Ideal.map_isPrime_of_surjective ‹_› <| hφ₂.trans_le Ideal.map_comap_le
  have := QuasiFiniteAt.baseChange (R := R) (S := _) (A := A ⧸ q.under A)
    (p.map (Ideal.Quotient.mk ((p.under R).map (algebraMap R S)))) (q.map φ.toRingHom) (by
    apply Ideal.comap_injective_of_surjective _ Ideal.Quotient.mk_surjective
    rwa [Ideal.comap_map_of_surjective _ Ideal.Quotient.mk_surjective, Ideal.comap_comap,
      ← RingHom.ker_eq_comap_bot, Ideal.mk_ker, sup_eq_left.mpr Ideal.map_comap_le,
      ← hφ₃, ← Ideal.comap_comap, Ideal.comap_map_of_surjective _ (by exact hφ₁),
      ← RingHom.ker_eq_comap_bot, hφ₂, sup_eq_left.mpr Ideal.map_comap_le])
  have : QuasiFiniteAt A (q.map φ.toRingHom) := .trans _ (A ⧸ q.under A) _
  let e := (Ideal.quotientEquivAlg ((q.under A).map (algebraMap _ _)) _ (.refl) (by simpa)).trans
    (Ideal.quotientKerAlgEquivOfSurjective hφ₁)
  refine .of_surjectiveOnStalks (q.map φ.toRingHom) e.symm.toAlgHom
    e.symm.toRingEquiv.surjectiveOnStalks _ ?_
  erw [Ideal.comap_symm] -- This should be fixed once `Ideal.map` does not take homclasses.
  rw [← Ideal.map_coe e.toRingEquiv, Ideal.map_map]
  rfl

open _root_.TensorProduct in
variable (R S) in
/-- Use `Algebra.QuasiFinite.of_restrictScalars` instead for `Algebra.QuasiFiniteAt R p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec2607928279b60b2eacaf26b7ce5b7ca07739cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
