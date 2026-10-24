# mem_locallyConstant_essImage_of_isColimit_mapCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "609b43545d9205de9c6388773a61af5de6a124e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e21d73c-3f46-a4bf-11c8-b0e8c47e992a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9e441df-feef-7456-80cb-fd117f5e3ce9",
  "kind": "lemma",
  "lexical_name": "mem_locallyConstant_essImage_of_isColimit_mapCocone",
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
  "slug": "mem-locallyconstant-essimage-of-iscolimit-mapcocone--9c354ccaabfdb797da94bfaf",
  "source": {
    "blob": "609b43545d9205de9c6388773a61af5de6a124e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 178,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c354ccaabfdb797da94bfafc15acdc7ecc0f45376dc0d60d70408aaa94d198c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9e441df-feef-7456-80cb-fd117f5e3ce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_locallyConstant_essImage_of_isColimit_mapCocone (X : LightCondSet.{u})
    (h : ∀ S : LightProfinite.{u}, IsColimit <|
      X.obj.mapCocone (coconeRightOpOfCone S.asLimitCone)) :
    LightCondSet.LocallyConstant.functor.essImage X := by
  let i : X.obj ≅ (LightCondSet.LocallyConstant.functor.obj _).obj :=
    LightCondensed.isoLocallyConstantOfIsColimit _ h
  exact ⟨_, ⟨((sheafToPresheaf _ _).preimageIso i.symm)⟩⟩

/--
`LightCondSet.LocallyConstant.functor` is left adjoint to the forgetful functor from light condensed
sets to sets.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `609b43545d9205de9c6388773a61af5de6a124e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
