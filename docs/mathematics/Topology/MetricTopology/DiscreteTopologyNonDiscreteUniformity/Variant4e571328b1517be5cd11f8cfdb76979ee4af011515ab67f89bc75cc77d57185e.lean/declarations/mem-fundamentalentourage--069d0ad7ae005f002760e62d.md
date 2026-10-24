# mem_fundamentalEntourage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36cb59bd12e925e0ecb775566bb819dc2f52ca77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80af11be-46f5-09e6-be33-ad2341cc79c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:163c2623-12bf-0c29-fb74-22c667db1f43",
  "kind": "lemma",
  "lexical_name": "mem_fundamentalEntourage",
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
  "slug": "mem-fundamentalentourage--069d0ad7ae005f002760e62d",
  "source": {
    "blob": "36cb59bd12e925e0ecb775566bb819dc2f52ca77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 186,
    "path": "GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:069d0ad7ae005f002760e62d02361ae06581c7c7325d5947197c003bce672718",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:163c2623-12bf-0c29-fb74-22c667db1f43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_fundamentalEntourage (n : ℕ) (P : ℕ × ℕ) : P ∈ fundamentalEntourage n ↔
    (n ≤ P.1 ∧ n ≤ P.2) ∨ (P.1 = P.2) := by
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · simp only [fundamentalEntourage, iUnion_singleton_eq_range, mem_union, mem_range,
      Subtype.exists, mem_Icc, zero_le, true_and, exists_prop', nonempty_prop, mem_Ici] at h
    rcases h with h | h
    · apply Or.inr
      rw [((h.choose_spec).2).symm]
    · exact Or.inl h
  · simp only [iUnion_singleton_eq_range, mem_union, mem_range, Subtype.exists, mem_Icc, zero_le,
      true_and, exists_prop', nonempty_prop, mem_Ici, fundamentalEntourage]
    rcases h with h | h
    · exact Or.inr h
    · cases le_total n P.1 with
      | inl h_le => exact Or.inr ⟨h_le, h ▸ h_le⟩
      | inr h_le => exact Or.inl ⟨P.1, ⟨h_le, congrArg _ h⟩⟩

/-- The collection `fundamentalEntourage` satisfies the axioms to be a basis for a filter on
`ℕ × ℕ` and gives rise to a term in the relevant type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36cb59bd12e925e0ecb775566bb819dc2f52ca77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
