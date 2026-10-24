# exists_nhdsWithin_lipschitzOnWith_of_hasFDerivWithinAt_of_nnnorm_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71ac1397-deba-4f4f-1bd0-7c1ceaacb192",
  "kind": "theorem",
  "lexical_name": "exists_nhdsWithin_lipschitzOnWith_of_hasFDerivWithinAt_of_nnnorm_lt",
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
  "slug": "exists-nhdswithin-lipschitzonwith-of-hasfderivwithinat-of-nnnorm-lt--71baa52a13a481da324e2c76",
  "source": {
    "blob": "8f92c4fb9d3518aa0b671799c23de8b13893d065",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 463,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7da9b438ca583b16bccdd698f1baac33627e5de81d4c1c68ceacc08f6e330d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71baa52a13a481da324e2c76f1ed1b59937bf4a41012fb9572463d93a0c2c789",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7da9b438ca583b16bccdd698f1baac33627e5de81d4c1c68ceacc08f6e330d39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71ac1397-deba-4f4f-1bd0-7c1ceaacb192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nhdsWithin_lipschitzOnWith_of_hasFDerivWithinAt_of_nnnorm_lt (hs : Convex ℝ s)
    {f : E → G} (hder : ∀ᶠ y in 𝓝[s] x, HasFDerivWithinAt f (f' y) s y)
    (hcont : ContinuousWithinAt f' s x) (K : ℝ≥0) (hK : ‖f' x‖₊ < K) :
    ∃ t ∈ 𝓝[s] x, LipschitzOnWith K f t := by
  obtain ⟨ε, ε0, hε⟩ : ∃ ε > 0,
      ball x ε ∩ s ⊆ { y | HasFDerivWithinAt f (f' y) s y ∧ ‖f' y‖₊ < K } :=
    mem_nhdsWithin_iff.1 (hder.and <| hcont.nnnorm.eventually (gt_mem_nhds hK))
  rw [inter_comm] at hε
  refine ⟨s ∩ ball x ε, inter_mem_nhdsWithin _ (ball_mem_nhds _ ε0), ?_⟩
  exact
    (hs.inter (convex_ball _ _)).lipschitzOnWith_of_nnnorm_hasFDerivWithin_le
      (fun y hy => (hε hy).1.mono inter_subset_left) fun y hy => (hε hy).2.le

/-- Let `s` be a convex set in a real normed vector space `E`, let `f : E → G` be a function
differentiable within `s` in a neighborhood of `x : E` with derivative `f'`. Suppose that `f'` is
continuous within `s` at `x`. Then for any number `K : ℝ≥0` larger than `‖f' x‖₊`, `f` is Lipschitz
on some neighborhood of `x` within `s`. See also
`Convex.exists_nhdsWithin_lipschitzOnWith_of_hasFDerivWithinAt_of_nnnorm_lt` for a version
with an explicit estimate on the Lipschitz constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7da9b438ca583b16bccdd698f1baac33627e5de81d4c1c68ceacc08f6e330d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7da9b438ca583b16bccdd698f1baac33627e5de81d4c1c68ceacc08f6e330d39.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f92c4fb9d3518aa0b671799c23de8b13893d065` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
