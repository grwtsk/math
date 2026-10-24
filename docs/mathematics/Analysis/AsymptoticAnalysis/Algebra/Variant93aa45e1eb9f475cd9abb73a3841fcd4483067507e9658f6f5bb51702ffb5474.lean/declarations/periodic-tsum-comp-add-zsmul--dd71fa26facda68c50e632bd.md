# periodic_tsum_comp_add_zsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "771d9f10602096033aaea54e48b2e114c0a6007c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1030,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4edc46f8-8a68-9d5d-ef43-3d23b9830751",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cdf366c-5010-6e22-845e-0d85bd7f8f3c",
  "kind": "theorem",
  "lexical_name": "periodic_tsum_comp_add_zsmul",
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
  "slug": "periodic-tsum-comp-add-zsmul--dd71fa26facda68c50e632bd",
  "source": {
    "blob": "771d9f10602096033aaea54e48b2e114c0a6007c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1064,
    "line": 1030,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Algebra/Variant93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd71fa26facda68c50e632bd9d28775e41178ace5c962ec4df8c674e5c7ab9e9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Algebra/Variant93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cdf366c-5010-6e22-845e-0d85bd7f8f3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1030–1064.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem periodic_tsum_comp_add_zsmul [AddCommGroup X] [TopologicalAddGroup X] [AddCommMonoid Y]
    [ContinuousAdd Y] [T2Space Y] (f : C(X, Y)) (p : X) :
    Function.Periodic (⇑(∑' n : ℤ, f.comp (ContinuousMap.addRight (n • p)))) p := by
  intro x
  by_cases h : Summable fun n : ℤ => f.comp (ContinuousMap.addRight (n • p))
  · convert congr_arg (fun f : C(X, Y) => f x) ((Equiv.addRight (1 : ℤ)).tsum_eq _) using 1
    -- Porting note: in mathlib3 the proof from here was:
    -- simp_rw [←tsum_apply h, ←tsum_apply ((equiv.add_right (1 : ℤ)).summable_iff.mpr h),
    --   equiv.coe_add_right, comp_apply, coe_add_right, add_one_zsmul, add_comm (_ • p) p,
    --   ←add_assoc]
    -- However now the second `←tsum_apply` doesn't fire unless we use `erw`.
    simp_rw [← tsum_apply h]
    erw [← tsum_apply ((Equiv.addRight (1 : ℤ)).summable_iff.mpr h)]
    simp [coe_addRight, add_one_zsmul, add_comm (_ • p) p, ← add_assoc]
  · rw [tsum_eq_zero_of_not_summable h]
    simp only [coe_zero, Pi.zero_apply]
#align continuous_map.periodic_tsum_comp_add_zsmul ContinuousMap.periodic_tsum_comp_add_zsmul

end Periodicity

end ContinuousMap

namespace Homeomorph

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

variable (𝕜 : Type*) [CommSemiring 𝕜]

variable (A : Type*) [TopologicalSpace A] [Semiring A] [TopologicalSemiring A] [StarRing A]

variable [ContinuousStar A] [Algebra 𝕜 A]

/-- `ContinuousMap.compStarAlgHom'` as a `StarAlgEquiv` when the continuous map `f` is
actually a homeomorphism. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Algebra/Variant93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Algebra/Variant93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean#L1030).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `771d9f10602096033aaea54e48b2e114c0a6007c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
