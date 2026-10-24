# dist_le_of_approx_trajectories_ODE_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "609cf53913229b7d3ea89d4f2f0f9f9084288641",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59e74cab-7334-6819-a8cc-ce6046e0844a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1b0a96e-1a07-07fd-bfe9-d138a386ca7a",
  "kind": "theorem",
  "lexical_name": "dist_le_of_approx_trajectories_ODE_of_mem",
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
  "slug": "dist-le-of-approx-trajectories-ode-of-mem--e9d4c1f98049225b5f1ff42d",
  "source": {
    "blob": "609cf53913229b7d3ea89d4f2f0f9f9084288641",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 137,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9d4c1f98049225b5f1ff42df42a1d53344a2d328ecc3f3b6fc2637fcd467a3d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1b0a96e-1a07-07fd-bfe9-d138a386ca7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_le_of_approx_trajectories_ODE_of_mem
    (hv : ∀ t ∈ Ico a b, LipschitzOnWith K (v t) (s t))
    (hf : ContinuousOn f (Icc a b))
    (hf' : ∀ t ∈ Ico a b, HasDerivWithinAt f (f' t) (Ici t) t)
    (f_bound : ∀ t ∈ Ico a b, dist (f' t) (v t (f t)) ≤ εf)
    (hfs : ∀ t ∈ Ico a b, f t ∈ s t)
    (hg : ContinuousOn g (Icc a b))
    (hg' : ∀ t ∈ Ico a b, HasDerivWithinAt g (g' t) (Ici t) t)
    (g_bound : ∀ t ∈ Ico a b, dist (g' t) (v t (g t)) ≤ εg)
    (hgs : ∀ t ∈ Ico a b, g t ∈ s t)
    (ha : dist (f a) (g a) ≤ δ) :
    ∀ t ∈ Icc a b, dist (f t) (g t) ≤ gronwallBound δ K (εf + εg) (t - a) := by
  simp only [dist_eq_norm] at ha ⊢
  have h_deriv : ∀ t ∈ Ico a b, HasDerivWithinAt (fun t => f t - g t) (f' t - g' t) (Ici t) t :=
    fun t ht => (hf' t ht).sub (hg' t ht)
  apply norm_le_gronwallBound_of_norm_deriv_right_le (hf.sub hg) h_deriv ha
  intro t ht
  have := dist_triangle4_right (f' t) (g' t) (v t (f t)) (v t (g t))
  have hv := (hv t ht).dist_le_mul _ (hfs t ht) _ (hgs t ht)
  rw [← dist_eq_norm, ← dist_eq_norm]
  refine this.trans ((add_le_add (add_le_add (f_bound t ht) (g_bound t ht)) hv).trans ?_)
  rw [add_comm]

/-- If `f` and `g` are two approximate solutions of the same ODE, then the distance between them
can't grow faster than exponentially. This is a simple corollary of Grönwall's inequality, and some
people call this Grönwall's inequality too.

This version assumes all inequalities to be true in the whole space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `609cf53913229b7d3ea89d4f2f0f9f9084288641` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
