# Metric.instTietzeExtensionClosedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "987eabfa031ce040d6671a530c6ab26e2097ab45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:865e65e2-3f3a-e9d2-ab6a-f23f3f699fa6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:475aebc8-02ca-bdc8-6afa-14074d0db850",
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
  "slug": "metric-insttietzeextensionclosedball--6821e626dbac5d68b8f084c6",
  "source": {
    "blob": "987eabfa031ce040d6671a530c6ab26e2097ab45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 82,
    "path": "GRWTSK/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6821e626dbac5d68b8f084c6237dc6b9c0c870f371f8146de2d872a059a78918",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:475aebc8-02ca-bdc8-6afa-14074d0db850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–105.

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

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `987eabfa031ce040d6671a530c6ab26e2097ab45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
