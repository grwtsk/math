# isCommMonObj_of_isProper_of_geometricallyIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42c014c626dfc0913e397b438fda1c2e335ea809",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/4849f7c4571be20d1674c8e1f20d7ed3efbcd8a5cc25ba7390c8dfd374be7fea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:faf925d3-32cf-c891-ca6b-ebcbdb03801a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b337229-6427-6c03-1b27-d72d12b632bb",
  "kind": "theorem",
  "lexical_name": "isCommMonObj_of_isProper_of_geometricallyIntegral",
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
  "slug": "iscommmonobj-of-isproper-of-geometricallyintegral--0c82fd2a9499c41b873bdd9b",
  "source": {
    "blob": "42c014c626dfc0913e397b438fda1c2e335ea809",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 132,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Abelian/Variant4849f7c4571be20d1674c8e1f20d7ed3efbcd8a5cc25ba7390c8dfd374be7fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c82fd2a9499c41b873bdd9baba962cb0b9293e8bb97c515c4d8356e66bac649",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Abelian/Variant4849f7c4571be20d1674c8e1f20d7ed3efbcd8a5cc25ba7390c8dfd374be7fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b337229-6427-6c03-1b27-d72d12b632bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCommMonObj_of_isProper_of_geometricallyIntegral
    (G : Over (Spec (.of K))) [IsProper G.hom] [GeometricallyIntegral G.hom] [GrpObj G] :
    IsCommMonObj G := by
  let f := Spec.map (CommRingCat.ofHom <| algebraMap K (AlgebraicClosure K))
  let G' := (Over.pullback f).obj G
  have : IsProper G'.hom := by dsimp [G']; infer_instance
  have : IsIntegral (G' ⊗ G').left := by dsimp [G']; infer_instance
  let : GrpObj G' := Functor.grpObjObj
  have := isCommMonObj_of_isProper_of_isIntegral_tensorObj_of_isAlgClosed G'
  rw [isCommMonObj_iff_commutator_eq_toUnit_η] at this ⊢
  apply (Over.pullback f).map_injective
  rw [← cancel_epi (Functor.Monoidal.μIso (Over.pullback f) G G).hom]
  dsimp [GrpObj.commutator] at this ⊢
  simpa only [Functor.map_mul, one_eq_one, comp_one, Functor.map_one, Functor.map_inv',
    comp_mul, GrpObj.comp_inv, Functor.Monoidal.μ_fst, Functor.Monoidal.μ_snd]

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Abelian/Variant4849f7c4571be20d1674c8e1f20d7ed3efbcd8a5cc25ba7390c8dfd374be7fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Abelian/Variant4849f7c4571be20d1674c8e1f20d7ed3efbcd8a5cc25ba7390c8dfd374be7fea.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42c014c626dfc0913e397b438fda1c2e335ea809` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
