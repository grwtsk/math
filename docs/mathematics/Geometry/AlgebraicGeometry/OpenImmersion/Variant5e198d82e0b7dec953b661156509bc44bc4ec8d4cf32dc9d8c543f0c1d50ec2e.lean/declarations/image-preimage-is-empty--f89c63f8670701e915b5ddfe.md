# image_preimage_is_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2823eb6226890efa94548b285fde55731f8229d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 859,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b36598f7-99de-d1b0-6283-7857853ddf1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ce4691f-b727-df5f-efa7-2092cce8ce42",
  "kind": "theorem",
  "lexical_name": "image_preimage_is_empty",
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
  "slug": "image-preimage-is-empty--f89c63f8670701e915b5ddfe",
  "source": {
    "blob": "2823eb6226890efa94548b285fde55731f8229d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 879,
    "line": 859,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f89c63f8670701e915b5ddfea38493e40ac64c70d2b3d1b891b07c382edb6abf",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ce4691f-b727-df5f-efa7-2092cce8ce42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 859–879.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_preimage_is_empty (j : Discrete ι) (h : i ≠ j) (U : Opens (F.obj i)) :
    (Opens.map (colimit.ι (F ⋙ SheafedSpace.forgetToPresheafedSpace) j).base).obj
        ((Opens.map (preservesColimitIso SheafedSpace.forgetToPresheafedSpace F).inv.base).obj
          ((sigma_ι_isOpenEmbedding F i).isOpenMap.functor.obj U)) =
      ⊥ := by
  ext x
  apply iff_false_intro
  rintro ⟨y, hy, eq⟩
  replace eq := ConcreteCategory.congr_arg (preservesColimitIso (SheafedSpace.forget C) F ≪≫
    HasColimit.isoOfNatIso Discrete.natIsoFunctor ≪≫ TopCat.sigmaIsoSigma.{v, v} _).hom eq
  simp_rw [CategoryTheory.Iso.trans_hom, ← TopCat.comp_app, ← PresheafedSpace.comp_base] at eq
  rw [ι_preservesColimitIso_inv] at eq
  change
    ((SheafedSpace.forget C).map (colimit.ι F i) ≫ _) y =
      ((SheafedSpace.forget C).map (colimit.ι F j) ≫ _) x at eq
  cases i; cases j
  rw [ι_preservesColimitIso_hom_assoc, ι_preservesColimitIso_hom_assoc,
    HasColimit.isoOfNatIso_ι_hom_assoc, HasColimit.isoOfNatIso_ι_hom_assoc,
    TopCat.sigmaIsoSigma_hom_ι, TopCat.sigmaIsoSigma_hom_ι] at eq
  exact h (congr_arg Discrete.mk (congr_arg Sigma.fst eq))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean#L859).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2823eb6226890efa94548b285fde55731f8229d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
