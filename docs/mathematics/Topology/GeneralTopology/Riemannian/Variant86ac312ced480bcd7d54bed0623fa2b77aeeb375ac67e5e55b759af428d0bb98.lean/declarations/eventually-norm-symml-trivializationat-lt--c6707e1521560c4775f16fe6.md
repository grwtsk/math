# eventually_norm_symmL_trivializationAt_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8153a03f-9c40-b0a3-6cb0-51c7fbcc5af5",
  "kind": "lemma",
  "lexical_name": "eventually_norm_symmL_trivializationAt_lt",
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
  "slug": "eventually-norm-symml-trivializationat-lt--c6707e1521560c4775f16fe6",
  "source": {
    "blob": "1846c1475dfe7bb95a80b4497bdd70622b7f61bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 336,
    "path": "GRWTSK/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6707e1521560c4775f16fe6d75e837e083a5a5a48cc095c3726e73f15b1092e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8153a03f-9c40-b0a3-6cb0-51c7fbcc5af5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_norm_symmL_trivializationAt_lt (x : B) :
    ∃ C > 0, ∀ᶠ y in 𝓝 x, ‖(trivializationAt F E x).symmL ℝ y‖ < C := by
  refine ⟨2 * (1 + ‖(trivializationAt F E x).symmL ℝ x‖), by positivity, ?_⟩
  filter_upwards [eventually_norm_symmL_trivializationAt_comp_self_lt F E x one_lt_two] with y hy
  have A : ((trivializationAt F E x).continuousLinearMapAt ℝ x) ∘L
      ((trivializationAt F E x).symmL ℝ x) = ContinuousLinearMap.id _ _ := by
    ext v
    have h'x : x ∈ (trivializationAt F E x).baseSet := FiberBundle.mem_baseSet_trivializationAt' x
    simp only [Trivialization.continuousLinearMapAt_apply, Trivialization.symmL_apply,
      mem_baseSet_trivializationAt, comp_apply, id_apply]
    convert! ((trivializationAt F E x).continuousLinearEquivAt ℝ _ h'x).apply_symm_apply v
    simp [Trivialization.coe_continuousLinearEquivAt_eq _ h'x]
  have : (trivializationAt F E x).symmL ℝ y =
     ((trivializationAt F E x).symmL ℝ y) ∘L (ContinuousLinearMap.id _ _) := by simp
  grw [this, ← A, ← comp_assoc, opNorm_comp_le]
  gcongr
  linarith

end Continuous

namespace Bundle

section Construction

variable
  {B : Type*} [TopologicalSpace B]
  {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]
  {E : B → Type*} [TopologicalSpace (TotalSpace F E)]
  [∀ b, TopologicalSpace (E b)] [∀ b, AddCommGroup (E b)] [∀ b, Module ℝ (E b)]
  [∀ b, IsTopologicalAddGroup (E b)] [∀ b, ContinuousConstSMul ℝ (E b)]
  [FiberBundle F E] [VectorBundle ℝ F E]

open Bornology

variable (E) in
/-- A family of inner product space structures on the fibers of a fiber bundle, defining the same
topology as the already existing one. This family is not assumed to be continuous or smooth: to
guarantee continuity, resp. smoothness, of the inner product as a function of the base point,
use `ContinuousRiemannianMetric` or `ContMDiffRiemannianMetric`.

This structure is used through `RiemannianBundle` for typeclass inference, to register the inner
product space structure on the fibers without creating diamonds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1846c1475dfe7bb95a80b4497bdd70622b7f61bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
