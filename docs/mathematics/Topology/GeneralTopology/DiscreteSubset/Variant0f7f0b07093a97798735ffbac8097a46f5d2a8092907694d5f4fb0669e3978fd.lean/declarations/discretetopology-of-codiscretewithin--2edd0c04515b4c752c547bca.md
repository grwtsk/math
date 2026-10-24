# discreteTopology_of_codiscreteWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba3792cd-2bc2-f529-11aa-176f9507d2cc",
  "kind": "theorem",
  "lexical_name": "discreteTopology_of_codiscreteWithin",
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
  "slug": "discretetopology-of-codiscretewithin--2edd0c04515b4c752c547bca",
  "source": {
    "blob": "45d7db780c6f6e51ae8d5c4bf115b981e0f92a85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 136,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2edd0c04515b4c752c547bcaeeb70da0f14e5b306b14772f8ff9ebb03c46809d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba3792cd-2bc2-f529-11aa-176f9507d2cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discreteTopology_of_codiscreteWithin {U s : Set X} (h : s ∈ Filter.codiscreteWithin U) :
    DiscreteTopology ((sᶜ ∩ U) : Set X) := by
  rw [(by simp : ((sᶜ ∩ U) : Set X) = ((s ∪ Uᶜ)ᶜ : Set X)), discreteTopology_subtype_iff]
  simp_rw [mem_codiscreteWithin, Filter.disjoint_principal_right] at h
  intro x hx
  rw [← Filter.mem_iff_inf_principal_compl, ← Set.compl_diff]
  simp_all only [h x, Set.compl_union, compl_compl, Set.mem_inter_iff, Set.mem_compl_iff]

/-- Helper lemma for `codiscreteWithin_iff_locallyFiniteComplementWithin`: A set `s` is
`codiscreteWithin U` iff every point `z ∈ U` has a punctured neighborhood that does not intersect
`U \ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45d7db780c6f6e51ae8d5c4bf115b981e0f92a85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
