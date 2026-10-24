# topology_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:191a1f03-43ce-5fff-6f87-b2683c20732d",
  "kind": "lemma",
  "lexical_name": "topology_eq",
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
  "slug": "topology-eq--a9bd983a9d498c8afcf3454e",
  "source": {
    "blob": "7fd4ed84fb15b74a247f0db5aca286b9750e590d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 516,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Defs/Variant417450ff468b4795ce5cfeb51715dc9a1dc026926e483ff6ec76cf04ae528404.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9bd983a9d498c8afcf3454e6968a500d551024cf2f6dda31b07c0a4e402de64",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Defs/Variant417450ff468b4795ce5cfeb51715dc9a1dc026926e483ff6ec76cf04ae528404.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:191a1f03-43ce-5fff-6f87-b2683c20732d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma topology_eq
    [tF : TopologicalSpace F] [IsTopologicalAddGroup F] [ContinuousConstSMul 𝕜 F]
    (h : ContinuousAt (fun (v : F) ↦ cd.inner v v) 0)
    (h' : IsVonNBounded 𝕜 {v : F | re (cd.inner v v) < 1}) :
    tF = cd.toNormedAddCommGroup.toMetricSpace.toUniformSpace.toTopologicalSpace := by
  let p : Seminorm 𝕜 F := @normSeminorm 𝕜 F _ cd.toNormedAddCommGroup.toSeminormedAddCommGroup
    InnerProductSpace.Core.toNormedSpace
  suffices WithSeminorms (fun (i : Fin 1) ↦ p) by
    rw [(SeminormFamily.withSeminorms_iff_topologicalSpace_eq_iInf _).1 this]
    simp
  have : p.ball 0 1 = {v | re (cd.inner v v) < 1} := by
    ext v
    simp only [ball_normSeminorm, Metric.mem_ball, dist_eq_norm, sub_zero, Set.mem_ofPred_eq, p]
    change √(re (cd.inner v v)) < 1 ↔ re (cd.inner v v) < 1
    conv_lhs => rw [show (1 : ℝ) = √1 by simp]
    rw [sqrt_lt_sqrt_iff]
    exact InnerProductSpace.Core.inner_self_nonneg
  rw [withSeminorms_iff_mem_nhds_isVonNBounded, this]
  refine ⟨?_, h'⟩
  have A : ContinuousAt (fun (v : F) ↦ re (cd.inner v v)) 0 := by fun_prop
  have B : Set.Iio 1 ∈ 𝓝 (re (cd.inner 0 0)) := by
    simp only [InnerProductSpace.Core.inner_zero_left, map_zero]
    exact Iio_mem_nhds (by positivity)
  exact A B

/-- Normed space structure constructed from an `InnerProductSpace.Core` structure, adjusting the
topology to make sure it is defeq to an already existing topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Defs/Variant417450ff468b4795ce5cfeb51715dc9a1dc026926e483ff6ec76cf04ae528404.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Defs/Variant417450ff468b4795ce5cfeb51715dc9a1dc026926e483ff6ec76cf04ae528404.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fd4ed84fb15b74a247f0db5aca286b9750e590d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
