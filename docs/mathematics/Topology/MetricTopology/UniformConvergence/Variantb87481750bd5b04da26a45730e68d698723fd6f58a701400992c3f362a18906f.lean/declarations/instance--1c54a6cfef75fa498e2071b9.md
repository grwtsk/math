# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24b052bb281e16395c0bd954246db2c6eec23ab37cd181c404ce9a1e2a1367be",
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
  "slug": "instance--1c54a6cfef75fa498e2071b9",
  "source": {
    "blob": "2b1bcdcc82b4be4162ce7cdbe4716d03e0bec1ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 143,
    "path": "GRWTSK/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c54a6cfef75fa498e2071b92ef9cade174f3a0f86311cc065c3268f5222c4ae",
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

Occurrence: `declaration:24b052bb281e16395c0bd954246db2c6eec23ab37cd181c404ce9a1e2a1367be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance [BoundedSpace β] : PseudoMetricSpace (α →ᵤ β) :=
  PseudoEMetricSpace.toPseudoMetricSpaceOfDist
    (fun f g ↦ ⨆ x, dist (toFun f x) (toFun g x))
    (fun _ _ ↦ Real.iSup_nonneg fun i ↦ dist_nonneg)
    fun f g ↦ by
      cases isEmpty_or_nonempty α
      · simp [edist_def]
      have : BddAbove <| .range fun x ↦ dist (toFun f x) (toFun g x) := by
        use (Metric.ediam (.univ : Set β)).toReal
        simp +contextual [mem_upperBounds, eq_comm (a := dist _ _), ← edist_dist,
          ← ENNReal.ofReal_le_iff_le_toReal BoundedSpace.bounded_univ.ediam_ne_top,
          Metric.edist_le_ediam_of_mem]
      exact ENNReal.eq_of_forall_le_nnreal_iff fun r ↦ by simp [edist_def, ciSup_le_iff this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1bcdcc82b4be4162ce7cdbe4716d03e0bec1ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
