# AnalyticOnNhd.circleAverage_log_norm_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:826c89b2-4be7-7ad4-58fc-4a708ed10a2b",
  "kind": "lemma",
  "lexical_name": "AnalyticOnNhd.circleAverage_log_norm_of_ne_zero",
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
  "slug": "analyticonnhd-circleaverage-log-norm-of-ne-zero--d4d07c683a15c78d88dc541f",
  "source": {
    "blob": "f03f5d86b80d11c091232ecfc47d21f951edf1ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 271,
    "path": "GRWTSK/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4d07c683a15c78d88dc541f72f67dfc1d80e6789c1bf70265035bce1b1d323a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:826c89b2-4be7-7ad4-58fc-4a708ed10a2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AnalyticOnNhd.circleAverage_log_norm_of_ne_zero {R : ℝ} {c : ℂ} {g : ℂ → ℂ}
    (h₁g : AnalyticOnNhd ℂ g (closedBall c |R|)) (h₂g : ∀ u ∈ closedBall c |R|, g u ≠ 0) :
    circleAverage (Real.log ‖g ·‖) c R = Real.log ‖g c‖ :=
  InnerProductSpace.HarmonicOnNhd.circleAverage_eq
    (fun x hx ↦ (h₁g x hx).harmonicAt_log_norm (h₂g x hx))

set_option backward.isDefEq.respectTransparency.types false in
/--
Reformulation of a finsum that appears in Jensen's formula and in the definition of the counting
function of Value Distribution Theory, as discussed in
`Mathlib/Analysis/Complex/ValueDistribution/CountingFunction.lean`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f03f5d86b80d11c091232ecfc47d21f951edf1ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
