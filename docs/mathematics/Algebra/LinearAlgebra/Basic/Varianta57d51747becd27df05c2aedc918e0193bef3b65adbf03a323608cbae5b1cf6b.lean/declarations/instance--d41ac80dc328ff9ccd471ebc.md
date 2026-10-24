# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e89589a0ce4c38068f54a0d106c91b6742b667aa598ec294aae5e32a4bc94b9",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d41ac80dc328ff9ccd471ebc",
  "source": {
    "blob": "11cf1532f5d9d75267be091efca5b61670c220da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 273,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d41ac80dc328ff9ccd471ebc7e673d1c36912ee3febc088bd4c0d8a1cf43667e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e89589a0ce4c38068f54a0d106c91b6742b667aa598ec294aae5e32a4bc94b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MonoidalPreadditive (ModuleCat.{u} R) := by
  refine' ⟨_, _, _, _⟩
  · dsimp only [autoParam]; intros
    refine' TensorProduct.ext (LinearMap.ext fun x => LinearMap.ext fun y => _)
    simp only [LinearMap.compr₂_apply, TensorProduct.mk_apply]
    rw [LinearMap.zero_apply, MonoidalCategory.hom_apply, LinearMap.zero_apply,
      TensorProduct.tmul_zero]
  · dsimp only [autoParam]; intros
    refine' TensorProduct.ext (LinearMap.ext fun x => LinearMap.ext fun y => _)
    simp only [LinearMap.compr₂_apply, TensorProduct.mk_apply]
    rw [LinearMap.zero_apply, MonoidalCategory.hom_apply, LinearMap.zero_apply,
      TensorProduct.zero_tmul]
  · dsimp only [autoParam]; intros
    refine' TensorProduct.ext (LinearMap.ext fun x => LinearMap.ext fun y => _)
    simp only [LinearMap.compr₂_apply, TensorProduct.mk_apply]
    rw [LinearMap.add_apply, MonoidalCategory.hom_apply, MonoidalCategory.hom_apply]
    erw [MonoidalCategory.hom_apply]
    rw [LinearMap.add_apply, TensorProduct.tmul_add]
  · dsimp only [autoParam]; intros
    refine' TensorProduct.ext (LinearMap.ext fun x => LinearMap.ext fun y => _)
    simp only [LinearMap.compr₂_apply, TensorProduct.mk_apply]
    rw [LinearMap.add_apply, MonoidalCategory.hom_apply, MonoidalCategory.hom_apply]
    erw [MonoidalCategory.hom_apply]
    rw [LinearMap.add_apply, TensorProduct.add_tmul]

-- Porting note: simp wasn't firing but rw was, annoying
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta57d51747becd27df05c2aedc918e0193bef3b65adbf03a323608cbae5b1cf6b.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11cf1532f5d9d75267be091efca5b61670c220da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
