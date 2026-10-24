# coweightHom_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1c1500a-cf22-c120-a795-26a4827615e7",
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
  "slug": "coweighthom-injective--0da29434dcf09be9d42a2d46",
  "source": {
    "blob": "f46805e1a70c535e1959f9b4474ab99902d7a8fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 240,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant3f46a4148103294c7c1b46070663c3751cb7f78b844407992559d971b82c61fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0da29434dcf09be9d42a2d460fd53e97ef79d43b65aa5eeda070f056fdba8386",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variant3f46a4148103294c7c1b46070663c3751cb7f78b844407992559d971b82c61fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1c1500a-cf22-c120-a795-26a4827615e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coweightHom_injective (P : RootPairing ι R M N) : Injective (coweightHom P) := by
  intro f g hfg
  ext x
  · dsimp [coweightHom] at hfg
    rw [MulOpposite.op_inj] at hfg
    have h := congrArg (LinearMap.comp (M₃ := Module.Dual R M) (σ₂₃ := .id R) P.flip.toPerfPair) hfg
    rw [← f.weight_coweight_transpose, ← g.weight_coweight_transpose] at h
    have : f.weightMap = g.weightMap := by
      have : Module.IsReflexive R M := .of_isPerfPair P.toLinearMap
      refine (Module.dualMap_dualMap_eq_iff R M).mp (congrArg LinearMap.dualMap
        ((LinearEquiv.eq_comp_toLinearMap_iff f.weightMap.dualMap g.weightMap.dualMap).mp h))
    exact congrFun (congrArg DFunLike.coe this) x
  · dsimp [coweightHom] at hfg
    simp_all
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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variant3f46a4148103294c7c1b46070663c3751cb7f78b844407992559d971b82c61fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variant3f46a4148103294c7c1b46070663c3751cb7f78b844407992559d971b82c61fa.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46805e1a70c535e1959f9b4474ab99902d7a8fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
