# IsAffineOpen.primeIdealOf_genericPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6820aceb9450686c2e9744deaedb0baeb33bbb32",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a3b0daf-5749-6866-c3f2-4103222b5f20",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8309416b-faab-e1eb-62de-6c60872c9eed",
  "kind": "theorem",
  "lexical_name": "IsAffineOpen.primeIdealOf_genericPoint",
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
  "slug": "isaffineopen-primeidealof-genericpoint--509f2e23bc601a0edb380bc3",
  "source": {
    "blob": "6820aceb9450686c2e9744deaedb0baeb33bbb32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 141,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:509f2e23bc601a0edb380bc375b6b4759704d5364006771762c35fbf5427d8b5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8309416b-faab-e1eb-62de-6c60872c9eed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAffineOpen.primeIdealOf_genericPoint {X : Scheme} [IsIntegral X] {U : Opens X.carrier}
    (hU : IsAffineOpen U) [h : Nonempty U] :
    hU.primeIdealOf
        ⟨genericPoint X.carrier,
          ((genericPoint_spec X.carrier).mem_open_set_iff U.isOpen).mpr (by simpa using h)⟩ =
      genericPoint (Scheme.Spec.obj <| op <| X.presheaf.obj <| op U).carrier := by
  haveI : IsAffine _ := hU
  have e : U.openEmbedding.isOpenMap.functor.obj ⊤ = U := by
    ext1; exact Set.image_univ.trans Subtype.range_coe
  delta IsAffineOpen.primeIdealOf
  erw [← Scheme.comp_val_base_apply]
  convert
    genericPoint_eq_of_isOpenImmersion
      ((X.restrict U.openEmbedding).isoSpec.hom ≫
        Scheme.Spec.map (X.presheaf.map (eqToHom e).op).op)
  -- Porting note: this was `ext1`
  apply Subtype.ext
  exact (genericPoint_eq_of_isOpenImmersion (X.ofRestrict U.openEmbedding)).symm
#align algebraic_geometry.is_affine_open.prime_ideal_of_generic_point AlgebraicGeometry.IsAffineOpen.primeIdealOf_genericPoint

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6820aceb9450686c2e9744deaedb0baeb33bbb32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
