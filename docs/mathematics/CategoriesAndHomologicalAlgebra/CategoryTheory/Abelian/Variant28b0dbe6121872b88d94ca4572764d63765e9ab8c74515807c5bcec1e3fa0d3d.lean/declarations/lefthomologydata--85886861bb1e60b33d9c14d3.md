# leftHomologyData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6da08f005d8c705227a3dc04c8c1da723e6271618eb662e5a711a517271608bd",
  "kind": "def",
  "lexical_name": "leftHomologyData",
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
  "slug": "lefthomologydata--85886861bb1e60b33d9c14d3",
  "source": {
    "blob": "49dd0b5a56181b8f03678694ef70ed4c6036af51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 309,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant28b0dbe6121872b88d94ca4572764d63765e9ab8c74515807c5bcec1e3fa0d3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85886861bb1e60b33d9c14d3920883504e2b0dd6ab0a530d2153af6e52dead41",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant28b0dbe6121872b88d94ca4572764d63765e9ab8c74515807c5bcec1e3fa0d3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6da08f005d8c705227a3dc04c8c1da723e6271618eb662e5a711a517271608bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def leftHomologyData : S.LeftHomologyData where
  K := kf.pt
  H := H
  i := kf.ι
  π := π
  wi := KernelFork.condition kf
  hi := IsLimit.ofIsoLimit hkf (Fork.ext (Iso.refl _) (by simp))
  wπ := by
    dsimp
    rw [← cancel_mono (isoHomology S hkf hcc fac).hom, assoc, assoc, id_comp,
      π_comp_isoHomology_hom, zero_comp, f'_eq,
      assoc, Iso.inv_hom_id_assoc, toCycles_comp_homologyπ]
  hπ := by
    refine (IsColimit.equivOfNatIsoOfIso ?_ _ _ ?_).2 S.homologyIsCokernel
    · exact parallelPair.ext (Iso.refl _) (S.isoCyclesOfIsLimit hkf)
    · exact Cofork.ext (isoHomology S hkf hcc fac) (by simp [Cofork.π])

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
attribute [local simp] g'_eq in
/-- Let `S` be a short complex in an abelian category. Let `kf` be a
limit kernel fork of `S.g` and `cc` a limit cokernel cofork of `S.f`.
Let `kf.pt ⟶ H ⟶ cc.pt` be an epi-mono factorization of `kf.ι ≫ cc.π : kf.pt ⟶ cc.pt`.
This is the right homology data expressing `H` as the homology of `S`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant28b0dbe6121872b88d94ca4572764d63765e9ab8c74515807c5bcec1e3fa0d3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant28b0dbe6121872b88d94ca4572764d63765e9ab8c74515807c5bcec1e3fa0d3d.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49dd0b5a56181b8f03678694ef70ed4c6036af51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
