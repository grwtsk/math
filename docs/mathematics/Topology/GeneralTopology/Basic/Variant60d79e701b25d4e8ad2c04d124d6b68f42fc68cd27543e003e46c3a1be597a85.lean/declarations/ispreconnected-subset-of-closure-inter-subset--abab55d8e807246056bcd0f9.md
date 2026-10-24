# IsPreconnected.subset_of_closure_inter_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed30b083-d081-f671-5084-f200aafb7a0f",
  "kind": "theorem",
  "lexical_name": "IsPreconnected.subset_of_closure_inter_subset",
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
  "slug": "ispreconnected-subset-of-closure-inter-subset--abab55d8e807246056bcd0f9",
  "source": {
    "blob": "062782cb2b64b817d48591ea305ca2d814831951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 408,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant60d79e701b25d4e8ad2c04d124d6b68f42fc68cd27543e003e46c3a1be597a85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abab55d8e807246056bcd0f99fff515888514728568e34e87060f39a324fd0b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant60d79e701b25d4e8ad2c04d124d6b68f42fc68cd27543e003e46c3a1be597a85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed30b083-d081-f671-5084-f200aafb7a0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreconnected.subset_of_closure_inter_subset (hs : IsPreconnected s) (hu : IsOpen u)
    (h'u : (s ∩ u).Nonempty) (h : closure u ∩ s ⊆ u) : s ⊆ u := by
  have A : s ⊆ u ∪ (closure u)ᶜ := by
    intro x hx
    by_cases xu : x ∈ u
    · exact Or.inl xu
    · right
      intro h'x
      exact xu (h (mem_inter h'x hx))
  apply hs.subset_left_of_subset_union hu isClosed_closure.isOpen_compl _ A h'u
  exact disjoint_compl_right.mono_right (compl_subset_compl.2 subset_closure)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant60d79e701b25d4e8ad2c04d124d6b68f42fc68cd27543e003e46c3a1be597a85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant60d79e701b25d4e8ad2c04d124d6b68f42fc68cd27543e003e46c3a1be597a85.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `062782cb2b64b817d48591ea305ca2d814831951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
