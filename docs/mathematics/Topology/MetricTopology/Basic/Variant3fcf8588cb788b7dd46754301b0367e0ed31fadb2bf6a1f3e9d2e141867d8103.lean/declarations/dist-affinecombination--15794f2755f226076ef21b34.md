# dist_affineCombination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:945c4398-588d-7411-18f4-5c390ff1b8c1",
  "kind": "theorem",
  "lexical_name": "dist_affineCombination",
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
  "slug": "dist-affinecombination--15794f2755f226076ef21b34",
  "source": {
    "blob": "01c728fec31a4dd62be0c666f81469ea7f59d9f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 80,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant3fcf8588cb788b7dd46754301b0367e0ed31fadb2bf6a1f3e9d2e141867d8103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15794f2755f226076ef21b3469ea3dde6601a74a26fe7ccf4605913b3046bb07",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant3fcf8588cb788b7dd46754301b0367e0ed31fadb2bf6a1f3e9d2e141867d8103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:945c4398-588d-7411-18f4-5c390ff1b8c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_affineCombination {ι : Type*} {s : Finset ι} {w₁ w₂ : ι → ℝ} (p : ι → P)
    (h₁ : ∑ i ∈ s, w₁ i = 1) (h₂ : ∑ i ∈ s, w₂ i = 1) : by
      have a₁ := s.affineCombination ℝ p w₁
      have a₂ := s.affineCombination ℝ p w₂
      exact dist a₁ a₂ * dist a₁ a₂ = (-∑ i₁ ∈ s, ∑ i₂ ∈ s,
        (w₁ - w₂) i₁ * (w₁ - w₂) i₂ * (dist (p i₁) (p i₂) * dist (p i₁) (p i₂))) / 2 := by
  dsimp only
  rw [dist_eq_norm_vsub V (s.affineCombination ℝ p w₁) (s.affineCombination ℝ p w₂), ←
    @inner_self_eq_norm_mul_norm ℝ, Finset.affineCombination_vsub]
  have h : (∑ i ∈ s, (w₁ - w₂) i) = 0 := by
    simp_rw [Pi.sub_apply, Finset.sum_sub_distrib, h₁, h₂, sub_self]
  exact inner_weightedVSub p h p h

-- Porting note: `inner_vsub_vsub_of_dist_eq_of_dist_eq` moved to `PerpendicularBisector`

/-- The squared distance between points on a line (expressed as a
multiple of a fixed vector added to a point) and another point,
expressed as a quadratic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant3fcf8588cb788b7dd46754301b0367e0ed31fadb2bf6a1f3e9d2e141867d8103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant3fcf8588cb788b7dd46754301b0367e0ed31fadb2bf6a1f3e9d2e141867d8103.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01c728fec31a4dd62be0c666f81469ea7f59d9f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
