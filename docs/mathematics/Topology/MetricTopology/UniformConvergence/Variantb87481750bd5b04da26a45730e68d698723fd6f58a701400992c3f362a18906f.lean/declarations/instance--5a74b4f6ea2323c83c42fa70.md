# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf1cdaf787994bbd6a8347279be9a51a87de2b1724ded89b46beb1ec87bc8708",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--5a74b4f6ea2323c83c42fa70",
  "source": {
    "blob": "2b1bcdcc82b4be4162ce7cdbe4716d03e0bec1ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 298,
    "path": "GRWTSK/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a74b4f6ea2323c83c42fa70449bbdd781e5c8f4fd669d7102855240bec1bfa1",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf1cdaf787994bbd6a8347279be9a51a87de2b1724ded89b46beb1ec87bc8708`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance [BoundedSpace β] : PseudoMetricSpace (α →ᵤ[𝔖] β) :=
  PseudoEMetricSpace.toPseudoMetricSpaceOfDist
    (fun f g ↦ ⨆ x : ⋃₀ 𝔖, dist (toFun 𝔖 f x) (toFun 𝔖 g x))
    (fun _ _ ↦ Real.iSup_nonneg fun i ↦ dist_nonneg)
    fun f g ↦ by
      cases isEmpty_or_nonempty (⋃₀ 𝔖)
      · simp_all [edist_def]
      have : BddAbove (.range fun x : ⋃₀ 𝔖 ↦ dist (toFun 𝔖 f x) (toFun 𝔖 g x)) := by
        use (Metric.ediam (.univ : Set β)).toReal
        simp +contextual [mem_upperBounds, eq_comm (a := dist _ _), ← edist_dist,
          ← ENNReal.ofReal_le_iff_le_toReal BoundedSpace.bounded_univ.ediam_ne_top,
          Metric.edist_le_ediam_of_mem]
      refine ENNReal.eq_of_forall_le_nnreal_iff fun r ↦ ?_
      simp [edist_def, ciSup_le_iff this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1bcdcc82b4be4162ce7cdbe4716d03e0bec1ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
