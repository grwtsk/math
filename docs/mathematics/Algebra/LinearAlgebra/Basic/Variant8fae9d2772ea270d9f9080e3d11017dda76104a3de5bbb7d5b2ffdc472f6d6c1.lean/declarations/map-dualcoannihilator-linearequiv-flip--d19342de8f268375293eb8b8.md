# map_dualCoannihilator_linearEquiv_flip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db0cadab-50ca-6b2b-98fc-2404256117b8",
  "kind": "lemma",
  "lexical_name": "map_dualCoannihilator_linearEquiv_flip",
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
  "slug": "map-dualcoannihilator-linearequiv-flip--d19342de8f268375293eb8b8",
  "source": {
    "blob": "03af5cd3d9d27c9f473f7507dc45c78a17363838",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 255,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d19342de8f268375293eb8b89b498ad35788dc5e0f4d1d848f6a752fca816d6c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db0cadab-50ca-6b2b-98fc-2404256117b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_dualCoannihilator_linearEquiv_flip (p : Submodule R (Dual R M)) :
    p.dualCoannihilator.map e.toLinearMap.flip =
      (p.map (e.symm : Dual R M →ₗ[R] N)).dualAnnihilator := by
  have : IsReflexive R N := e.isReflexive_of_equiv_dual_of_isReflexive
  suffices
      (p.map (e.symm : Dual R M →ₗ[R] N)).dualAnnihilator.map (e.flip.symm : Dual R N →ₗ[R] M) =
        (p.dualCoannihilator.map (e.flip : M →ₗ[R] Dual R N)).map (e.flip.symm : Dual R N →ₗ[R] M)
    from (Submodule.map_injective_of_injective e.flip.symm.injective this).symm
  rw [← dualCoannihilator_map_linearEquiv_flip, ← LinearEquiv.coe_toLinearMap_flip,
    LinearEquiv.flip_flip, ← map_comp, ← map_comp]
  simp [-coe_toLinearMap_flip]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03af5cd3d9d27c9f473f7507dc45c78a17363838` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
