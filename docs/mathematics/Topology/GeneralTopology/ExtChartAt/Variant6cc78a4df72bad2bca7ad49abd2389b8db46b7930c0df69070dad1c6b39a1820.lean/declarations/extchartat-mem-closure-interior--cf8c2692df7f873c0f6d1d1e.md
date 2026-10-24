# extChartAt_mem_closure_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5070b833-564f-9c76-fa1b-886aace1d2ec",
  "kind": "lemma",
  "lexical_name": "extChartAt_mem_closure_interior",
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
  "slug": "extchartat-mem-closure-interior--cf8c2692df7f873c0f6d1d1e",
  "source": {
    "blob": "6b337d328242f336eeab7d7242366ff906bfecda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 658,
    "path": "GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant6cc78a4df72bad2bca7ad49abd2389b8db46b7930c0df69070dad1c6b39a1820.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf8c2692df7f873c0f6d1d1e90ff3ad1ac181dad9e247568b9533ab2c96b0cd5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtChartAt/Variant6cc78a4df72bad2bca7ad49abd2389b8db46b7930c0df69070dad1c6b39a1820.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5070b833-564f-9c76-fa1b-886aace1d2ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 658–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extChartAt_mem_closure_interior {x₀ x : M}
    (hx : x ∈ closure (interior s)) (h'x : x ∈ (extChartAt I x₀).source) :
    extChartAt I x₀ x ∈
      closure (interior ((extChartAt I x₀).symm ⁻¹' s ∩ (extChartAt I x₀).target)) := by
  simp_rw [mem_closure_iff, interior_inter, ← inter_assoc]
  intro o o_open ho
  obtain ⟨y, ⟨yo, hy⟩, ys⟩ :
      ((extChartAt I x₀) ⁻¹' o ∩ (extChartAt I x₀).source ∩ interior s).Nonempty := by
    have : (extChartAt I x₀) ⁻¹' o ∈ 𝓝 x := by
      apply (continuousAt_extChartAt' h'x).preimage_mem_nhds (o_open.mem_nhds ho)
    refine (mem_closure_iff_nhds.1 hx) _ (inter_mem this ?_)
    apply (isOpen_extChartAt_source x₀).mem_nhds h'x
  have A : interior (↑(extChartAt I x₀).symm ⁻¹' s) ∈ 𝓝 (extChartAt I x₀ y) := by
    simp only [interior_mem_nhds]
    apply (continuousAt_extChartAt_symm' hy).preimage_mem_nhds
    simp only [hy, PartialEquiv.left_inv]
    exact mem_interior_iff_mem_nhds.mp ys
  have B : (extChartAt I x₀) y ∈ closure (interior (extChartAt I x₀).target) := by
    apply extChartAt_target_subset_closure_interior (x := x₀)
    exact (extChartAt I x₀).map_source hy
  exact mem_closure_iff_nhds.1 B _ (inter_mem (o_open.mem_nhds yo) A)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtChartAt/Variant6cc78a4df72bad2bca7ad49abd2389b8db46b7930c0df69070dad1c6b39a1820.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant6cc78a4df72bad2bca7ad49abd2389b8db46b7930c0df69070dad1c6b39a1820.lean#L658).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b337d328242f336eeab7d7242366ff906bfecda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
