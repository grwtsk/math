# adjointAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85cee41bbf5147936bc323f6af71a01bbf9955545a21ad95ff42e9ed8797da4e",
  "kind": "def",
  "lexical_name": "adjointAux",
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
  "slug": "adjointaux--5d9b11c4ced5b2e9a8d3c349",
  "source": {
    "blob": "52cf5873635427d22f186a1094fc4206f788091e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 132,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d9b11c4ced5b2e9a8d3c349ab0e6f1f6de6c199f4548194009f81ffda53c705",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85cee41bbf5147936bc323f6af71a01bbf9955545a21ad95ff42e9ed8797da4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adjointAux : T.adjointDomain →ₗ[𝕜] E where
  toFun y := (InnerProductSpace.toDual 𝕜 E).symm (adjointDomainMkClmExtend hT y)
  map_add' x y :=
    hT.eq_of_inner_left fun _ => by
      simp only [inner_add_left, Submodule.coe_add, InnerProductSpace.toDual_symm_apply,
        adjointDomainMkClmExtend_apply]
      -- Porting note(https://github.com/leanprover-community/mathlib4/issues/5026):
      -- mathlib3 was finished here
      rw [adjointDomainMkClmExtend_apply, adjointDomainMkClmExtend_apply,
        adjointDomainMkClmExtend_apply]
      simp only [AddSubmonoid.coe_add, Submodule.coe_toAddSubmonoid, inner_add_left]
  map_smul' _ _ :=
    hT.eq_of_inner_left fun _ => by
      simp only [inner_smul_left, Submodule.coe_smul_of_tower, RingHom.id_apply,
        InnerProductSpace.toDual_symm_apply, adjointDomainMkClmExtend_apply]
      -- Porting note(https://github.com/leanprover-community/mathlib4/issues/5026):
      -- mathlib3 was finished here
      rw [adjointDomainMkClmExtend_apply, adjointDomainMkClmExtend_apply]
      simp only [Submodule.coe_smul_of_tower, inner_smul_left]
#align linear_pmap.adjoint_aux LinearPMap.adjointAux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52cf5873635427d22f186a1094fc4206f788091e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
