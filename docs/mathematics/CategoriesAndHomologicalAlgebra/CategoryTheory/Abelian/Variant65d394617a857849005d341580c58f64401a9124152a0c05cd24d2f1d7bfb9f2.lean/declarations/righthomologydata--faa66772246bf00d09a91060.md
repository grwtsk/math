# rightHomologyData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0767de86d5e2904a3ec12891baab7f25aee996317e19570e4a295ed2ec7c3b8a",
  "kind": "def",
  "lexical_name": "rightHomologyData",
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
  "slug": "righthomologydata--faa66772246bf00d09a91060",
  "source": {
    "blob": "2ad239a8c57101a49d0b14c3da9d4a03a9b1825a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 326,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:faa66772246bf00d09a91060e18436c378ea418d8cc94e06f0b7722d9d6e11b5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0767de86d5e2904a3ec12891baab7f25aee996317e19570e4a295ed2ec7c3b8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rightHomologyData : S.RightHomologyData where
  Q := cc.pt
  H := H
  p := cc.π
  ι := ι
  wp := CokernelCofork.condition cc
  hp := IsColimit.ofIsoColimit hcc (Cofork.ext (Iso.refl _) (by simp))
  wι := by
    dsimp
    rw [id_comp, g'_eq, ← cancel_epi (isoHomology S hkf hcc fac).inv, comp_zero,
      isoHomology_hom_comp_ι_assoc, Iso.inv_hom_id_assoc, homologyι_comp_fromOpcycles]
  hι := by
    refine (IsLimit.equivOfNatIsoOfIso ?_ _ _ ?_).2 S.homologyIsKernel
    · exact parallelPair.ext (S.isoOpcyclesOfIsColimit hcc) (Iso.refl _)
    · exact Fork.ext (isoHomology S hkf hcc fac) (by simp [Fork.ι])

end ofEpiMonoFactorisation

set_option backward.defeqAttrib.useBackward true in
/-- Let `S` be a short complex in an abelian category. Let `kf` be a
limit kernel fork of `S.g` and `cc` a limit cokernel cofork of `S.f`.
Let `kf.pt ⟶ H ⟶ cc.pt` be an epi-mono factorization of `kf.ι ≫ cc.π : kf.pt ⟶ cc.pt`.
This is the homology data expressing `H` as the homology of `S`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ad239a8c57101a49d0b14c3da9d4a03a9b1825a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
