# _root_.GRWTSK.Topology.GeneralTopology.LinearGrowthInf.Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.Monotone.linearGrowthInf_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41570282-5d09-1ba4-7670-0406581760c0",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.LinearGrowthInf.Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.Monotone.linearGrowthInf_nonneg",
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
  "slug": "root-grwtsk-topology-generaltopology-lineargrowthinf-variant0bd473425a43--e45499b5b1f6f7f112671d88",
  "source": {
    "blob": "b774387bd86b480da7def0ce1e8f3857fbbdf837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 429,
    "path": "GRWTSK/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e45499b5b1f6f7f112671d88f570bd788b1eca83a8616128f8092cbcd894e1f8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41570282-5d09-1ba4-7670-0406581760c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.LinearGrowthInf.Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.Monotone.linearGrowthInf_nonneg (h : Monotone u) (h' : u ≠ ⊥) :
    0 ≤ linearGrowthInf u := by
  simp only [ne_eq, funext_iff, Pi.zero_apply, not_forall] at h'
  obtain ⟨m, hm⟩ := h'
  have m_n : ∀ᶠ n in atTop, u m ≤ u n := eventually_atTop.2 ⟨m, fun _ hb ↦ h hb⟩
  rcases eq_or_ne (u m) ⊤ with hm' | hm'
  · rw [hm'] at m_n
    exact le_top.trans (linearGrowthInf_top.symm.trans_le (linearGrowthInf_eventually_monotone m_n))
  · rw [← linearGrowthInf_const hm hm']
    exact linearGrowthInf_eventually_monotone m_n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b774387bd86b480da7def0ce1e8f3857fbbdf837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
