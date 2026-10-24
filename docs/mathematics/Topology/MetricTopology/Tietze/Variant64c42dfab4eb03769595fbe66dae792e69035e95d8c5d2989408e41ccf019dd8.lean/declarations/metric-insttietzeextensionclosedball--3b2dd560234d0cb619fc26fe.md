# Metric.instTietzeExtensionClosedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a87fd26-8890-bc0d-b3ec-4a1764282bf3",
  "kind": "theorem",
  "lexical_name": "Metric.instTietzeExtensionClosedBall",
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
  "slug": "metric-insttietzeextensionclosedball--3b2dd560234d0cb619fc26fe",
  "source": {
    "blob": "801c9a21c4027a679ff374fd1253df3e97900b04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 90,
    "path": "GRWTSK/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b2dd560234d0cb619fc26fe366f1c54ca04fe581199441353071798beeaeca9",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a87fd26-8890-bc0d-b3ec-4a1764282bf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Metric.instTietzeExtensionClosedBall (𝕜 : Type v) [RCLike 𝕜] {E : Type w}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E] [FiniteDimensional 𝕜 E] (y : E) {r : ℝ} (hr : 0 < r) :
    TietzeExtension.{u, w} (Metric.closedBall y r) :=
  .of_homeo <| by
    show (Metric.closedBall y r) ≃ₜ (Metric.closedBall (0 : E) 1)
    symm
    apply (DilationEquiv.smulTorsor y (k := (r : 𝕜)) <| by exact_mod_cast hr.ne').toHomeomorph.sets
    ext x
    simp only [mem_closedBall, dist_zero_right, DilationEquiv.coe_toHomeomorph, Set.mem_preimage,
      DilationEquiv.smulTorsor_apply, vadd_eq_add, dist_add_self_left, norm_smul,
      RCLike.norm_ofReal, abs_of_nonneg hr.le]
    exact (mul_le_iff_le_one_right hr).symm

variable {X : Type u} [TopologicalSpace X] [NormalSpace X] {s : Set X} (hs : IsClosed s)
variable (𝕜 : Type v) [RCLike 𝕜]
variable {E : Type w} [NormedAddCommGroup E] [NormedSpace 𝕜 E] [FiniteDimensional 𝕜 E]

namespace BoundedContinuousFunction

include 𝕜 hs in
/-- **Tietze extension theorem** for real-valued bounded continuous maps, a version with a closed
embedding and bundled composition. If `e : C(X, Y)` is a closed embedding of a topological space
into a normal topological space and `f : X →ᵇ ℝ` is a bounded continuous function, then there exists
a bounded continuous function `g : Y →ᵇ ℝ` of the same norm such that `g ∘ e = f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `801c9a21c4027a679ff374fd1253df3e97900b04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
