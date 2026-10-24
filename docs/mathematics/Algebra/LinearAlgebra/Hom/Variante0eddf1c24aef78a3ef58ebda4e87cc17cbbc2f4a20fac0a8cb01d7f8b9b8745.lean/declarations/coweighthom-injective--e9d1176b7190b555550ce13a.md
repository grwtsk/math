# coweightHom_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:587810a0-f194-8e9c-be60-ad09be36b2c2",
  "kind": "lemma",
  "lexical_name": "coweightHom_injective",
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
  "slug": "coweighthom-injective--e9d1176b7190b555550ce13a",
  "source": {
    "blob": "53eda82ed247f46be8eef33b24fef6e41378e879",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 222,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variante0eddf1c24aef78a3ef58ebda4e87cc17cbbc2f4a20fac0a8cb01d7f8b9b8745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9d1176b7190b555550ce13a8697da20cef413a5e7e9cf4609ed324f2312f469",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variante0eddf1c24aef78a3ef58ebda4e87cc17cbbc2f4a20fac0a8cb01d7f8b9b8745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:587810a0-f194-8e9c-be60-ad09be36b2c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coweightHom_injective (P : RootPairing ι R M N) : Injective (coweightHom P) := by
  intro f g hfg
  ext x
  · dsimp [coweightHom] at hfg
    rw [MulOpposite.op_inj] at hfg
    have h := congrArg (LinearMap.comp (M₃ := Module.Dual R M)
        (σ₂₃ := RingHom.id R) (P.toDualRight)) hfg
    rw [← f.weight_coweight_transpose, ← g.weight_coweight_transpose] at h
    have : f.weightMap = g.weightMap := by
      haveI : Module.IsReflexive R M := PerfectPairing.reflexive_left P.toPerfectPairing
      refine (Module.dualMap_dualMap_eq_iff R M).mp (congrArg LinearMap.dualMap
        ((LinearEquiv.eq_comp_toLinearMap_iff f.weightMap.dualMap g.weightMap.dualMap).mp h))
    exact congrFun (congrArg DFunLike.coe this) x
  · dsimp [coweightHom] at hfg
    simp_all only [MulOpposite.op_inj]
  · dsimp [coweightHom] at hfg
    rw [MulOpposite.op_inj] at hfg
    set y := f.indexEquiv x with hy
    have : f.coweightMap (P.coroot y) = g.coweightMap (P.coroot y) := by
      exact congrFun (congrArg DFunLike.coe hfg) (P.coroot y)
    rw [coroot_coweightMap_apply, coroot_coweightMap_apply, Embedding.apply_eq_iff_eq, hy] at this
    rw [Equiv.symm_apply_apply] at this
    rw [this, Equiv.apply_symm_apply]

/-- The permutation representation of the endomorphism monoid on the root index set -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variante0eddf1c24aef78a3ef58ebda4e87cc17cbbc2f4a20fac0a8cb01d7f8b9b8745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variante0eddf1c24aef78a3ef58ebda4e87cc17cbbc2f4a20fac0a8cb01d7f8b9b8745.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53eda82ed247f46be8eef33b24fef6e41378e879` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
